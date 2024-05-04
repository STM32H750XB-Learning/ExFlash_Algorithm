# 基于STM32 CubeMX生成的HAL库的Flash下载算法

## 引言

HAL库版本为**1.11.1**，安富莱或其他大佬制作的是基于1.9.0版本HAL的下载算法。本来也没那么麻烦的，全因为硬汉哥这句请使用当前最新的HAL库，并按照他给的方法进行移植，结果发现，根本不行，于是自己又摸索了一套这样的方法出来（区别不大）。

![image](https://user-images.githubusercontent.com/45762837/220039084-48bd7f1a-6023-4290-979d-62ef11799c8a.png)

## 注意事项

1. 基于ART-PI（MCU为**STM32H750XBH6 V版**，Quad SPI-Flash为BANK1的W25Q64JV，SPI-Flash为W25Q128JV）制作的Flash下载算法；
2. 请勿使用MPU；
3. 请勿使用DMA或中断（因此后续需要删除一部分API）；
4. STM32CubeMX**不可以选择Run after programming**，可能代码里还有错？**同时也存在Connect后再Disconnect就无法操作的问题**，但总之其他功能一切正常，欢迎大家报错。

## 移植步骤

1. 程序中分别使用了25MHz的HSE和64MHz的HSI作为晶振，但最后配出来的Quad SPI时钟频率都是240MHz，当然，其他频率也是OK的，具体情况具体分析；
2. 程序中使用了两个板载的LED灯，占用了两个GPIO，可以删除或替换成你的板子上的IO，无所谓的；

![image](https://user-images.githubusercontent.com/45762837/220039177-bf8d9201-3530-4f09-aad6-d618c18b4581.png)


3. 由于Quad SPI需要的频率较高，需要将对应的Quad SPI引脚设置为Very High；

![image](https://user-images.githubusercontent.com/45762837/220039208-eb5e3f12-b09b-4eef-9769-32532f2b8ec6.png)


4. W25Q64JV的最高单线频率是133MHz，Quad SPI使用的240MHz的频率，此处我考虑的是Single SPI指令下的稳定性需要保证，因此Clock Prescaler选的是1，也就是除以2 = 120MHz，大家也可以测试一下更高频率的状态（0，除以1）；

![image](https://user-images.githubusercontent.com/45762837/220039373-eca34804-864c-4294-8dd7-56dc0d097e44.png)


​		Fifo Threshold仅用于间接模式，直接最大，不影响；

​		Sample Shifting是为了保证采样准确性，Sample Shifting Half Cycle有利于推迟数据采样 ；

​		Flash Size = log~2~（Flash字节数） - 1 =  log~2~（2^23^） - 1 = 22；

​		Chip Select High Time：定义CS 片选到发送至Flash的命令之间至少保持的高电平时钟周期 ChipSelectHighTime+1，这个参数需要参考tSHSL，经计算这个参数≥6是比较合适的，但我设置的5也可以，安富莱和其他资料说，W25QXX系列设置在≥2即可，但我未测试，当前设置成5也不影响使用；

![image](https://user-images.githubusercontent.com/45762837/220039411-eaf416a0-eb42-478e-8c19-46a7d9172925.png)

![image](https://user-images.githubusercontent.com/45762837/220039468-478d0ec4-806b-47d8-b1b6-d768b4b93c39.png)

​		Clock Mode，MODE0: 表示片选信号空闲期间， CLK 时钟信号是低电平，MODE3: 表示片选信号空闲期间， CLK 时钟信号是高电平，W25QXX设置为这两种模式均可；

​		Flash ID，Quad SPI 有两个 BANK，这里使用的 BANK1；

​		Dual Flash，此处只使用BANK1，禁止双BANK。

5. 以下为HSE的时钟配置：

![image](https://user-images.githubusercontent.com/45762837/220039509-3f916592-363d-4800-8c89-808ad1aaa63d.png)
![image](https://user-images.githubusercontent.com/45762837/220039517-10721fae-6192-4756-a270-2425a2623d29.png)

​		以下为HSI的时钟配置：

![image](https://user-images.githubusercontent.com/45762837/220039580-7a1f4841-784b-4281-a548-d670e524414b.png)
![image](https://user-images.githubusercontent.com/45762837/220039596-3d2886c3-2142-4421-a1f0-096ffd60523b.png)

6. Project Manager中，选择Do not generate the main()；

![image](https://user-images.githubusercontent.com/45762837/220039617-9ae5c5ce-c5b3-4516-b01a-765d5fb797b4.png)

7. 选择Copy only the necessary library fils；

![image](https://user-images.githubusercontent.com/45762837/220039647-e893c30c-08c5-4276-a6b2-aa5ba24313d5.png)

8. 打开keil，修改生成的文件类型，STM32CubeMX和Keil识别的算法文件格式分别为stldr和flm；

![image](https://user-images.githubusercontent.com/45762837/220039696-f9daeff3-5844-4920-ae45-3232366fc9c3.png)

9. 保证生成的算法文件中 RO 和 RW 段的独立性，即与地址无关；

![image](https://user-images.githubusercontent.com/45762837/220039721-8fe1bd97-fc98-41d0-8a89-6c4bd95b0827.png)
![image](https://user-images.githubusercontent.com/45762837/220039749-c844510d-2e42-4add-a1c2-21189570ba22.png)

如果程序的所有只读段都与位置无关，则该程序为只读位置无关（ROPI, Read-only position independence）。 ROPI 段通常是位置无关代码（PIC,position-independent code），但可以是只读数据，也可以是 PIC 和只读数据的组合。选择“ ROPI”选项， 可以避免用户不得不将代码加载到内存中的特定位置。这对于以下例程特别有用：

- 加载以响应运行事件；
- 在不同情况下使用其他例程的不同组合加载到内存中；
- 在执行期间映射到不同的地址。

使用 Read-Write position independence 同理，表示的可读可写数据段。

10. 分散加载设置

![image](https://user-images.githubusercontent.com/45762837/220039775-591c01bf-5c83-492d-b6c3-c9e10fe387be.png)

分散文件的内容为：

```assembly
;FLASH_LOADER 0x24000004 PI   ; FlashLoader Functions
FLASH_LOADER 0x24000000 PI   ; FlashLoader Functions, Used to avoid the error of AC6
{
  PrgCode +0           ; Code
  {
    * (+RO)
  }
  PrgData +0           ; Data
  {
    * (+RW,+ZI)
  }
}

DEVICE_INFO +0               ; Device Info
{
  DevInfo +0           ; Info structure
  {
    dev_inf.o
  }
}
```

> 上面的加载域地址实际应该是0x20000004，官方的建议也是千万别改这个链接文件，但为了更大的RAM For Algorithm和避免AC6的报错，我将其改成了0x24000000，如果有原理的欢迎说明一下，至少我的测试下来是没有问题的。

11. 添加算法文件和W25QXX的驱动文件；

![image](https://user-images.githubusercontent.com/45762837/220039804-4579909b-5b18-4863-b3fc-334bbccbe228.png)

12. 删除多余文件，测试发现，在不删除多余文件的情况下，生成的FLM文件是无法被Keil调用并且会导致闪退的（STLDR文件却可以被STM32CubeMX调用，总之肯定是有原因的，但我没有查到，有查到的大哥欢迎说一下），因此强烈建议删除多余的文件，只保留如下文件；

![image](https://user-images.githubusercontent.com/45762837/220039837-c15f642a-3f0a-42b8-90e0-5277f8e5ace9.png)

13. 删除Quad SPI的多余API，由于Quad SPI会调用部分DMA的函数和中断相关的函数，这里给的建议是全部注释掉，这里建议是用Diffuse对比文件差异，我这里是将所有DMA和中断相关的函数均注释掉，并且注释了`Quad SPI_WaitFlagStateUntilTimeout`函数的超时检测功能和`HAL_Quad SPI_Abort`函数中的Abort MDMA操作；

![image](https://user-images.githubusercontent.com/45762837/220039867-e6044759-56b0-4be2-9448-e0849865dd09.png)
![image](https://user-images.githubusercontent.com/45762837/220039887-0b70f56b-c321-4f3c-9048-d37efa817eb4.png)

14. 重写`HAL_InitTick`、`HAL_GetTick`、`HAL_Delay`函数。

```c
/**
* Override default HAL_InitTick function
*/
HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority) 
{
    return HAL_OK;
}

 /**
 * Override default HAL_GetTick function
 */
uint32_t HAL_GetTick(void) 
{
    static uint32_t ticks = 0U;
    uint32_t i;
	/* If Kernel is not running wait approximately 1 ms then increment
     and return auxiliary tick counter value */
    for (i = (SystemCoreClock >> 14U); i > 0U; i--) 
	{
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
    }
    return ++ticks;
}

/**
* Override default HAL_InitTick function
*/
void HAL_Delay(uint32_t Delay)
{
	uint32_t tickstart = HAL_GetTick();
	uint32_t wait = Delay;
	/* Add a period to guaranty minimum wait */
	if (wait < HAL_MAX_DELAY)
	{
		wait += (uint32_t)(HAL_TICK_FREQ_DEFAULT);
	}
	while((HAL_GetTick() - tickstart) < wait)
	{
		__NOP();
	}
}
```

15. 没有15嘞，全都结束嘞。

## 期望

1. 计划添加SPI-Flash下载算法；
2. 添加BootLoader和App。
