# 1 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 392 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c" 2
# 120 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 1
# 29 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
# 1 "../Core/Inc\\stm32h7xx_hal_conf.h" 1
# 247 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 1
# 27 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 1
# 29 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h"
# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 1
# 129 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h" 1
# 48 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
typedef enum
{

  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  WWDG_IRQn = 0,
  PVD_AVD_IRQn = 1,
  TAMP_STAMP_IRQn = 2,
  RTC_WKUP_IRQn = 3,
  FLASH_IRQn = 4,
  RCC_IRQn = 5,
  EXTI0_IRQn = 6,
  EXTI1_IRQn = 7,
  EXTI2_IRQn = 8,
  EXTI3_IRQn = 9,
  EXTI4_IRQn = 10,
  DMA1_Stream0_IRQn = 11,
  DMA1_Stream1_IRQn = 12,
  DMA1_Stream2_IRQn = 13,
  DMA1_Stream3_IRQn = 14,
  DMA1_Stream4_IRQn = 15,
  DMA1_Stream5_IRQn = 16,
  DMA1_Stream6_IRQn = 17,
  ADC_IRQn = 18,
  FDCAN1_IT0_IRQn = 19,
  FDCAN2_IT0_IRQn = 20,
  FDCAN1_IT1_IRQn = 21,
  FDCAN2_IT1_IRQn = 22,
  EXTI9_5_IRQn = 23,
  TIM1_BRK_IRQn = 24,
  TIM1_UP_IRQn = 25,
  TIM1_TRG_COM_IRQn = 26,
  TIM1_CC_IRQn = 27,
  TIM2_IRQn = 28,
  TIM3_IRQn = 29,
  TIM4_IRQn = 30,
  I2C1_EV_IRQn = 31,
  I2C1_ER_IRQn = 32,
  I2C2_EV_IRQn = 33,
  I2C2_ER_IRQn = 34,
  SPI1_IRQn = 35,
  SPI2_IRQn = 36,
  USART1_IRQn = 37,
  USART2_IRQn = 38,
  USART3_IRQn = 39,
  EXTI15_10_IRQn = 40,
  RTC_Alarm_IRQn = 41,
  TIM8_BRK_TIM12_IRQn = 43,
  TIM8_UP_TIM13_IRQn = 44,
  TIM8_TRG_COM_TIM14_IRQn = 45,
  TIM8_CC_IRQn = 46,
  DMA1_Stream7_IRQn = 47,
  FMC_IRQn = 48,
  SDMMC1_IRQn = 49,
  TIM5_IRQn = 50,
  SPI3_IRQn = 51,
  UART4_IRQn = 52,
  UART5_IRQn = 53,
  TIM6_DAC_IRQn = 54,
  TIM7_IRQn = 55,
  DMA2_Stream0_IRQn = 56,
  DMA2_Stream1_IRQn = 57,
  DMA2_Stream2_IRQn = 58,
  DMA2_Stream3_IRQn = 59,
  DMA2_Stream4_IRQn = 60,
  ETH_IRQn = 61,
  ETH_WKUP_IRQn = 62,
  FDCAN_CAL_IRQn = 63,
  DMA2_Stream5_IRQn = 68,
  DMA2_Stream6_IRQn = 69,
  DMA2_Stream7_IRQn = 70,
  USART6_IRQn = 71,
  I2C3_EV_IRQn = 72,
  I2C3_ER_IRQn = 73,
  OTG_HS_EP1_OUT_IRQn = 74,
  OTG_HS_EP1_IN_IRQn = 75,
  OTG_HS_WKUP_IRQn = 76,
  OTG_HS_IRQn = 77,
  DCMI_IRQn = 78,
  CRYP_IRQn = 79,
  HASH_RNG_IRQn = 80,
  FPU_IRQn = 81,
  UART7_IRQn = 82,
  UART8_IRQn = 83,
  SPI4_IRQn = 84,
  SPI5_IRQn = 85,
  SPI6_IRQn = 86,
  SAI1_IRQn = 87,
  LTDC_IRQn = 88,
  LTDC_ER_IRQn = 89,
  DMA2D_IRQn = 90,
  SAI2_IRQn = 91,
  QUADSPI_IRQn = 92,
  LPTIM1_IRQn = 93,
  CEC_IRQn = 94,
  I2C4_EV_IRQn = 95,
  I2C4_ER_IRQn = 96,
  SPDIF_RX_IRQn = 97,
  OTG_FS_EP1_OUT_IRQn = 98,
  OTG_FS_EP1_IN_IRQn = 99,
  OTG_FS_WKUP_IRQn = 100,
  OTG_FS_IRQn = 101,
  DMAMUX1_OVR_IRQn = 102,
  HRTIM1_Master_IRQn = 103,
  HRTIM1_TIMA_IRQn = 104,
  HRTIM1_TIMB_IRQn = 105,
  HRTIM1_TIMC_IRQn = 106,
  HRTIM1_TIMD_IRQn = 107,
  HRTIM1_TIME_IRQn = 108,
  HRTIM1_FLT_IRQn = 109,
  DFSDM1_FLT0_IRQn = 110,
  DFSDM1_FLT1_IRQn = 111,
  DFSDM1_FLT2_IRQn = 112,
  DFSDM1_FLT3_IRQn = 113,
  SAI3_IRQn = 114,
  SWPMI1_IRQn = 115,
  TIM15_IRQn = 116,
  TIM16_IRQn = 117,
  TIM17_IRQn = 118,
  MDIOS_WKUP_IRQn = 119,
  MDIOS_IRQn = 120,
  JPEG_IRQn = 121,
  MDMA_IRQn = 122,
  SDMMC2_IRQn = 124,
  HSEM1_IRQn = 125,
  ADC3_IRQn = 127,
  DMAMUX2_OVR_IRQn = 128,
  BDMA_Channel0_IRQn = 129,
  BDMA_Channel1_IRQn = 130,
  BDMA_Channel2_IRQn = 131,
  BDMA_Channel3_IRQn = 132,
  BDMA_Channel4_IRQn = 133,
  BDMA_Channel5_IRQn = 134,
  BDMA_Channel6_IRQn = 135,
  BDMA_Channel7_IRQn = 136,
  COMP_IRQn = 137 ,
  LPTIM2_IRQn = 138,
  LPTIM3_IRQn = 139,
  LPTIM4_IRQn = 140,
  LPTIM5_IRQn = 141,
  LPUART1_IRQn = 142,
  CRS_IRQn = 144,
  ECC_IRQn = 145,
  SAI4_IRQn = 146,
  WAKEUP_PIN_IRQn = 149,
} IRQn_Type;
# 224 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
# 1 "../Drivers/CMSIS/Include\\core_cm7.h" 1
# 29 "../Drivers/CMSIS/Include\\core_cm7.h" 3





# 1 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 1 3
# 56 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 35 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 63 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 1 "../Drivers/CMSIS/Include/cmsis_version.h" 1 3
# 29 "../Drivers/CMSIS/Include/cmsis_version.h" 3
# 64 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 162 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 1 "../Drivers/CMSIS/Include/cmsis_compiler.h" 1 3
# 47 "../Drivers/CMSIS/Include/cmsis_compiler.h" 3
# 1 "../Drivers/CMSIS/Include/cmsis_armclang.h" 1 3
# 31 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3


# 1 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 1 3






# 1 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_acle.h" 1 3
# 39 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_acle.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__)) __wfi(void) {
  __builtin_arm_wfi();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __wfe(void) {
  __builtin_arm_wfe();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __sev(void) {
  __builtin_arm_sev();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __sevl(void) {
  __builtin_arm_sevl();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __yield(void) {
  __builtin_arm_yield();
}







static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__swp(uint32_t __x, volatile uint32_t *__p) {
  uint32_t v;
  do
    v = __builtin_arm_ldrex(__p);
  while (__builtin_arm_strex(__x, __p));
  return v;
}
# 107 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_acle.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__)) __nop(void) {
  __builtin_arm_nop();
}





static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__ror(uint32_t __x, uint32_t __y) {
  __y %= 32;
  if (__y == 0)
    return __x;
  return (__x >> __y) | (__x << (32 - __y));
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rorll(uint64_t __x, uint32_t __y) {
  __y %= 64;
  if (__y == 0)
    return __x;
  return (__x >> __y) | (__x << (64 - __y));
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rorl(unsigned long __x, uint32_t __y) {

  return __ror(__x, __y);



}



static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__clz(uint32_t __t) {
  return __builtin_clz(__t);
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__clzl(unsigned long __t) {
  return __builtin_clzl(__t);
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__clzll(uint64_t __t) {
  return __builtin_clzll(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__cls(uint32_t __t) {
  return __builtin_arm_cls(__t);
}

static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__clsl(unsigned long __t) {

  return __builtin_arm_cls(__t);



}

static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__clsll(uint64_t __t) {
  return __builtin_arm_cls64(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rev(uint32_t __t) {
  return __builtin_bswap32(__t);
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__revl(unsigned long __t) {

  return __builtin_bswap32(__t);



}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__revll(uint64_t __t) {
  return __builtin_bswap64(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rev16(uint32_t __t) {
  return __ror(__rev(__t), 16);
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rev16ll(uint64_t __t) {
  return (((uint64_t)__rev16(__t >> 32)) << 32) | __rev16(__t);
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rev16l(unsigned long __t) {

    return __rev16(__t);



}


static __inline__ int16_t __attribute__((__always_inline__, __nodebug__))
__revsh(int16_t __t) {
  return __builtin_bswap16(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rbit(uint32_t __t) {
  return __builtin_arm_rbit(__t);
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rbitll(uint64_t __t) {

  return (((uint64_t)__builtin_arm_rbit(__t)) << 32) |
         __builtin_arm_rbit(__t >> 32);



}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rbitl(unsigned long __t) {

  return __rbit(__t);



}





static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smulbb(int32_t __a, int32_t __b) {
  return __builtin_arm_smulbb(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smulbt(int32_t __a, int32_t __b) {
  return __builtin_arm_smulbt(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smultb(int32_t __a, int32_t __b) {
  return __builtin_arm_smultb(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smultt(int32_t __a, int32_t __b) {
  return __builtin_arm_smultt(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smulwb(int32_t __a, int32_t __b) {
  return __builtin_arm_smulwb(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__,__nodebug__))
__smulwt(int32_t __a, int32_t __b) {
  return __builtin_arm_smulwt(__a, __b);
}
# 292 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_acle.h" 3
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__qadd(int32_t __t, int32_t __v) {
  return __builtin_arm_qadd(__t, __v);
}

static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__qsub(int32_t __t, int32_t __v) {
  return __builtin_arm_qsub(__t, __v);
}

static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__qdbl(int32_t __t) {
  return __builtin_arm_qadd(__t, __t);
}




static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlabb(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlabb(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlabt(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlabt(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlatb(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlatb(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlatt(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlatt(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlawb(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlawb(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlawt(int32_t __a, int32_t __b, int32_t __c) {
  return __builtin_arm_smlawt(__a, __b, __c);
}
# 345 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_acle.h" 3
typedef int32_t int8x4_t;
typedef int32_t int16x2_t;
typedef uint32_t uint8x4_t;
typedef uint32_t uint16x2_t;

static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__sxtab16(int16x2_t __a, int8x4_t __b) {
  return __builtin_arm_sxtab16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__sxtb16(int8x4_t __a) {
  return __builtin_arm_sxtb16(__a);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__uxtab16(int16x2_t __a, int8x4_t __b) {
  return __builtin_arm_uxtab16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__uxtb16(int8x4_t __a) {
  return __builtin_arm_uxtb16(__a);
}




static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__sel(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_sel(__a, __b);
}




static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__qadd8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_qadd8(__a, __b);
}
static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__qsub8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_qsub8(__a, __b);
}
static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__sadd8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_sadd8(__a, __b);
}
static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__shadd8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_shadd8(__a, __b);
}
static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__shsub8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_shsub8(__a, __b);
}
static __inline__ int8x4_t __attribute__((__always_inline__, __nodebug__))
__ssub8(int8x4_t __a, int8x4_t __b) {
  return __builtin_arm_ssub8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__uadd8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_uadd8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__uhadd8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_uhadd8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__uhsub8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_uhsub8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__uqadd8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_uqadd8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__uqsub8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_uqsub8(__a, __b);
}
static __inline__ uint8x4_t __attribute__((__always_inline__, __nodebug__))
__usub8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_usub8(__a, __b);
}




static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__usad8(uint8x4_t __a, uint8x4_t __b) {
  return __builtin_arm_usad8(__a, __b);
}
static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__usada8(uint8x4_t __a, uint8x4_t __b, uint32_t __c) {
  return __builtin_arm_usada8(__a, __b, __c);
}




static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__qadd16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_qadd16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__qasx(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_qasx(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__qsax(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_qsax(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__qsub16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_qsub16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__sadd16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_sadd16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__sasx(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_sasx(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__shadd16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_shadd16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__shasx(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_shasx(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__shsax(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_shsax(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__shsub16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_shsub16(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__ssax(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_ssax(__a, __b);
}
static __inline__ int16x2_t __attribute__((__always_inline__, __nodebug__))
__ssub16(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_ssub16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uadd16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uadd16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uasx(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uasx(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uhadd16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uhadd16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uhasx(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uhasx(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uhsax(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uhsax(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uhsub16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uhsub16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uqadd16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uqadd16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uqasx(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uqasx(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uqsax(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uqsax(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__uqsub16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_uqsub16(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__usax(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_usax(__a, __b);
}
static __inline__ uint16x2_t __attribute__((__always_inline__, __nodebug__))
__usub16(uint16x2_t __a, uint16x2_t __b) {
  return __builtin_arm_usub16(__a, __b);
}




static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlad(int16x2_t __a, int16x2_t __b, int32_t __c) {
  return __builtin_arm_smlad(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smladx(int16x2_t __a, int16x2_t __b, int32_t __c) {
  return __builtin_arm_smladx(__a, __b, __c);
}
static __inline__ int64_t __attribute__((__always_inline__, __nodebug__))
__smlald(int16x2_t __a, int16x2_t __b, int64_t __c) {
  return __builtin_arm_smlald(__a, __b, __c);
}
static __inline__ int64_t __attribute__((__always_inline__, __nodebug__))
__smlaldx(int16x2_t __a, int16x2_t __b, int64_t __c) {
  return __builtin_arm_smlaldx(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlsd(int16x2_t __a, int16x2_t __b, int32_t __c) {
  return __builtin_arm_smlsd(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smlsdx(int16x2_t __a, int16x2_t __b, int32_t __c) {
  return __builtin_arm_smlsdx(__a, __b, __c);
}
static __inline__ int64_t __attribute__((__always_inline__, __nodebug__))
__smlsld(int16x2_t __a, int16x2_t __b, int64_t __c) {
  return __builtin_arm_smlsld(__a, __b, __c);
}
static __inline__ int64_t __attribute__((__always_inline__, __nodebug__))
__smlsldx(int16x2_t __a, int16x2_t __b, int64_t __c) {
  return __builtin_arm_smlsldx(__a, __b, __c);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smuad(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_smuad(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smuadx(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_smuadx(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smusd(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_smusd(__a, __b);
}
static __inline__ int32_t __attribute__((__always_inline__, __nodebug__))
__smusdx(int16x2_t __a, int16x2_t __b) {
  return __builtin_arm_smusdx(__a, __b);
}
# 8 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 2 3
# 40 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__disable_fiq(void) {
  unsigned int cpsr;

  __asm__ __volatile__("mrs %[cpsr], faultmask\n"
                       "cpsid f\n"
                       : [cpsr] "=r"(cpsr));
  return cpsr & 0x1;
# 62 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}


static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__disable_irq(void) {
  unsigned int cpsr;


  __asm__ __volatile__("mrs %[cpsr], primask\n"
                       "cpsid i\n"
                       : [cpsr] "=r"(cpsr));
  return cpsr & 0x1;
# 89 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}







static __inline__ void __attribute__((__always_inline__, __nodebug__))
__enable_fiq(void) {

  __asm__ __volatile__("cpsie f");
# 109 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}


static __inline__ void __attribute__((__always_inline__, __nodebug__))
__enable_irq(void) {

  __asm__ __volatile__("cpsie i");
# 124 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}

static __inline__ void __attribute__((__always_inline__, __nodebug__)) __force_stores(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static void __attribute__((__always_inline__, __nodebug__)) __memory_changed(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static void __attribute__((__always_inline__, __nodebug__)) __schedule_barrier(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
__semihost(int val, const void *ptr) {
  register int v __asm__("r0") = val;
  register const void *p __asm__("r1") = ptr;
  __asm__ __volatile__(


      "bkpt 0xab"
# 160 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
      : "+r"(v), "+r"(p)
      :
      : "memory", "cc");
  return v;
}


static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__vfp_status(unsigned int mask, unsigned int flags) {
  unsigned int fpscr;
  __asm__ __volatile__("vmrs %[fpscr], fpscr" : [fpscr] "=r"(fpscr));
  unsigned int set = mask & flags;
  unsigned int clear = mask & ~flags;
  unsigned int toggle = ~mask & flags;
  fpscr |= set;
  fpscr &= ~clear;
  fpscr ^= toggle;
  __asm__ __volatile__("vmsr fpscr, %[fpscr]" : : [fpscr] "r"(fpscr));
  return fpscr;
}
# 34 "../Drivers/CMSIS/Include/cmsis_armclang.h" 2 3
# 68 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 166 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 196 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}
# 220 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 292 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 316 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 346 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 397 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 427 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 470 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}
# 500 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI(uint32_t basePri)
{
  __asm volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
}
# 525 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
}







__attribute__((always_inline)) static __inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 566 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 902 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 937 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __CLZ(uint32_t value)
{
# 948 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 1063 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 1078 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __LDRBT(volatile uint8_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint8_t) result);
}
# 1093 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint16_t __LDRHT(volatile uint16_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint16_t) result);
}
# 1108 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __LDRT(volatile uint32_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return(result);
}
# 1123 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRBT(uint8_t value, volatile uint8_t *ptr)
{
  __asm volatile ("strbt %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1135 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRHT(uint16_t value, volatile uint16_t *ptr)
{
  __asm volatile ("strht %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1147 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRT(uint32_t value, volatile uint32_t *ptr)
{
  __asm volatile ("strt %1, %0" : "=Q" (*ptr) : "r" (value) );
}
# 1432 "../Drivers/CMSIS/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline int32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
  int32_t result;

  __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 48 "../Drivers/CMSIS/Include/cmsis_compiler.h" 2 3
# 163 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 274 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 313 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 331 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:1;
    uint32_t ICI_IT_1:6;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t ICI_IT_2:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 386 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 421 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t ISER[8U];
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];
        uint32_t RESERVED4[56U];
  volatile uint8_t IP[240U];
        uint32_t RESERVED5[644U];
  volatile uint32_t STIR;
} NVIC_Type;
# 455 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHPR[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t ID_PFR[2U];
  volatile const uint32_t ID_DFR;
  volatile const uint32_t ID_AFR;
  volatile const uint32_t ID_MFR[4U];
  volatile const uint32_t ID_ISAR[5U];
        uint32_t RESERVED0[1U];
  volatile const uint32_t CLIDR;
  volatile const uint32_t CTR;
  volatile const uint32_t CCSIDR;
  volatile uint32_t CSSELR;
  volatile uint32_t CPACR;
        uint32_t RESERVED3[93U];
  volatile uint32_t STIR;
        uint32_t RESERVED4[15U];
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
        uint32_t RESERVED5[1U];
  volatile uint32_t ICIALLU;
        uint32_t RESERVED6[1U];
  volatile uint32_t ICIMVAU;
  volatile uint32_t DCIMVAC;
  volatile uint32_t DCISW;
  volatile uint32_t DCCMVAU;
  volatile uint32_t DCCMVAC;
  volatile uint32_t DCCSW;
  volatile uint32_t DCCIMVAC;
  volatile uint32_t DCCISW;
        uint32_t RESERVED7[6U];
  volatile uint32_t ITCMCR;
  volatile uint32_t DTCMCR;
  volatile uint32_t AHBPCR;
  volatile uint32_t CACR;
  volatile uint32_t AHBSCR;
        uint32_t RESERVED8[1U];
  volatile uint32_t ABFSR;
} SCB_Type;
# 921 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 979 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 1031 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[6U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 1119 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
        uint32_t RESERVED3[981U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
} DWT_Type;
# 1269 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1431 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RASR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RASR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RASR_A3;
} MPU_Type;
# 1527 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
} FPU_Type;
# 1639 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1871 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}
# 1902 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 1921 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1940 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 1959 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1978 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 1993 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 2010 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 2032 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}
# 2054 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}
# 2079 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 2106 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 2129 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  (* (int *) (vectors + ((int32_t)IRQn + 16) * 4)) = vector;
  __builtin_arm_dsb(0xF);
}
# 2145 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return (uint32_t)(* (int *) (vectors + ((int32_t)IRQn + 16) * 4));
}






__attribute__((__noreturn__)) static __inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __builtin_arm_nop();
  }
}
# 2178 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 1 "../Drivers/CMSIS/Include/mpu_armv7.h" 1 3
# 29 "../Drivers/CMSIS/Include/mpu_armv7.h" 3
# 183 "../Drivers/CMSIS/Include/mpu_armv7.h" 3
typedef struct {
  uint32_t RBAR;
  uint32_t RASR;
} ARM_MPU_Region_t;




static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}



static __inline void ARM_MPU_Disable(void)
{
  __builtin_arm_dmb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL &= ~(1UL );
}




static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}





static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i)
  {
    dst[i] = src[i];
  }
}





static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt)
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}
# 2179 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 2199 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->MVFR0;
  if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x220U)
  {
    return 2U;
  }
  else if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;
  }
  else
  {
    return 0U;
  }
}
# 2241 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_EnableICache (void)
{

    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR & (1UL << 17U)) return;

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR |= (uint32_t)(1UL << 17U);
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_DisableICache (void)
{

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR &= ~(uint32_t)(1UL << 17U);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_InvalidateICache (void)
{

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}
# 2299 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_InvalidateICache_by_Addr (void *addr, int32_t isize)
{

    if ( isize > 0 ) {
       int32_t op_size = isize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIMVAU = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}






__attribute__((always_inline)) static __inline void SCB_EnableDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR & (1UL << 16U)) return;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);
    __builtin_arm_dsb(0xF);

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR |= (uint32_t)(1UL << 16U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_DisableDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR &= ~(uint32_t)(1UL << 16U);
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                       ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_InvalidateDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_CleanDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCSW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_CleanInvalidateDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                       ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}
# 2512 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_InvalidateDCache_by_Addr (void *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCIMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2542 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_CleanDCache_by_Addr (uint32_t *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2572 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_CleanInvalidateDCache_by_Addr (uint32_t *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCIMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2618 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 2648 "../Drivers/CMSIS/Include\\core_cm7.h" 3
extern volatile int32_t ITM_RxBuffer;
# 2660 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __builtin_arm_nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 2681 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);
  }

  return (ch);
}
# 2701 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 225 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h" 2








# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h" 1
# 57 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h"
extern uint32_t SystemCoreClock;
extern uint32_t SystemD2Clock;
extern const uint8_t D1CorePrescTable[16] ;
# 85 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h"
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);
# 234 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h" 2
# 244 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IER;
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CFGR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t PCSEL;
  volatile uint32_t LTR1;
  volatile uint32_t HTR1;
  uint32_t RESERVED1;
  uint32_t RESERVED2;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t SQR4;
  volatile uint32_t DR;
  uint32_t RESERVED3;
  uint32_t RESERVED4;
  volatile uint32_t JSQR;
  uint32_t RESERVED5[4];
  volatile uint32_t OFR1;
  volatile uint32_t OFR2;
  volatile uint32_t OFR3;
  volatile uint32_t OFR4;
  uint32_t RESERVED6[4];
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  uint32_t RESERVED7[4];
  volatile uint32_t AWD2CR;
  volatile uint32_t AWD3CR;
  uint32_t RESERVED8;
  uint32_t RESERVED9;
  volatile uint32_t LTR2;
  volatile uint32_t HTR2;
  volatile uint32_t LTR3;
  volatile uint32_t HTR3;
  volatile uint32_t DIFSEL;
  volatile uint32_t CALFACT;
  volatile uint32_t CALFACT2;
} ADC_TypeDef;


typedef struct
{
volatile uint32_t CSR;
uint32_t RESERVED;
volatile uint32_t CCR;
volatile uint32_t CDR;
volatile uint32_t CDR2;

} ADC_Common_TypeDef;






typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CCR;
} VREFBUF_TypeDef;






typedef struct
{
  volatile uint32_t CREL;
  volatile uint32_t ENDN;
  volatile uint32_t RESERVED1;
  volatile uint32_t DBTP;
  volatile uint32_t TEST;
  volatile uint32_t RWD;
  volatile uint32_t CCCR;
  volatile uint32_t NBTP;
  volatile uint32_t TSCC;
  volatile uint32_t TSCV;
  volatile uint32_t TOCC;
  volatile uint32_t TOCV;
  volatile uint32_t RESERVED2[4];
  volatile uint32_t ECR;
  volatile uint32_t PSR;
  volatile uint32_t TDCR;
  volatile uint32_t RESERVED3;
  volatile uint32_t IR;
  volatile uint32_t IE;
  volatile uint32_t ILS;
  volatile uint32_t ILE;
  volatile uint32_t RESERVED4[8];
  volatile uint32_t GFC;
  volatile uint32_t SIDFC;
  volatile uint32_t XIDFC;
  volatile uint32_t RESERVED5;
  volatile uint32_t XIDAM;
  volatile uint32_t HPMS;
  volatile uint32_t NDAT1;
  volatile uint32_t NDAT2;
  volatile uint32_t RXF0C;
  volatile uint32_t RXF0S;
  volatile uint32_t RXF0A;
  volatile uint32_t RXBC;
  volatile uint32_t RXF1C;
  volatile uint32_t RXF1S;
  volatile uint32_t RXF1A;
  volatile uint32_t RXESC;
  volatile uint32_t TXBC;
  volatile uint32_t TXFQS;
  volatile uint32_t TXESC;
  volatile uint32_t TXBRP;
  volatile uint32_t TXBAR;
  volatile uint32_t TXBCR;
  volatile uint32_t TXBTO;
  volatile uint32_t TXBCF;
  volatile uint32_t TXBTIE;
  volatile uint32_t TXBCIE;
  volatile uint32_t RESERVED6[2];
  volatile uint32_t TXEFC;
  volatile uint32_t TXEFS;
  volatile uint32_t TXEFA;
  volatile uint32_t RESERVED7;
} FDCAN_GlobalTypeDef;





typedef struct
{
  volatile uint32_t TTTMC;
  volatile uint32_t TTRMC;
  volatile uint32_t TTOCF;
  volatile uint32_t TTMLM;
  volatile uint32_t TURCF;
  volatile uint32_t TTOCN;
  volatile uint32_t TTGTP;
  volatile uint32_t TTTMK;
  volatile uint32_t TTIR;
  volatile uint32_t TTIE;
  volatile uint32_t TTILS;
  volatile uint32_t TTOST;
  volatile uint32_t TURNA;
  volatile uint32_t TTLGT;
  volatile uint32_t TTCTC;
  volatile uint32_t TTCPT;
  volatile uint32_t TTCSM;
  volatile uint32_t RESERVED1[111];
  volatile uint32_t TTTS;
} TTCAN_TypeDef;





typedef struct
{
  volatile uint32_t CREL;
  volatile uint32_t CCFG;
  volatile uint32_t CSTAT;
  volatile uint32_t CWD;
  volatile uint32_t IR;
  volatile uint32_t IE;
} FDCAN_ClockCalibrationUnit_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t TXDR;
  volatile uint32_t RXDR;
  volatile uint32_t ISR;
  volatile uint32_t IER;
}CEC_TypeDef;





typedef struct
{
  volatile uint32_t DR;
  volatile uint32_t IDR;
  volatile uint32_t CR;
  uint32_t RESERVED2;
  volatile uint32_t INIT;
  volatile uint32_t POL;
} CRC_TypeDef;





typedef struct
{
volatile uint32_t CR;
volatile uint32_t CFGR;
volatile uint32_t ISR;
volatile uint32_t ICR;
} CRS_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;
  volatile uint32_t SR;
  volatile uint32_t CCR;
  volatile uint32_t MCR;
  volatile uint32_t SHSR1;
  volatile uint32_t SHSR2;
  volatile uint32_t SHHR;
  volatile uint32_t SHRR;
} DAC_TypeDef;




typedef struct
{
  volatile uint32_t FLTCR1;
  volatile uint32_t FLTCR2;
  volatile uint32_t FLTISR;
  volatile uint32_t FLTICR;
  volatile uint32_t FLTJCHGR;
  volatile uint32_t FLTFCR;
  volatile uint32_t FLTJDATAR;
  volatile uint32_t FLTRDATAR;
  volatile uint32_t FLTAWHTR;
  volatile uint32_t FLTAWLTR;
  volatile uint32_t FLTAWSR;
  volatile uint32_t FLTAWCFR;
  volatile uint32_t FLTEXMAX;
  volatile uint32_t FLTEXMIN;
  volatile uint32_t FLTCNVTIMR;
} DFSDM_Filter_TypeDef;




typedef struct
{
  volatile uint32_t CHCFGR1;
  volatile uint32_t CHCFGR2;
  volatile uint32_t CHAWSCDR;

  volatile uint32_t CHWDATAR;
  volatile uint32_t CHDATINR;
} DFSDM_Channel_TypeDef;




typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
  uint32_t RESERVED4[11];
  volatile uint32_t APB3FZ1;
  uint32_t RESERVED5;
  volatile uint32_t APB1LFZ1;
  uint32_t RESERVED6;
  volatile uint32_t APB1HFZ1;
  uint32_t RESERVED7;
  volatile uint32_t APB2FZ1;
  uint32_t RESERVED8;
  volatile uint32_t APB4FZ1;
}DBGMCU_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t RISR;
  volatile uint32_t IER;
  volatile uint32_t MISR;
  volatile uint32_t ICR;
  volatile uint32_t ESCR;
  volatile uint32_t ESUR;
  volatile uint32_t CWSTRTR;
  volatile uint32_t CWSIZER;
  volatile uint32_t DR;
} DCMI_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t NDTR;
  volatile uint32_t PAR;
  volatile uint32_t M0AR;
  volatile uint32_t M1AR;
  volatile uint32_t FCR;
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;
  volatile uint32_t HISR;
  volatile uint32_t LIFCR;
  volatile uint32_t HIFCR;
} DMA_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CM0AR;
  volatile uint32_t CM1AR;
} BDMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} BDMA_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
}DMAMUX_Channel_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CFR;
}DMAMUX_ChannelStatus_TypeDef;

typedef struct
{
  volatile uint32_t RGCR;
}DMAMUX_RequestGen_TypeDef;

typedef struct
{
  volatile uint32_t RGSR;
  volatile uint32_t RGCFR;
}DMAMUX_RequestGenStatus_TypeDef;




typedef struct
{
  volatile uint32_t GISR0;
}MDMA_TypeDef;

typedef struct
{
  volatile uint32_t CISR;
  volatile uint32_t CIFCR;
  volatile uint32_t CESR;
  volatile uint32_t CCR;
  volatile uint32_t CTCR;
  volatile uint32_t CBNDTR;
  volatile uint32_t CSAR;
  volatile uint32_t CDAR;
  volatile uint32_t CBRUR;
  volatile uint32_t CLAR;
  volatile uint32_t CTBR;
  uint32_t RESERVED0;
  volatile uint32_t CMAR;
  volatile uint32_t CMDR;
}MDMA_Channel_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
  volatile uint32_t FGMAR;
  volatile uint32_t FGOR;
  volatile uint32_t BGMAR;
  volatile uint32_t BGOR;
  volatile uint32_t FGPFCCR;
  volatile uint32_t FGCOLR;
  volatile uint32_t BGPFCCR;
  volatile uint32_t BGCOLR;
  volatile uint32_t FGCMAR;
  volatile uint32_t BGCMAR;
  volatile uint32_t OPFCCR;
  volatile uint32_t OCOLR;
  volatile uint32_t OMAR;
  volatile uint32_t OOR;
  volatile uint32_t NLR;
  volatile uint32_t LWR;
  volatile uint32_t AMTCR;
  uint32_t RESERVED[236];
  volatile uint32_t FGCLUT[256];
  volatile uint32_t BGCLUT[256];
} DMA2D_TypeDef;





typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACECR;
  volatile uint32_t MACPFR;
  volatile uint32_t MACWTR;
  volatile uint32_t MACHT0R;
  volatile uint32_t MACHT1R;
  uint32_t RESERVED1[14];
  volatile uint32_t MACVTR;
  uint32_t RESERVED2;
  volatile uint32_t MACVHTR;
  uint32_t RESERVED3;
  volatile uint32_t MACVIR;
  volatile uint32_t MACIVIR;
  uint32_t RESERVED4[2];
  volatile uint32_t MACTFCR;
  uint32_t RESERVED5[7];
  volatile uint32_t MACRFCR;
  uint32_t RESERVED6[7];
  volatile uint32_t MACISR;
  volatile uint32_t MACIER;
  volatile uint32_t MACRXTXSR;
  uint32_t RESERVED7;
  volatile uint32_t MACPCSR;
  volatile uint32_t MACRWKPFR;
  uint32_t RESERVED8[2];
  volatile uint32_t MACLCSR;
  volatile uint32_t MACLTCR;
  volatile uint32_t MACLETR;
  volatile uint32_t MAC1USTCR;
  uint32_t RESERVED9[12];
  volatile uint32_t MACVR;
  volatile uint32_t MACDR;
  uint32_t RESERVED10;
  volatile uint32_t MACHWF0R;
  volatile uint32_t MACHWF1R;
  volatile uint32_t MACHWF2R;
  uint32_t RESERVED11[54];
  volatile uint32_t MACMDIOAR;
  volatile uint32_t MACMDIODR;
  uint32_t RESERVED12[2];
  volatile uint32_t MACARPAR;
  uint32_t RESERVED13[59];
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;
  uint32_t RESERVED14[248];
  volatile uint32_t MMCCR;
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;
  uint32_t RESERVED15[14];
  volatile uint32_t MMCTSCGPR;
  volatile uint32_t MMCTMCGPR;
  uint32_t RESERVED16[5];
  volatile uint32_t MMCTPCGR;
  uint32_t RESERVED17[10];
  volatile uint32_t MMCRCRCEPR;
  volatile uint32_t MMCRAEPR;
  uint32_t RESERVED18[10];
  volatile uint32_t MMCRUPGR;
  uint32_t RESERVED19[9];
  volatile uint32_t MMCTLPIMSTR;
  volatile uint32_t MMCTLPITCR;
  volatile uint32_t MMCRLPIMSTR;
  volatile uint32_t MMCRLPITCR;
  uint32_t RESERVED20[65];
  volatile uint32_t MACL3L4C0R;
  volatile uint32_t MACL4A0R;
  uint32_t RESERVED21[2];
  volatile uint32_t MACL3A0R0R;
  volatile uint32_t MACL3A1R0R;
  volatile uint32_t MACL3A2R0R;
  volatile uint32_t MACL3A3R0R;
  uint32_t RESERVED22[4];
  volatile uint32_t MACL3L4C1R;
  volatile uint32_t MACL4A1R;
  uint32_t RESERVED23[2];
  volatile uint32_t MACL3A0R1R;
  volatile uint32_t MACL3A1R1R;
  volatile uint32_t MACL3A2R1R;
  volatile uint32_t MACL3A3R1R;
  uint32_t RESERVED24[108];
  volatile uint32_t MACTSCR;
  volatile uint32_t MACSSIR;
  volatile uint32_t MACSTSR;
  volatile uint32_t MACSTNR;
  volatile uint32_t MACSTSUR;
  volatile uint32_t MACSTNUR;
  volatile uint32_t MACTSAR;
  uint32_t RESERVED25;
  volatile uint32_t MACTSSR;
  uint32_t RESERVED26[3];
  volatile uint32_t MACTTSSNR;
  volatile uint32_t MACTTSSSR;
  uint32_t RESERVED27[2];
  volatile uint32_t MACACR;
  uint32_t RESERVED28;
  volatile uint32_t MACATSNR;
  volatile uint32_t MACATSSR;
  volatile uint32_t MACTSIACR;
  volatile uint32_t MACTSEACR;
  volatile uint32_t MACTSICNR;
  volatile uint32_t MACTSECNR;
  uint32_t RESERVED29[4];
  volatile uint32_t MACPPSCR;
  uint32_t RESERVED30[3];
  volatile uint32_t MACPPSTTSR;
  volatile uint32_t MACPPSTTNR;
  volatile uint32_t MACPPSIR;
  volatile uint32_t MACPPSWR;
  uint32_t RESERVED31[12];
  volatile uint32_t MACPOCR;
  volatile uint32_t MACSPI0R;
  volatile uint32_t MACSPI1R;
  volatile uint32_t MACSPI2R;
  volatile uint32_t MACLMIR;
  uint32_t RESERVED32[11];
  volatile uint32_t MTLOMR;
  uint32_t RESERVED33[7];
  volatile uint32_t MTLISR;
  uint32_t RESERVED34[55];
  volatile uint32_t MTLTQOMR;
  volatile uint32_t MTLTQUR;
  volatile uint32_t MTLTQDR;
  uint32_t RESERVED35[8];
  volatile uint32_t MTLQICSR;
  volatile uint32_t MTLRQOMR;
  volatile uint32_t MTLRQMPOCR;
  volatile uint32_t MTLRQDR;
  uint32_t RESERVED36[177];
  volatile uint32_t DMAMR;
  volatile uint32_t DMASBMR;
  volatile uint32_t DMAISR;
  volatile uint32_t DMADSR;
  uint32_t RESERVED37[60];
  volatile uint32_t DMACCR;
  volatile uint32_t DMACTCR;
  volatile uint32_t DMACRCR;
  uint32_t RESERVED38[2];
  volatile uint32_t DMACTDLAR;
  uint32_t RESERVED39;
  volatile uint32_t DMACRDLAR;
  volatile uint32_t DMACTDTPR;
  uint32_t RESERVED40;
  volatile uint32_t DMACRDTPR;
  volatile uint32_t DMACTDRLR;
  volatile uint32_t DMACRDRLR;
  volatile uint32_t DMACIER;
  volatile uint32_t DMACRIWTR;
volatile uint32_t DMACSFCSR;
  uint32_t RESERVED41;
  volatile uint32_t DMACCATDR;
  uint32_t RESERVED42;
  volatile uint32_t DMACCARDR;
  uint32_t RESERVED43;
  volatile uint32_t DMACCATBR;
  uint32_t RESERVED44;
  volatile uint32_t DMACCARBR;
  volatile uint32_t DMACSR;
uint32_t RESERVED45[2];
volatile uint32_t DMACMFCR;
}ETH_TypeDef;




typedef struct
{
volatile uint32_t RTSR1;
volatile uint32_t FTSR1;
volatile uint32_t SWIER1;
volatile uint32_t D3PMR1;
volatile uint32_t D3PCR1L;
volatile uint32_t D3PCR1H;
uint32_t RESERVED1[2];
volatile uint32_t RTSR2;
volatile uint32_t FTSR2;
volatile uint32_t SWIER2;
volatile uint32_t D3PMR2;
volatile uint32_t D3PCR2L;
volatile uint32_t D3PCR2H;
uint32_t RESERVED2[2];
volatile uint32_t RTSR3;
volatile uint32_t FTSR3;
volatile uint32_t SWIER3;
volatile uint32_t D3PMR3;
volatile uint32_t D3PCR3L;
volatile uint32_t D3PCR3H;
uint32_t RESERVED3[10];
volatile uint32_t IMR1;
volatile uint32_t EMR1;
volatile uint32_t PR1;
uint32_t RESERVED4;
volatile uint32_t IMR2;
volatile uint32_t EMR2;
volatile uint32_t PR2;
uint32_t RESERVED5;
volatile uint32_t IMR3;
volatile uint32_t EMR3;
volatile uint32_t PR3;
}EXTI_TypeDef;
# 896 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
typedef struct
{
volatile uint32_t IMR1;
volatile uint32_t EMR1;
volatile uint32_t PR1;
uint32_t RESERVED1;
volatile uint32_t IMR2;
volatile uint32_t EMR2;
volatile uint32_t PR2;
uint32_t RESERVED2;
volatile uint32_t IMR3;
volatile uint32_t EMR3;
volatile uint32_t PR3;
}EXTI_Core_TypeDef;






typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR1;
  volatile uint32_t OPTKEYR;
  volatile uint32_t CR1;
  volatile uint32_t SR1;
  volatile uint32_t CCR1;
  volatile uint32_t OPTCR;
  volatile uint32_t OPTSR_CUR;
  volatile uint32_t OPTSR_PRG;
  volatile uint32_t OPTCCR;
  volatile uint32_t PRAR_CUR1;
  volatile uint32_t PRAR_PRG1;
  volatile uint32_t SCAR_CUR1;
  volatile uint32_t SCAR_PRG1;
  volatile uint32_t WPSN_CUR1;
  volatile uint32_t WPSN_PRG1;
  volatile uint32_t BOOT_CUR;
  volatile uint32_t BOOT_PRG;
  uint32_t RESERVED0[2];
  volatile uint32_t CRCCR1;
  volatile uint32_t CRCSADD1;
  volatile uint32_t CRCEADD1;
  volatile uint32_t CRCDATA;
  volatile uint32_t ECC_FA1;
  uint32_t RESERVED1[40];
  volatile uint32_t KEYR2;
  uint32_t RESERVED2;
  volatile uint32_t CR2;
  volatile uint32_t SR2;
  volatile uint32_t CCR2;
  uint32_t RESERVED3[4];
  volatile uint32_t PRAR_CUR2;
  volatile uint32_t PRAR_PRG2;
  volatile uint32_t SCAR_CUR2;
  volatile uint32_t SCAR_PRG2;
  volatile uint32_t WPSN_CUR2;
  volatile uint32_t WPSN_PRG2;
  uint32_t RESERVED4[4];
  volatile uint32_t CRCCR2;
  volatile uint32_t CRCSADD2;
  volatile uint32_t CRCEADD2;
  volatile uint32_t CRCDATA2;
  volatile uint32_t ECC_FA2;
} FLASH_TypeDef;





typedef struct
{
  volatile uint32_t BTCR[8];
} FMC_Bank1_TypeDef;





typedef struct
{
  volatile uint32_t BWTR[7];
} FMC_Bank1E_TypeDef;





typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t RESERVED0;
  volatile uint32_t ECCR2;
} FMC_Bank2_TypeDef;





typedef struct
{
  volatile uint32_t PCR;
  volatile uint32_t SR;
  volatile uint32_t PMEM;
  volatile uint32_t PATT;
  uint32_t RESERVED;
  volatile uint32_t ECCR;
} FMC_Bank3_TypeDef;






typedef struct
{
  volatile uint32_t SDCR[2];
  volatile uint32_t SDTR[2];
  volatile uint32_t SDCMR;
  volatile uint32_t SDRTR;
  volatile uint32_t SDSR;
} FMC_Bank5_6_TypeDef;





typedef struct
{
  volatile uint32_t MODER;
  volatile uint32_t OTYPER;
  volatile uint32_t OSPEEDR;
  volatile uint32_t PUPDR;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t LCKR;
  volatile uint32_t AFR[2];
} GPIO_TypeDef;





typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t OTR;
  volatile uint32_t HSOTR;
} OPAMP_TypeDef;





typedef struct
{
 uint32_t RESERVED1;
 volatile uint32_t PMCR;
 volatile uint32_t EXTICR[4];
 volatile uint32_t CFGR;
 uint32_t RESERVED2;
 volatile uint32_t CCCSR;
 volatile uint32_t CCVR;
 volatile uint32_t CCCR;
 volatile uint32_t PWRCR;
  uint32_t RESERVED3[61];
  volatile uint32_t PKGR;
  uint32_t RESERVED4[118];
 volatile uint32_t UR0;
 volatile uint32_t UR1;
 volatile uint32_t UR2;
 volatile uint32_t UR3;
 volatile uint32_t UR4;
 volatile uint32_t UR5;
 volatile uint32_t UR6;
 volatile uint32_t UR7;
 volatile uint32_t UR8;
 volatile uint32_t UR9;
 volatile uint32_t UR10;
 volatile uint32_t UR11;
 volatile uint32_t UR12;
 volatile uint32_t UR13;
 volatile uint32_t UR14;
 volatile uint32_t UR15;
 volatile uint32_t UR16;
 volatile uint32_t UR17;

} SYSCFG_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t OAR1;
  volatile uint32_t OAR2;
  volatile uint32_t TIMINGR;
  volatile uint32_t TIMEOUTR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t PECR;
  volatile uint32_t RXDR;
  volatile uint32_t TXDR;
} I2C_TypeDef;





typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
  volatile uint32_t WINR;
} IWDG_TypeDef;





typedef struct
{
  volatile uint32_t CONFR0;
  volatile uint32_t CONFR1;
  volatile uint32_t CONFR2;
  volatile uint32_t CONFR3;
  volatile uint32_t CONFR4;
  volatile uint32_t CONFR5;
  volatile uint32_t CONFR6;
  volatile uint32_t CONFR7;
  uint32_t Reserved20[4];
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t CFR;
  uint32_t Reserved3c;
  volatile uint32_t DIR;
  volatile uint32_t DOR;
  uint32_t Reserved48[2];
  volatile uint32_t QMEM0[16];
  volatile uint32_t QMEM1[16];
  volatile uint32_t QMEM2[16];
  volatile uint32_t QMEM3[16];
  volatile uint32_t HUFFMIN[16];
  volatile uint32_t HUFFBASE[32];
  volatile uint32_t HUFFSYMB[84];
  volatile uint32_t DHTMEM[103];
  uint32_t Reserved4FC;
  volatile uint32_t HUFFENC_AC0[88];
  volatile uint32_t HUFFENC_AC1[88];
  volatile uint32_t HUFFENC_DC0[8];
  volatile uint32_t HUFFENC_DC1[8];

} JPEG_TypeDef;





typedef struct
{
  uint32_t RESERVED0[2];
  volatile uint32_t SSCR;
  volatile uint32_t BPCR;
  volatile uint32_t AWCR;
  volatile uint32_t TWCR;
  volatile uint32_t GCR;
  uint32_t RESERVED1[2];
  volatile uint32_t SRCR;
  uint32_t RESERVED2[1];
  volatile uint32_t BCCR;
  uint32_t RESERVED3[1];
  volatile uint32_t IER;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t LIPCR;
  volatile uint32_t CPSR;
  volatile uint32_t CDSR;
} LTDC_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t WHPCR;
  volatile uint32_t WVPCR;
  volatile uint32_t CKCR;
  volatile uint32_t PFCR;
  volatile uint32_t CACR;
  volatile uint32_t DCCR;
  volatile uint32_t BFCR;
  uint32_t RESERVED0[2];
  volatile uint32_t CFBAR;
  volatile uint32_t CFBLR;
  volatile uint32_t CFBLNR;
  uint32_t RESERVED1[3];
  volatile uint32_t CLUTWR;

} LTDC_Layer_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CSR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t CPUCR;
       uint32_t RESERVED0;
  volatile uint32_t D3CR;
       uint32_t RESERVED1;
  volatile uint32_t WKUPCR;
  volatile uint32_t WKUPFR;
  volatile uint32_t WKUPEPR;
} PWR_TypeDef;





typedef struct
{
 volatile uint32_t CR;
 volatile uint32_t HSICFGR;
 volatile uint32_t CRRCR;
 volatile uint32_t CSICFGR;
 volatile uint32_t CFGR;
 uint32_t RESERVED1;
 volatile uint32_t D1CFGR;
 volatile uint32_t D2CFGR;
 volatile uint32_t D3CFGR;
 uint32_t RESERVED2;
 volatile uint32_t PLLCKSELR;
 volatile uint32_t PLLCFGR;
 volatile uint32_t PLL1DIVR;
 volatile uint32_t PLL1FRACR;
 volatile uint32_t PLL2DIVR;
 volatile uint32_t PLL2FRACR;
 volatile uint32_t PLL3DIVR;
 volatile uint32_t PLL3FRACR;
 uint32_t RESERVED3;
 volatile uint32_t D1CCIPR;
 volatile uint32_t D2CCIP1R;
 volatile uint32_t D2CCIP2R;
 volatile uint32_t D3CCIPR;
 uint32_t RESERVED4;
 volatile uint32_t CIER;
 volatile uint32_t CIFR;
 volatile uint32_t CICR;
 uint32_t RESERVED5;
 volatile uint32_t BDCR;
 volatile uint32_t CSR;
 uint32_t RESERVED6;
 volatile uint32_t AHB3RSTR;
 volatile uint32_t AHB1RSTR;
 volatile uint32_t AHB2RSTR;
 volatile uint32_t AHB4RSTR;
 volatile uint32_t APB3RSTR;
 volatile uint32_t APB1LRSTR;
 volatile uint32_t APB1HRSTR;
 volatile uint32_t APB2RSTR;
 volatile uint32_t APB4RSTR;
 volatile uint32_t GCR;
 uint32_t RESERVED8;
 volatile uint32_t D3AMR;
 uint32_t RESERVED11[9];
 volatile uint32_t RSR;
 volatile uint32_t AHB3ENR;
 volatile uint32_t AHB1ENR;
 volatile uint32_t AHB2ENR;
 volatile uint32_t AHB4ENR;
 volatile uint32_t APB3ENR;
 volatile uint32_t APB1LENR;
 volatile uint32_t APB1HENR;
 volatile uint32_t APB2ENR;
 volatile uint32_t APB4ENR;
 uint32_t RESERVED12;
 volatile uint32_t AHB3LPENR;
 volatile uint32_t AHB1LPENR;
 volatile uint32_t AHB2LPENR;
 volatile uint32_t AHB4LPENR;
 volatile uint32_t APB3LPENR;
 volatile uint32_t APB1LLPENR;
 volatile uint32_t APB1HLPENR;
 volatile uint32_t APB2LPENR;
 volatile uint32_t APB4LPENR;
 uint32_t RESERVED13[4];

} RCC_TypeDef;





typedef struct
{
  volatile uint32_t TR;
  volatile uint32_t DR;
  volatile uint32_t CR;
  volatile uint32_t ISR;
  volatile uint32_t PRER;
  volatile uint32_t WUTR;
       uint32_t RESERVED;
  volatile uint32_t ALRMAR;
  volatile uint32_t ALRMBR;
  volatile uint32_t WPR;
  volatile uint32_t SSR;
  volatile uint32_t SHIFTR;
  volatile uint32_t TSTR;
  volatile uint32_t TSDR;
  volatile uint32_t TSSSR;
  volatile uint32_t CALR;
  volatile uint32_t TAMPCR;
  volatile uint32_t ALRMASSR;
  volatile uint32_t ALRMBSSR;
  volatile uint32_t OR;
  volatile uint32_t BKP0R;
  volatile uint32_t BKP1R;
  volatile uint32_t BKP2R;
  volatile uint32_t BKP3R;
  volatile uint32_t BKP4R;
  volatile uint32_t BKP5R;
  volatile uint32_t BKP6R;
  volatile uint32_t BKP7R;
  volatile uint32_t BKP8R;
  volatile uint32_t BKP9R;
  volatile uint32_t BKP10R;
  volatile uint32_t BKP11R;
  volatile uint32_t BKP12R;
  volatile uint32_t BKP13R;
  volatile uint32_t BKP14R;
  volatile uint32_t BKP15R;
  volatile uint32_t BKP16R;
  volatile uint32_t BKP17R;
  volatile uint32_t BKP18R;
  volatile uint32_t BKP19R;
  volatile uint32_t BKP20R;
  volatile uint32_t BKP21R;
  volatile uint32_t BKP22R;
  volatile uint32_t BKP23R;
  volatile uint32_t BKP24R;
  volatile uint32_t BKP25R;
  volatile uint32_t BKP26R;
  volatile uint32_t BKP27R;
  volatile uint32_t BKP28R;
  volatile uint32_t BKP29R;
  volatile uint32_t BKP30R;
  volatile uint32_t BKP31R;
} RTC_TypeDef;





typedef struct
{
  volatile uint32_t GCR;
  uint32_t RESERVED0[16];
  volatile uint32_t PDMCR;
  volatile uint32_t PDMDLY;
} SAI_TypeDef;

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t FRCR;
  volatile uint32_t SLOTR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t CLRFR;
  volatile uint32_t DR;
} SAI_Block_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t IFCR;
  volatile uint32_t DR;
  volatile uint32_t CSR;
  volatile uint32_t DIR;
  uint32_t RESERVED2;
} SPDIFRX_TypeDef;






typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  volatile uint32_t ACKTIME;
  uint32_t RESERVED0[3];
  volatile uint32_t IDMACTRL;
  volatile uint32_t IDMABSIZE;
  volatile uint32_t IDMABASE0;
  volatile uint32_t IDMABASE1;
  uint32_t RESERVED1[8];
  volatile uint32_t FIFO;
  uint32_t RESERVED2[222];
  volatile uint32_t IPVR;
} SDMMC_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
} DLYB_TypeDef;





typedef struct
{
  volatile uint32_t R[32];
  volatile uint32_t RLR[32];
  volatile uint32_t C1IER;
  volatile uint32_t C1ICR;
  volatile uint32_t C1ISR;
  volatile uint32_t C1MISR;
  uint32_t Reserved[12];
  volatile uint32_t CR;
  volatile uint32_t KEYR;

} HSEM_TypeDef;

typedef struct
{
  volatile uint32_t IER;
  volatile uint32_t ICR;
  volatile uint32_t ISR;
  volatile uint32_t MISR;
} HSEM_Common_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CFG1;
  volatile uint32_t CFG2;
  volatile uint32_t IER;
  volatile uint32_t SR;
  volatile uint32_t IFCR;
  uint32_t RESERVED0;
  volatile uint32_t TXDR;
  uint32_t RESERVED1[3];
  volatile uint32_t RXDR;
  uint32_t RESERVED2[3];
  volatile uint32_t CRCPOLY;
  volatile uint32_t TXCRC;
  volatile uint32_t RXCRC;
  volatile uint32_t UDRDR;
  volatile uint32_t I2SCFGR;

} SPI_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t DCR;
  volatile uint32_t SR;
  volatile uint32_t FCR;
  volatile uint32_t DLR;
  volatile uint32_t CCR;
  volatile uint32_t AR;
  volatile uint32_t ABR;
  volatile uint32_t DR;
  volatile uint32_t PSMKR;
  volatile uint32_t PSMAR;
  volatile uint32_t PIR;
  volatile uint32_t LPTR;
} QUADSPI_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMCR;
  volatile uint32_t DIER;
  volatile uint32_t SR;
  volatile uint32_t EGR;
  volatile uint32_t CCMR1;
  volatile uint32_t CCMR2;
  volatile uint32_t CCER;
  volatile uint32_t CNT;
  volatile uint32_t PSC;
  volatile uint32_t ARR;
  volatile uint32_t RCR;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t BDTR;
  volatile uint32_t DCR;
  volatile uint32_t DMAR;
  uint32_t RESERVED1;
  volatile uint32_t CCMR3;
  volatile uint32_t CCR5;
  volatile uint32_t CCR6;
  volatile uint32_t AF1;
  volatile uint32_t AF2;
  volatile uint32_t TISEL;
} TIM_TypeDef;




typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t CFGR;
  volatile uint32_t CR;
  volatile uint32_t CMP;
  volatile uint32_t ARR;
  volatile uint32_t CNT;
  uint32_t RESERVED1;
  volatile uint32_t CFGR2;
} LPTIM_TypeDef;




typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t ICFR;
  volatile uint32_t OR;
} COMPOPT_TypeDef;

typedef struct
{
  volatile uint32_t CFGR;
} COMP_TypeDef;

typedef struct
{
  volatile uint32_t CFGR;
} COMP_Common_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t BRR;
  volatile uint32_t GTPR;
  volatile uint32_t RTOR;
  volatile uint32_t RQR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t RDR;
  volatile uint32_t TDR;
  volatile uint32_t PRESC;
} USART_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t BRR;
    uint32_t RESERVED1;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t RFL;
  volatile uint32_t TDR;
  volatile uint32_t RDR;
  volatile uint32_t OR;
} SWPMI_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t FAR;
  volatile uint32_t FDRL;
  volatile uint32_t FDRH;
  volatile uint32_t FECR;
} RAMECC_MonitorTypeDef;

typedef struct
{
  volatile uint32_t IER;
} RAMECC_TypeDef;
# 1665 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t DIN;
  volatile uint32_t DOUT;
  volatile uint32_t DMACR;
  volatile uint32_t IMSCR;
  volatile uint32_t RISR;
  volatile uint32_t MISR;
  volatile uint32_t K0LR;
  volatile uint32_t K0RR;
  volatile uint32_t K1LR;
  volatile uint32_t K1RR;
  volatile uint32_t K2LR;
  volatile uint32_t K2RR;
  volatile uint32_t K3LR;
  volatile uint32_t K3RR;
  volatile uint32_t IV0LR;
  volatile uint32_t IV0RR;
  volatile uint32_t IV1LR;
  volatile uint32_t IV1RR;
  volatile uint32_t CSGCMCCM0R;
  volatile uint32_t CSGCMCCM1R;
  volatile uint32_t CSGCMCCM2R;
  volatile uint32_t CSGCMCCM3R;
  volatile uint32_t CSGCMCCM4R;
  volatile uint32_t CSGCMCCM5R;
  volatile uint32_t CSGCMCCM6R;
  volatile uint32_t CSGCMCCM7R;
  volatile uint32_t CSGCM0R;
  volatile uint32_t CSGCM1R;
  volatile uint32_t CSGCM2R;
  volatile uint32_t CSGCM3R;
  volatile uint32_t CSGCM4R;
  volatile uint32_t CSGCM5R;
  volatile uint32_t CSGCM6R;
  volatile uint32_t CSGCM7R;
} CRYP_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t DIN;
  volatile uint32_t STR;
  volatile uint32_t HR[5];
  volatile uint32_t IMR;
  volatile uint32_t SR;
       uint32_t RESERVED[52];
  volatile uint32_t CSR[54];
} HASH_TypeDef;





typedef struct
{
  volatile uint32_t HR[8];
} HASH_DIGEST_TypeDef;






typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MISR;
  volatile uint32_t MICR;
  volatile uint32_t MDIER;
  volatile uint32_t MCNTR;
  volatile uint32_t MPER;
  volatile uint32_t MREP;
  volatile uint32_t MCMP1R;
  uint32_t RESERVED0;
  volatile uint32_t MCMP2R;
  volatile uint32_t MCMP3R;
  volatile uint32_t MCMP4R;
  uint32_t RESERVED1[20];
}HRTIM_Master_TypeDef;


typedef struct
{
  volatile uint32_t TIMxCR;
  volatile uint32_t TIMxISR;
  volatile uint32_t TIMxICR;
  volatile uint32_t TIMxDIER;
  volatile uint32_t CNTxR;
  volatile uint32_t PERxR;
  volatile uint32_t REPxR;
  volatile uint32_t CMP1xR;
  volatile uint32_t CMP1CxR;
  volatile uint32_t CMP2xR;
  volatile uint32_t CMP3xR;
  volatile uint32_t CMP4xR;
  volatile uint32_t CPT1xR;
  volatile uint32_t CPT2xR;
  volatile uint32_t DTxR;
  volatile uint32_t SETx1R;
  volatile uint32_t RSTx1R;
  volatile uint32_t SETx2R;
  volatile uint32_t RSTx2R;
  volatile uint32_t EEFxR1;
  volatile uint32_t EEFxR2;
  volatile uint32_t RSTxR;
  volatile uint32_t CHPxR;
  volatile uint32_t CPT1xCR;
  volatile uint32_t CPT2xCR;
  volatile uint32_t OUTxR;
  volatile uint32_t FLTxR;
  uint32_t RESERVED0[5];
}HRTIM_Timerx_TypeDef;


typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t OENR;
  volatile uint32_t ODISR;
  volatile uint32_t ODSR;
  volatile uint32_t BMCR;
  volatile uint32_t BMTRGR;
  volatile uint32_t BMCMPR;
  volatile uint32_t BMPER;
  volatile uint32_t EECR1;
  volatile uint32_t EECR2;
  volatile uint32_t EECR3;
  volatile uint32_t ADC1R;
  volatile uint32_t ADC2R;
  volatile uint32_t ADC3R;
  volatile uint32_t ADC4R;
  volatile uint32_t RESERVED0;
  volatile uint32_t FLTINR1;
  volatile uint32_t FLTINR2;
  volatile uint32_t BDMUPR;
  volatile uint32_t BDTAUPR;
  volatile uint32_t BDTBUPR;
  volatile uint32_t BDTCUPR;
  volatile uint32_t BDTDUPR;
  volatile uint32_t BDTEUPR;
  volatile uint32_t BDMADR;
}HRTIM_Common_TypeDef;


typedef struct {
  HRTIM_Master_TypeDef sMasterRegs;
  HRTIM_Timerx_TypeDef sTimerxRegs[5];
  uint32_t RESERVED0[32];
  HRTIM_Common_TypeDef sCommonRegs;
}HRTIM_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t DR;
} RNG_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t WRFR;
  volatile uint32_t CWRFR;
  volatile uint32_t RDFR;
  volatile uint32_t CRDFR;
  volatile uint32_t SR;
  volatile uint32_t CLRFR;
  uint32_t RESERVED[57];
  volatile uint32_t DINR0;
  volatile uint32_t DINR1;
  volatile uint32_t DINR2;
  volatile uint32_t DINR3;
  volatile uint32_t DINR4;
  volatile uint32_t DINR5;
  volatile uint32_t DINR6;
  volatile uint32_t DINR7;
  volatile uint32_t DINR8;
  volatile uint32_t DINR9;
  volatile uint32_t DINR10;
  volatile uint32_t DINR11;
  volatile uint32_t DINR12;
  volatile uint32_t DINR13;
  volatile uint32_t DINR14;
  volatile uint32_t DINR15;
  volatile uint32_t DINR16;
  volatile uint32_t DINR17;
  volatile uint32_t DINR18;
  volatile uint32_t DINR19;
  volatile uint32_t DINR20;
  volatile uint32_t DINR21;
  volatile uint32_t DINR22;
  volatile uint32_t DINR23;
  volatile uint32_t DINR24;
  volatile uint32_t DINR25;
  volatile uint32_t DINR26;
  volatile uint32_t DINR27;
  volatile uint32_t DINR28;
  volatile uint32_t DINR29;
  volatile uint32_t DINR30;
  volatile uint32_t DINR31;
  volatile uint32_t DOUTR0;
  volatile uint32_t DOUTR1;
  volatile uint32_t DOUTR2;
  volatile uint32_t DOUTR3;
  volatile uint32_t DOUTR4;
  volatile uint32_t DOUTR5;
  volatile uint32_t DOUTR6;
  volatile uint32_t DOUTR7;
  volatile uint32_t DOUTR8;
  volatile uint32_t DOUTR9;
  volatile uint32_t DOUTR10;
  volatile uint32_t DOUTR11;
  volatile uint32_t DOUTR12;
  volatile uint32_t DOUTR13;
  volatile uint32_t DOUTR14;
  volatile uint32_t DOUTR15;
  volatile uint32_t DOUTR16;
  volatile uint32_t DOUTR17;
  volatile uint32_t DOUTR18;
  volatile uint32_t DOUTR19;
  volatile uint32_t DOUTR20;
  volatile uint32_t DOUTR21;
  volatile uint32_t DOUTR22;
  volatile uint32_t DOUTR23;
  volatile uint32_t DOUTR24;
  volatile uint32_t DOUTR25;
  volatile uint32_t DOUTR26;
  volatile uint32_t DOUTR27;
  volatile uint32_t DOUTR28;
  volatile uint32_t DOUTR29;
  volatile uint32_t DOUTR30;
  volatile uint32_t DOUTR31;
} MDIOS_TypeDef;





typedef struct
{
 volatile uint32_t GOTGCTL;
  volatile uint32_t GOTGINT;
  volatile uint32_t GAHBCFG;
  volatile uint32_t GUSBCFG;
  volatile uint32_t GRSTCTL;
  volatile uint32_t GINTSTS;
  volatile uint32_t GINTMSK;
  volatile uint32_t GRXSTSR;
  volatile uint32_t GRXSTSP;
  volatile uint32_t GRXFSIZ;
  volatile uint32_t DIEPTXF0_HNPTXFSIZ;
  volatile uint32_t HNPTXSTS;
  uint32_t Reserved30[2];
  volatile uint32_t GCCFG;
  volatile uint32_t CID;
  volatile uint32_t GSNPSID;
  volatile uint32_t GHWCFG1;
  volatile uint32_t GHWCFG2;
  volatile uint32_t GHWCFG3;
  uint32_t Reserved6;
  volatile uint32_t GLPMCFG;
  volatile uint32_t GPWRDN;
  volatile uint32_t GDFIFOCFG;
   volatile uint32_t GADPCTL;
    uint32_t Reserved43[39];
  volatile uint32_t HPTXFSIZ;
  volatile uint32_t DIEPTXF[0x0F];
} USB_OTG_GlobalTypeDef;





typedef struct
{
  volatile uint32_t DCFG;
  volatile uint32_t DCTL;
  volatile uint32_t DSTS;
  uint32_t Reserved0C;
  volatile uint32_t DIEPMSK;
  volatile uint32_t DOEPMSK;
  volatile uint32_t DAINT;
  volatile uint32_t DAINTMSK;
  uint32_t Reserved20;
  uint32_t Reserved9;
  volatile uint32_t DVBUSDIS;
  volatile uint32_t DVBUSPULSE;
  volatile uint32_t DTHRCTL;
  volatile uint32_t DIEPEMPMSK;
  volatile uint32_t DEACHINT;
  volatile uint32_t DEACHMSK;
  uint32_t Reserved40;
  volatile uint32_t DINEP1MSK;
  uint32_t Reserved44[15];
  volatile uint32_t DOUTEP1MSK;
} USB_OTG_DeviceTypeDef;





typedef struct
{
  volatile uint32_t DIEPCTL;
  uint32_t Reserved04;
  volatile uint32_t DIEPINT;
  uint32_t Reserved0C;
  volatile uint32_t DIEPTSIZ;
  volatile uint32_t DIEPDMA;
  volatile uint32_t DTXFSTS;
  uint32_t Reserved18;
} USB_OTG_INEndpointTypeDef;





typedef struct
{
  volatile uint32_t DOEPCTL;
  uint32_t Reserved04;
  volatile uint32_t DOEPINT;
  uint32_t Reserved0C;
  volatile uint32_t DOEPTSIZ;
  volatile uint32_t DOEPDMA;
  uint32_t Reserved18[2];
} USB_OTG_OUTEndpointTypeDef;





typedef struct
{
  volatile uint32_t HCFG;
  volatile uint32_t HFIR;
  volatile uint32_t HFNUM;
  uint32_t Reserved40C;
  volatile uint32_t HPTXSTS;
  volatile uint32_t HAINT;
  volatile uint32_t HAINTMSK;
} USB_OTG_HostTypeDef;




typedef struct
{
  volatile uint32_t HCCHAR;
  volatile uint32_t HCSPLT;
  volatile uint32_t HCINT;
  volatile uint32_t HCINTMSK;
  volatile uint32_t HCTSIZ;
  volatile uint32_t HCDMA;
  uint32_t Reserved[2];
} USB_OTG_HostChannelTypeDef;
# 2048 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h750xx.h"
typedef struct
{
  uint32_t RESERVED0[2036];
  volatile uint32_t AXI_PERIPH_ID_4;
  uint32_t AXI_PERIPH_ID_5;
  uint32_t AXI_PERIPH_ID_6;
  uint32_t AXI_PERIPH_ID_7;
  volatile uint32_t AXI_PERIPH_ID_0;
  volatile uint32_t AXI_PERIPH_ID_1;
  volatile uint32_t AXI_PERIPH_ID_2;
  volatile uint32_t AXI_PERIPH_ID_3;
  volatile uint32_t AXI_COMP_ID_0;
  volatile uint32_t AXI_COMP_ID_1;
  volatile uint32_t AXI_COMP_ID_2;
  volatile uint32_t AXI_COMP_ID_3;
  uint32_t RESERVED1[2];
  volatile uint32_t AXI_TARG1_FN_MOD_ISS_BM;
  uint32_t RESERVED2[6];
  volatile uint32_t AXI_TARG1_FN_MOD2;
  uint32_t RESERVED3;
  volatile uint32_t AXI_TARG1_FN_MOD_LB;
  uint32_t RESERVED4[54];
  volatile uint32_t AXI_TARG1_FN_MOD;
  uint32_t RESERVED5[959];
  volatile uint32_t AXI_TARG2_FN_MOD_ISS_BM;
  uint32_t RESERVED6[6];
  volatile uint32_t AXI_TARG2_FN_MOD2;
  uint32_t RESERVED7;
  volatile uint32_t AXI_TARG2_FN_MOD_LB;
  uint32_t RESERVED8[54];
  volatile uint32_t AXI_TARG2_FN_MOD;
  uint32_t RESERVED9[959];
  volatile uint32_t AXI_TARG3_FN_MOD_ISS_BM;
  uint32_t RESERVED10[1023];
  volatile uint32_t AXI_TARG4_FN_MOD_ISS_BM;
  uint32_t RESERVED11[1023];
  volatile uint32_t AXI_TARG5_FN_MOD_ISS_BM;
  uint32_t RESERVED12[1023];
  volatile uint32_t AXI_TARG6_FN_MOD_ISS_BM;
  uint32_t RESERVED13[1023];
  volatile uint32_t AXI_TARG7_FN_MOD_ISS_BM;
  uint32_t RESERVED14[6];
  volatile uint32_t AXI_TARG7_FN_MOD2;
  uint32_t RESERVED15;
  volatile uint32_t AXI_TARG7_FN_MOD_LB;
  uint32_t RESERVED16[54];
  volatile uint32_t AXI_TARG7_FN_MOD;
  uint32_t RESERVED17[59334];
  volatile uint32_t AXI_INI1_FN_MOD2;
  volatile uint32_t AXI_INI1_FN_MOD_AHB;
  uint32_t RESERVED18[53];
  volatile uint32_t AXI_INI1_READ_QOS;
  volatile uint32_t AXI_INI1_WRITE_QOS;
  volatile uint32_t AXI_INI1_FN_MOD;
  uint32_t RESERVED19[1021];
  volatile uint32_t AXI_INI2_READ_QOS;
  volatile uint32_t AXI_INI2_WRITE_QOS;
  volatile uint32_t AXI_INI2_FN_MOD;
  uint32_t RESERVED20[966];
  volatile uint32_t AXI_INI3_FN_MOD2;
  volatile uint32_t AXI_INI3_FN_MOD_AHB;
  uint32_t RESERVED21[53];
  volatile uint32_t AXI_INI3_READ_QOS;
  volatile uint32_t AXI_INI3_WRITE_QOS;
  volatile uint32_t AXI_INI3_FN_MOD;
  uint32_t RESERVED22[1021];
  volatile uint32_t AXI_INI4_READ_QOS;
  volatile uint32_t AXI_INI4_WRITE_QOS;
  volatile uint32_t AXI_INI4_FN_MOD;
  uint32_t RESERVED23[1021];
  volatile uint32_t AXI_INI5_READ_QOS;
  volatile uint32_t AXI_INI5_WRITE_QOS;
  volatile uint32_t AXI_INI5_FN_MOD;
  uint32_t RESERVED24[1021];
  volatile uint32_t AXI_INI6_READ_QOS;
  volatile uint32_t AXI_INI6_WRITE_QOS;
  volatile uint32_t AXI_INI6_FN_MOD;

} GPV_TypeDef;
# 130 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 2
# 179 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
typedef enum
{
  RESET = 0,
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum
{
  DISABLE = 0,
  ENABLE = !DISABLE
} FunctionalState;


typedef enum
{
  SUCCESS = 0,
  ERROR = !SUCCESS
} ErrorStatus;
# 282 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 1
# 283 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 2
# 30 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h" 1
# 31 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2
# 1 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 1 3
# 38 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
  typedef signed int ptrdiff_t;
# 53 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
    typedef unsigned int size_t;
# 71 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
      typedef unsigned short wchar_t;
# 32 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2
# 1 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 1 3
# 157 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double , double );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float , float );







extern __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float );
extern __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double );



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}





static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
# 266 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
  typedef float float_t;
  typedef double double_t;
# 282 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern const int math_errhandling;







extern __attribute__((__nothrow__)) double acos(double );



extern __attribute__((__nothrow__)) double asin(double );





extern __attribute__((__nothrow__)) __attribute__((__const__)) double atan(double );



extern __attribute__((__nothrow__)) double atan2(double , double );





extern __attribute__((__nothrow__)) double cos(double );




extern __attribute__((__nothrow__)) double sin(double );





extern void __use_accurate_range_reduction(void);



extern __attribute__((__nothrow__)) double tan(double );





extern __attribute__((__nothrow__)) double cosh(double );




extern __attribute__((__nothrow__)) double sinh(double );






extern __attribute__((__nothrow__)) __attribute__((__const__)) double tanh(double );



extern __attribute__((__nothrow__)) double exp(double );






extern __attribute__((__nothrow__)) double frexp(double , int * ) __attribute__((__nonnull__(2)));







extern __attribute__((__nothrow__)) double ldexp(double , int );




extern __attribute__((__nothrow__)) double log(double );





extern __attribute__((__nothrow__)) double log10(double );



extern __attribute__((__nothrow__)) double modf(double , double * ) __attribute__((__nonnull__(2)));





extern __attribute__((__nothrow__)) double pow(double , double );






extern __attribute__((__nothrow__)) double sqrt(double );






    __attribute__((__always_inline__)) static double __sqrt(double d) {
      __asm__ __volatile__(



      "vsqrt.f64 %0, %0"

      : "+w"(d));
      return d;
    }

    static __inline double _sqrt(double __x) { return __sqrt(__x); }





    __attribute__((__always_inline__)) static float __sqrtf(float f) {
      __asm__ __volatile__(



      "vsqrt.f32 %0, %0"

      : "+w"(f));
      return f;
    }

    static __inline float _sqrtf(float __x) { return __sqrtf(__x); }
# 435 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) double ceil(double );


extern __attribute__((__nothrow__)) __attribute__((__const__)) double fabs(double );



extern __attribute__((__nothrow__)) __attribute__((__const__)) double floor(double );



extern __attribute__((__nothrow__)) double fmod(double , double );
# 467 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double acosh(double );



extern __attribute__((__nothrow__)) double asinh(double );



extern __attribute__((__nothrow__)) double atanh(double );



extern __attribute__((__nothrow__)) double cbrt(double );



static __inline __attribute__((__nothrow__)) __attribute__((__const__)) double copysign(double __x, double __y)



{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
static __inline __attribute__((__nothrow__)) __attribute__((__const__)) float copysignf(float __x, float __y)



{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __attribute__((__nothrow__)) double erf(double );



extern __attribute__((__nothrow__)) double erfc(double );



extern __attribute__((__nothrow__)) double expm1(double );
# 533 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double hypot(double , double );






extern __attribute__((__nothrow__)) int ilogb(double );



extern __attribute__((__nothrow__)) int ilogbf(float );



extern __attribute__((__nothrow__)) int ilogbl(long double );
# 646 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double lgamma (double );




extern __attribute__((__nothrow__)) double log1p(double );



extern __attribute__((__nothrow__)) double logb(double );



extern __attribute__((__nothrow__)) float logbf(float );



extern __attribute__((__nothrow__)) long double logbl(long double );



extern __attribute__((__nothrow__)) double nextafter(double , double );




extern __attribute__((__nothrow__)) float nextafterf(float , float );




extern __attribute__((__nothrow__)) long double nextafterl(long double , long double );




extern __attribute__((__nothrow__)) double nexttoward(double , long double );




extern __attribute__((__nothrow__)) float nexttowardf(float , long double );




extern __attribute__((__nothrow__)) long double nexttowardl(long double , long double );




extern __attribute__((__nothrow__)) double remainder(double , double );



extern __attribute__((__nothrow__)) __attribute__((__const__)) double rint(double );



extern __attribute__((__nothrow__)) double scalbln(double , long int );



extern __attribute__((__nothrow__)) float scalblnf(float , long int );



extern __attribute__((__nothrow__)) long double scalblnl(long double , long int );



extern __attribute__((__nothrow__)) double scalbn(double , int );



extern __attribute__((__nothrow__)) float scalbnf(float , int );



extern __attribute__((__nothrow__)) long double scalbnl(long double , int );
# 740 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fabsf(float);
static __inline __attribute__((__nothrow__)) __attribute__((__const__)) float _fabsf(float __f) { return fabsf(__f); }
extern __attribute__((__nothrow__)) float sinf(float );
extern __attribute__((__nothrow__)) float cosf(float );
extern __attribute__((__nothrow__)) float tanf(float );
extern __attribute__((__nothrow__)) float acosf(float );
extern __attribute__((__nothrow__)) float asinf(float );
extern __attribute__((__nothrow__)) float atanf(float );
extern __attribute__((__nothrow__)) float atan2f(float , float );
extern __attribute__((__nothrow__)) float sinhf(float );
extern __attribute__((__nothrow__)) float coshf(float );
extern __attribute__((__nothrow__)) float tanhf(float );
extern __attribute__((__nothrow__)) float expf(float );
extern __attribute__((__nothrow__)) float logf(float );
extern __attribute__((__nothrow__)) float log10f(float );
extern __attribute__((__nothrow__)) float powf(float , float );
extern __attribute__((__nothrow__)) float sqrtf(float );
extern __attribute__((__nothrow__)) float ldexpf(float , int );
extern __attribute__((__nothrow__)) float frexpf(float , int * ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) __attribute__((__const__)) float ceilf(float );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float floorf(float );
extern __attribute__((__nothrow__)) float fmodf(float , float );
extern __attribute__((__nothrow__)) float modff(float , float * ) __attribute__((__nonnull__(2)));
# 780 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
__attribute__((__nothrow__)) long double acosl(long double );
__attribute__((__nothrow__)) long double asinl(long double );
__attribute__((__nothrow__)) long double atanl(long double );
__attribute__((__nothrow__)) long double atan2l(long double , long double );
__attribute__((__nothrow__)) long double ceill(long double );
__attribute__((__nothrow__)) long double cosl(long double );
__attribute__((__nothrow__)) long double coshl(long double );
__attribute__((__nothrow__)) long double expl(long double );
__attribute__((__nothrow__)) long double fabsl(long double );
__attribute__((__nothrow__)) long double floorl(long double );
__attribute__((__nothrow__)) long double fmodl(long double , long double );
__attribute__((__nothrow__)) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__attribute__((__nothrow__)) long double ldexpl(long double , int );
__attribute__((__nothrow__)) long double logl(long double );
__attribute__((__nothrow__)) long double log10l(long double );
__attribute__((__nothrow__)) long double modfl(long double , long double * ) __attribute__((__nonnull__(2)));
__attribute__((__nothrow__)) long double powl(long double , long double );
__attribute__((__nothrow__)) long double sinl(long double );
__attribute__((__nothrow__)) long double sinhl(long double );
__attribute__((__nothrow__)) long double sqrtl(long double );
__attribute__((__nothrow__)) long double tanl(long double );
__attribute__((__nothrow__)) long double tanhl(long double );






extern __attribute__((__nothrow__)) float acoshf(float );
__attribute__((__nothrow__)) long double acoshl(long double );
extern __attribute__((__nothrow__)) float asinhf(float );
__attribute__((__nothrow__)) long double asinhl(long double );
extern __attribute__((__nothrow__)) float atanhf(float );
__attribute__((__nothrow__)) long double atanhl(long double );
__attribute__((__nothrow__)) long double copysignl(long double , long double );
extern __attribute__((__nothrow__)) float cbrtf(float );
__attribute__((__nothrow__)) long double cbrtl(long double );
extern __attribute__((__nothrow__)) float erff(float );
__attribute__((__nothrow__)) long double erfl(long double );
extern __attribute__((__nothrow__)) float erfcf(float );
__attribute__((__nothrow__)) long double erfcl(long double );
extern __attribute__((__nothrow__)) float expm1f(float );
__attribute__((__nothrow__)) long double expm1l(long double );
extern __attribute__((__nothrow__)) float log1pf(float );
__attribute__((__nothrow__)) long double log1pl(long double );
extern __attribute__((__nothrow__)) float hypotf(float , float );
__attribute__((__nothrow__)) long double hypotl(long double , long double );
extern __attribute__((__nothrow__)) float lgammaf(float );
__attribute__((__nothrow__)) long double lgammal(long double );
extern __attribute__((__nothrow__)) float remainderf(float , float );
__attribute__((__nothrow__)) long double remainderl(long double , long double );
extern __attribute__((__nothrow__)) float rintf(float );
__attribute__((__nothrow__)) long double rintl(long double );







extern __attribute__((__nothrow__)) double exp2(double );
extern __attribute__((__nothrow__)) float exp2f(float );
__attribute__((__nothrow__)) long double exp2l(long double );
extern __attribute__((__nothrow__)) double fdim(double , double );
extern __attribute__((__nothrow__)) float fdimf(float , float );
__attribute__((__nothrow__)) long double fdiml(long double , long double );
# 855 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double fma(double , double , double );
extern __attribute__((__nothrow__)) float fmaf(float , float , float );

static __inline __attribute__((__nothrow__)) long double fmal(long double __x, long double __y, long double __z) { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double fmax(double , double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fmaxf(float , float );
__attribute__((__nothrow__)) long double fmaxl(long double , long double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) double fmin(double , double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fminf(float , float );
__attribute__((__nothrow__)) long double fminl(long double , long double );
extern __attribute__((__nothrow__)) double log2(double );
extern __attribute__((__nothrow__)) float log2f(float );
__attribute__((__nothrow__)) long double log2l(long double );
extern __attribute__((__nothrow__)) long lrint(double );
extern __attribute__((__nothrow__)) long lrintf(float );

static __inline __attribute__((__nothrow__)) long lrintl(long double __x) { return lrint((double)__x); }


extern __attribute__((__nothrow__)) long long llrint(double );
extern __attribute__((__nothrow__)) long long llrintf(float );

static __inline __attribute__((__nothrow__)) long long llrintl(long double __x) { return llrint((double)__x); }


extern __attribute__((__nothrow__)) long lround(double );
extern __attribute__((__nothrow__)) long lroundf(float );

static __inline __attribute__((__nothrow__)) long lroundl(long double __x) { return lround((double)__x); }


extern __attribute__((__nothrow__)) long long llround(double );
extern __attribute__((__nothrow__)) long long llroundf(float );

static __inline __attribute__((__nothrow__)) long long llroundl(long double __x) { return llround((double)__x); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double nan(const char * );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float nanf(const char * );

static __inline __attribute__((__nothrow__)) __attribute__((__const__)) long double nanl(const char *__t) { return (long double)nan(__t); }
# 908 "D:\\Program\\Keil\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) double nearbyint(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float nearbyintf(float );
__attribute__((__nothrow__)) long double nearbyintl(long double );
extern __attribute__((__nothrow__)) double remquo(double , double , int * );
extern __attribute__((__nothrow__)) float remquof(float , float , int * );

static __inline long double remquol(long double __x, long double __y, int *__q) { return (long double)remquo((double)__x, (double)__y, __q); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double round(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float roundf(float );
__attribute__((__nothrow__)) long double roundl(long double );
extern __attribute__((__nothrow__)) double tgamma(double );
extern __attribute__((__nothrow__)) float tgammaf(float );
__attribute__((__nothrow__)) long double tgammal(long double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) double trunc(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float truncf(float );
__attribute__((__nothrow__)) long double truncl(long double );
# 33 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2






typedef enum
{
  HAL_OK = 0x00,
  HAL_ERROR = 0x01,
  HAL_BUSY = 0x02,
  HAL_TIMEOUT = 0x03
} HAL_StatusTypeDef;




typedef enum
{
  HAL_UNLOCKED = 0x00,
  HAL_LOCKED = 0x01
} HAL_LockTypeDef;
# 28 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 2
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
typedef struct
{
  uint32_t PLLState;


  uint32_t PLLSource;


  uint32_t PLLM;


  uint32_t PLLN;




  uint32_t PLLP;



  uint32_t PLLQ;


  uint32_t PLLR;

  uint32_t PLLRGE;

  uint32_t PLLVCOSEL;


  uint32_t PLLFRACN;


} RCC_PLLInitTypeDef;




typedef struct
{
  uint32_t OscillatorType;


  uint32_t HSEState;


  uint32_t LSEState;


  uint32_t HSIState;


  uint32_t HSICalibrationValue;



  uint32_t LSIState;


  uint32_t HSI48State;


  uint32_t CSIState;


  uint32_t CSICalibrationValue;



  RCC_PLLInitTypeDef PLL;

} RCC_OscInitTypeDef;




typedef struct
{
  uint32_t ClockType;


  uint32_t SYSCLKSource;


  uint32_t SYSCLKDivider;


  uint32_t AHBCLKDivider;


  uint32_t APB3CLKDivider;


  uint32_t APB1CLKDivider;

  uint32_t APB2CLKDivider;

  uint32_t APB4CLKDivider;

} RCC_ClkInitTypeDef;
# 7958 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
typedef struct
{

  uint32_t PLL2M;


  uint32_t PLL2N;




  uint32_t PLL2P;



  uint32_t PLL2Q;


  uint32_t PLL2R;

  uint32_t PLL2RGE;

  uint32_t PLL2VCOSEL;


  uint32_t PLL2FRACN;

} RCC_PLL2InitTypeDef;




typedef struct
{

  uint32_t PLL3M;


  uint32_t PLL3N;




  uint32_t PLL3P;



  uint32_t PLL3Q;


  uint32_t PLL3R;

  uint32_t PLL3RGE;

  uint32_t PLL3VCOSEL;


  uint32_t PLL3FRACN;

} RCC_PLL3InitTypeDef;




typedef struct
{
  uint32_t PLL1_P_Frequency;
  uint32_t PLL1_Q_Frequency;
  uint32_t PLL1_R_Frequency;
} PLL1_ClocksTypeDef;




typedef struct
{
  uint32_t PLL2_P_Frequency;
  uint32_t PLL2_Q_Frequency;
  uint32_t PLL2_R_Frequency;
} PLL2_ClocksTypeDef;




typedef struct
{
  uint32_t PLL3_P_Frequency;
  uint32_t PLL3_Q_Frequency;
  uint32_t PLL3_R_Frequency;
} PLL3_ClocksTypeDef;





typedef struct
{
  uint64_t PeriphClockSelection;


  RCC_PLL2InitTypeDef PLL2;


  RCC_PLL3InitTypeDef PLL3;


  uint32_t FmcClockSelection;



  uint32_t QspiClockSelection;
# 170 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t SdmmcClockSelection;


  uint32_t CkperClockSelection;


  uint32_t Sai1ClockSelection;



  uint32_t Sai23ClockSelection;
# 194 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t Spi123ClockSelection;


  uint32_t Spi45ClockSelection;


  uint32_t SpdifrxClockSelection;


  uint32_t Dfsdm1ClockSelection;
# 212 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t FdcanClockSelection;



  uint32_t Swpmi1ClockSelection;


  uint32_t Usart234578ClockSelection;


  uint32_t Usart16ClockSelection;


  uint32_t RngClockSelection;






  uint32_t I2c123ClockSelection;



  uint32_t UsbClockSelection;


  uint32_t CecClockSelection;


  uint32_t Lptim1ClockSelection;


  uint32_t Lpuart1ClockSelection;


  uint32_t I2c4ClockSelection;


  uint32_t Lptim2ClockSelection;


  uint32_t Lptim345ClockSelection;


  uint32_t AdcClockSelection;


  uint32_t Sai4AClockSelection;


  uint32_t Sai4BClockSelection;



  uint32_t Spi6ClockSelection;


  uint32_t RTCClockSelection;



  uint32_t Hrtim1ClockSelection;



  uint32_t TIMPresSelection;

} RCC_PeriphCLKInitTypeDef;
# 293 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
typedef struct
{
  uint32_t Prescaler;


  uint32_t Source;


  uint32_t Polarity;


  uint32_t ReloadValue;



  uint32_t ErrorLimitValue;


  uint32_t HSI48CalibrationValue;


} RCC_CRSInitTypeDef;




typedef struct
{
  uint32_t ReloadValue;


  uint32_t HSI48CalibrationValue;


  uint32_t FreqErrorCapture;



  uint32_t FreqErrorDirection;




} RCC_CRSSynchroInfoTypeDef;
# 3901 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint64_t PeriphClk);
uint32_t HAL_RCCEx_GetD1PCLK1Freq(void);
uint32_t HAL_RCCEx_GetD3PCLK1Freq(void);
uint32_t HAL_RCCEx_GetD1SysClockFreq(void);
void HAL_RCCEx_GetPLL1ClockFreq(PLL1_ClocksTypeDef *PLL1_Clocks);
void HAL_RCCEx_GetPLL2ClockFreq(PLL2_ClocksTypeDef *PLL2_Clocks);
void HAL_RCCEx_GetPLL3ClockFreq(PLL3_ClocksTypeDef *PLL3_Clocks);







void HAL_RCCEx_WakeUpStopCLKConfig(uint32_t WakeUpClk);
void HAL_RCCEx_KerWakeUpStopCLKConfig(uint32_t WakeUpClk);
void HAL_RCCEx_EnableLSECSS(void);
void HAL_RCCEx_DisableLSECSS(void);
void HAL_RCCEx_EnableLSECSS_IT(void);
void HAL_RCCEx_LSECSS_IRQHandler(void);
void HAL_RCCEx_LSECSS_Callback(void);




void HAL_RCCEx_WWDGxSysResetConfig(uint32_t RCC_WWDGx);
# 3939 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
void HAL_RCCEx_CRSConfig(RCC_CRSInitTypeDef *pInit);
void HAL_RCCEx_CRSSoftwareSynchronizationGenerate(void);
void HAL_RCCEx_CRSGetSynchronizationInfo(RCC_CRSSynchroInfoTypeDef *pSynchroInfo);
uint32_t HAL_RCCEx_CRSWaitSynchronization(uint32_t Timeout);
void HAL_RCCEx_CRS_IRQHandler(void);
void HAL_RCCEx_CRS_SyncOkCallback(void);
void HAL_RCCEx_CRS_SyncWarnCallback(void);
void HAL_RCCEx_CRS_ExpectedSyncCallback(void);
void HAL_RCCEx_CRS_ErrorCallback(uint32_t Error);
# 7959 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 2
# 7969 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t FLatency);
# 7981 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void HAL_RCC_EnableCSS(void);
void HAL_RCC_DisableCSS(void);
uint32_t HAL_RCC_GetSysClockFreq(void);
uint32_t HAL_RCC_GetHCLKFreq(void);
uint32_t HAL_RCC_GetPCLK1Freq(void);
uint32_t HAL_RCC_GetPCLK2Freq(void);
void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t *pFLatency);

void HAL_RCC_NMI_IRQHandler(void);

void HAL_RCC_CSSCallback(void);
# 248 "../Core/Inc\\stm32h7xx_hal_conf.h" 2



# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
typedef struct
{
  uint32_t Pin;


  uint32_t Mode;


  uint32_t Pull;


  uint32_t Speed;


  uint32_t Alternate;

} GPIO_InitTypeDef;




typedef enum
{
  GPIO_PIN_RESET = 0U,
  GPIO_PIN_SET
} GPIO_PinState;
# 244 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_gpio_ex.h" 1
# 245 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h" 2
# 255 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void HAL_GPIO_DeInit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin);
# 265 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);
# 252 "../Core/Inc\\stm32h7xx_hal_conf.h" 2



# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h" 1
# 48 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
typedef struct
{
  uint32_t Request;


  uint32_t Direction;



  uint32_t PeriphInc;


  uint32_t MemInc;


  uint32_t PeriphDataAlignment;


  uint32_t MemDataAlignment;


  uint32_t Mode;




  uint32_t Priority;


  uint32_t FIFOMode;




  uint32_t FIFOThreshold;


  uint32_t MemBurst;





  uint32_t PeriphBurst;




}DMA_InitTypeDef;




typedef enum
{
  HAL_DMA_STATE_RESET = 0x00U,
  HAL_DMA_STATE_READY = 0x01U,
  HAL_DMA_STATE_BUSY = 0x02U,
  HAL_DMA_STATE_ERROR = 0x03U,
  HAL_DMA_STATE_ABORT = 0x04U,
}HAL_DMA_StateTypeDef;




typedef enum
{
  HAL_DMA_FULL_TRANSFER = 0x00U,
  HAL_DMA_HALF_TRANSFER = 0x01U,
}HAL_DMA_LevelCompleteTypeDef;




typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID = 0x00U,
  HAL_DMA_XFER_HALFCPLT_CB_ID = 0x01U,
  HAL_DMA_XFER_M1CPLT_CB_ID = 0x02U,
  HAL_DMA_XFER_M1HALFCPLT_CB_ID = 0x03U,
  HAL_DMA_XFER_ERROR_CB_ID = 0x04U,
  HAL_DMA_XFER_ABORT_CB_ID = 0x05U,
  HAL_DMA_XFER_ALL_CB_ID = 0x06U
}HAL_DMA_CallbackIDTypeDef;




typedef struct __DMA_HandleTypeDef
{
  void *Instance;

  DMA_InitTypeDef Init;

  HAL_LockTypeDef Lock;

  volatile HAL_DMA_StateTypeDef State;

  void *Parent;

  void (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferM1CpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferM1HalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);

 volatile uint32_t ErrorCode;

 uint32_t StreamBaseAddress;

 uint32_t StreamIndex;

 DMAMUX_Channel_TypeDef *DMAmuxChannel;

 DMAMUX_ChannelStatus_TypeDef *DMAmuxChannelStatus;

 uint32_t DMAmuxChannelStatusMask;


 DMAMUX_RequestGen_TypeDef *DMAmuxRequestGen;

 DMAMUX_RequestGenStatus_TypeDef *DMAmuxRequestGenStatus;

 uint32_t DMAmuxRequestGenStatusMask;

}DMA_HandleTypeDef;
# 1174 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h"
typedef enum
{
  MEMORY0 = 0x00U,
  MEMORY1 = 0x01U,

}HAL_DMA_MemoryTypeDef;




typedef struct
{
  uint32_t SyncSignalID;


  uint32_t SyncPolarity;


  FunctionalState SyncEnable;



  FunctionalState EventEnable;


  uint32_t RequestNumber;


}HAL_DMA_MuxSyncConfigTypeDef;





typedef struct
{
 uint32_t SignalID;


  uint32_t Polarity;


  uint32_t RequestNumber;


}HAL_DMA_MuxRequestGeneratorConfigTypeDef;
# 237 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h"
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory);
HAL_StatusTypeDef HAL_DMAEx_ConfigMuxSync(DMA_HandleTypeDef *hdma, HAL_DMA_MuxSyncConfigTypeDef *pSyncConfig);
HAL_StatusTypeDef HAL_DMAEx_ConfigMuxRequestGenerator (DMA_HandleTypeDef *hdma, HAL_DMA_MuxRequestGeneratorConfigTypeDef *pRequestGeneratorConfig);
HAL_StatusTypeDef HAL_DMAEx_EnableMuxRequestGenerator (DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMAEx_DisableMuxRequestGenerator (DMA_HandleTypeDef *hdma);

void HAL_DMAEx_MUX_IRQHandler(DMA_HandleTypeDef *hdma);
# 1175 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h" 2
# 1187 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma);
# 1197 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)(DMA_HandleTypeDef *_hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);
# 1214 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma);
# 256 "../Core/Inc\\stm32h7xx_hal_conf.h" 2



# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h" 1
# 48 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
typedef struct
{

  uint32_t Request;


  uint32_t TransferTriggerMode;



  uint32_t Priority;


  uint32_t Endianness;


  uint32_t SourceInc;


  uint32_t DestinationInc;


  uint32_t SourceDataSize;


  uint32_t DestDataSize;



  uint32_t DataAlignment;


  uint32_t BufferTransferLength;


  uint32_t SourceBurst;







  uint32_t DestBurst;







  int32_t SourceBlockAddressOffset;






  int32_t DestBlockAddressOffset;





}MDMA_InitTypeDef;
# 121 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
typedef struct
{
  volatile uint32_t CTCR;
  volatile uint32_t CBNDTR;
  volatile uint32_t CSAR;
  volatile uint32_t CDAR;
  volatile uint32_t CBRUR;
  volatile uint32_t CLAR;
  volatile uint32_t CTBR;
  volatile uint32_t Reserved;
  volatile uint32_t CMAR;
  volatile uint32_t CMDR;

}MDMA_LinkNodeTypeDef;





typedef struct
{
  MDMA_InitTypeDef Init;
  uint32_t SrcAddress;
  uint32_t DstAddress;
  uint32_t BlockDataLength;
  uint32_t BlockCount;

  uint32_t PostRequestMaskAddress;


  uint32_t PostRequestMaskData;



}MDMA_LinkNodeConfTypeDef;





typedef enum
{
  HAL_MDMA_STATE_RESET = 0x00U,
  HAL_MDMA_STATE_READY = 0x01U,
  HAL_MDMA_STATE_BUSY = 0x02U,
  HAL_MDMA_STATE_ERROR = 0x03U,
  HAL_MDMA_STATE_ABORT = 0x04U,

}HAL_MDMA_StateTypeDef;




typedef enum
{
  HAL_MDMA_FULL_TRANSFER = 0x00U,
  HAL_MDMA_BUFFER_TRANSFER = 0x01U,
  HAL_MDMA_BLOCK_TRANSFER = 0x02U,
  HAL_MDMA_REPEAT_BLOCK_TRANSFER = 0x03U

}HAL_MDMA_LevelCompleteTypeDef;




typedef enum
{
  HAL_MDMA_XFER_CPLT_CB_ID = 0x00U,
  HAL_MDMA_XFER_BUFFERCPLT_CB_ID = 0x01U,
  HAL_MDMA_XFER_BLOCKCPLT_CB_ID = 0x02U,
  HAL_MDMA_XFER_REPBLOCKCPLT_CB_ID = 0x03U,
  HAL_MDMA_XFER_ERROR_CB_ID = 0x04U,
  HAL_MDMA_XFER_ABORT_CB_ID = 0x05U,
  HAL_MDMA_XFER_ALL_CB_ID = 0x06U

}HAL_MDMA_CallbackIDTypeDef;





typedef struct __MDMA_HandleTypeDef
{
  MDMA_Channel_TypeDef *Instance;

  MDMA_InitTypeDef Init;

  HAL_LockTypeDef Lock;

  volatile HAL_MDMA_StateTypeDef State;

  void *Parent;

  void (* XferCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferBufferCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferBlockCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferRepeatBlockCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferErrorCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferAbortCallback)( struct __MDMA_HandleTypeDef * hmdma);


  MDMA_LinkNodeTypeDef *FirstLinkedListNodeAddress;





  MDMA_LinkNodeTypeDef *LastLinkedListNodeAddress;



  uint32_t LinkedListNodeCounter;

  volatile uint32_t ErrorCode;

} MDMA_HandleTypeDef;
# 640 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_Init(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_DeInit (MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_ConfigPostRequestMask(MDMA_HandleTypeDef *hmdma, uint32_t MaskAddress, uint32_t MaskData);

HAL_StatusTypeDef HAL_MDMA_RegisterCallback(MDMA_HandleTypeDef *hmdma, HAL_MDMA_CallbackIDTypeDef CallbackID, void (* pCallback)(MDMA_HandleTypeDef *_hmdma));
HAL_StatusTypeDef HAL_MDMA_UnRegisterCallback(MDMA_HandleTypeDef *hmdma, HAL_MDMA_CallbackIDTypeDef CallbackID);
# 657 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_LinkedList_CreateNode(MDMA_LinkNodeTypeDef *pNode, MDMA_LinkNodeConfTypeDef *pNodeConfig);
HAL_StatusTypeDef HAL_MDMA_LinkedList_AddNode(MDMA_HandleTypeDef *hmdma, MDMA_LinkNodeTypeDef *pNewNode, MDMA_LinkNodeTypeDef *pPrevNode);
HAL_StatusTypeDef HAL_MDMA_LinkedList_RemoveNode(MDMA_HandleTypeDef *hmdma, MDMA_LinkNodeTypeDef *pNode);
HAL_StatusTypeDef HAL_MDMA_LinkedList_EnableCircularMode(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_LinkedList_DisableCircularMode(MDMA_HandleTypeDef *hmdma);
# 673 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_Start (MDMA_HandleTypeDef *hmdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t BlockDataLength, uint32_t BlockCount);
HAL_StatusTypeDef HAL_MDMA_Start_IT(MDMA_HandleTypeDef *hmdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t BlockDataLength, uint32_t BlockCount);
HAL_StatusTypeDef HAL_MDMA_Abort(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_Abort_IT(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_PollForTransfer(MDMA_HandleTypeDef *hmdma, HAL_MDMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
HAL_StatusTypeDef HAL_MDMA_GenerateSWRequest(MDMA_HandleTypeDef *hmdma);
void HAL_MDMA_IRQHandler(MDMA_HandleTypeDef *hmdma);
# 690 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_MDMA_StateTypeDef HAL_MDMA_GetState(MDMA_HandleTypeDef *hmdma);
uint32_t HAL_MDMA_GetError(MDMA_HandleTypeDef *hmdma);
# 260 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 295 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h" 1
# 44 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
typedef enum
{
  HAL_EXTI_COMMON_CB_ID = 0x00U,
} EXTI_CallbackIDTypeDef;





typedef struct
{
  uint32_t Line;
  void (* PendingCallback)(void);
} EXTI_HandleTypeDef;




typedef struct
{
  uint32_t Line;

  uint32_t Mode;

  uint32_t Trigger;

  uint32_t GPIOSel;



  uint32_t PendClearSource;



} EXTI_ConfigTypeDef;
# 497 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti);
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void));
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine);
# 511 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti);
uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti);
# 296 "../Core/Inc\\stm32h7xx_hal_conf.h" 2



# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
typedef struct
{
  uint8_t Enable;

  uint8_t Number;

  uint32_t BaseAddress;
  uint8_t Size;

  uint8_t SubRegionDisable;

  uint8_t TypeExtField;

  uint8_t AccessPermission;

  uint8_t DisableExec;

  uint8_t IsShareable;

  uint8_t IsCacheable;

  uint8_t IsBufferable;

}MPU_Region_InitTypeDef;
# 293 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);
# 308 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
void HAL_MPU_Enable(uint32_t MPU_Control);
void HAL_MPU_Disable(void);
void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init);

uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);
uint32_t HAL_GetCurrentCPUID(void);
# 300 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 335 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
typedef enum
{
  FLASH_PROC_NONE = 0U,
  FLASH_PROC_SECTERASE_BANK1,
  FLASH_PROC_MASSERASE_BANK1,
  FLASH_PROC_PROGRAM_BANK1,
  FLASH_PROC_SECTERASE_BANK2,
  FLASH_PROC_MASSERASE_BANK2,
  FLASH_PROC_PROGRAM_BANK2,
  FLASH_PROC_ALLBANK_MASSERASE
} FLASH_ProcedureTypeDef;





typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;

  volatile uint32_t NbSectorsToErase;

  volatile uint32_t VoltageForErase;

  volatile uint32_t Sector;

  volatile uint32_t Address;

  HAL_LockTypeDef Lock;

  volatile uint32_t ErrorCode;

}FLASH_ProcessTypeDef;
# 707 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
typedef struct
{
  uint32_t TypeErase;


  uint32_t Banks;


  uint32_t Sector;


  uint32_t NbSectors;


  uint32_t VoltageRange;


} FLASH_EraseInitTypeDef;





typedef struct
{
  uint32_t OptionType;


  uint32_t WRPState;


  uint32_t WRPSector;


  uint32_t RDPLevel;


  uint32_t BORLevel;


  uint32_t USERType;


  uint32_t USERConfig;


  uint32_t Banks;


  uint32_t PCROPConfig;



  uint32_t PCROPStartAddr;


  uint32_t PCROPEndAddr;


  uint32_t BootConfig;


  uint32_t BootAddr0;


  uint32_t BootAddr1;
# 124 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
  uint32_t SecureAreaConfig;



  uint32_t SecureAreaStartAddr;


  uint32_t SecureAreaEndAddr;
# 149 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
} FLASH_OBProgramInitTypeDef;




typedef struct
{
  uint32_t TypeCRC;


  uint32_t BurstSize;


  uint32_t Bank;


  uint32_t Sector;


  uint32_t NbSectors;


  uint32_t CRCStartAddr;


  uint32_t CRCEndAddr;


} FLASH_CRCInitTypeDef;
# 822 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *SectorError);
HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);
HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);

HAL_StatusTypeDef HAL_FLASHEx_Unlock_Bank1(void);
HAL_StatusTypeDef HAL_FLASHEx_Lock_Bank1(void);





HAL_StatusTypeDef HAL_FLASHEx_ComputeCRC(FLASH_CRCInitTypeDef *pCRCInit, uint32_t *CRC_Result);
# 995 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
void FLASH_Erase_Sector(uint32_t Sector, uint32_t Banks, uint32_t VoltageRange);
# 708 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h" 2
# 717 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t FlashAddress, uint32_t DataAddress);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t FlashAddress, uint32_t DataAddress);

void HAL_FLASH_IRQHandler(void);

void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);
# 732 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);

HAL_StatusTypeDef HAL_FLASH_OB_Launch(void);
# 746 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
uint32_t HAL_FLASH_GetError(void);
# 759 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
extern FLASH_ProcessTypeDef pFlash;
# 841 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout, uint32_t Bank);
HAL_StatusTypeDef FLASH_OB_WaitForLastOperation(uint32_t Timeout);
HAL_StatusTypeDef FLASH_CRC_WaitForLastOperation(uint32_t Timeout, uint32_t Bank);
# 336 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 351 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h" 1
# 129 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
HAL_StatusTypeDef HAL_HSEM_Take(uint32_t SemID, uint32_t ProcessID);

HAL_StatusTypeDef HAL_HSEM_FastTake(uint32_t SemID);

void HAL_HSEM_Release(uint32_t SemID, uint32_t ProcessID);

void HAL_HSEM_ReleaseAll(uint32_t Key, uint32_t CoreID);

uint32_t HAL_HSEM_IsSemTaken(uint32_t SemID);
# 148 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
void HAL_HSEM_SetClearKey(uint32_t Key);

uint32_t HAL_HSEM_GetClearKey(void);
# 160 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
void HAL_HSEM_ActivateNotification(uint32_t SemMask);

void HAL_HSEM_DeactivateNotification(uint32_t SemMask);

void HAL_HSEM_FreeCallback(uint32_t SemMask);

void HAL_HSEM_IRQHandler(void);
# 352 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 367 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef struct
{
  uint32_t Timing;



  uint32_t OwnAddress1;


  uint32_t AddressingMode;


  uint32_t DualAddressMode;


  uint32_t OwnAddress2;


  uint32_t OwnAddress2Masks;



  uint32_t GeneralCallMode;


  uint32_t NoStretchMode;


} I2C_InitTypeDef;
# 108 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_STATE_RESET = 0x00U,
  HAL_I2C_STATE_READY = 0x20U,
  HAL_I2C_STATE_BUSY = 0x24U,
  HAL_I2C_STATE_BUSY_TX = 0x21U,
  HAL_I2C_STATE_BUSY_RX = 0x22U,
  HAL_I2C_STATE_LISTEN = 0x28U,
  HAL_I2C_STATE_BUSY_TX_LISTEN = 0x29U,

  HAL_I2C_STATE_BUSY_RX_LISTEN = 0x2AU,

  HAL_I2C_STATE_ABORT = 0x60U,
  HAL_I2C_STATE_TIMEOUT = 0xA0U,
  HAL_I2C_STATE_ERROR = 0xE0U

} HAL_I2C_StateTypeDef;
# 148 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_MODE_NONE = 0x00U,
  HAL_I2C_MODE_MASTER = 0x10U,
  HAL_I2C_MODE_SLAVE = 0x20U,
  HAL_I2C_MODE_MEM = 0x40U

} HAL_I2C_ModeTypeDef;
# 186 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef struct __I2C_HandleTypeDef
{
  I2C_TypeDef *Instance;

  I2C_InitTypeDef Init;

  uint8_t *pBuffPtr;

  uint16_t XferSize;

  volatile uint16_t XferCount;

  volatile uint32_t XferOptions;


  volatile uint32_t PreviousState;

  HAL_StatusTypeDef(*XferISR)(struct __I2C_HandleTypeDef *hi2c, uint32_t ITFlags, uint32_t ITSources);


  DMA_HandleTypeDef *hdmatx;

  DMA_HandleTypeDef *hdmarx;

  HAL_LockTypeDef Lock;

  volatile HAL_I2C_StateTypeDef State;

  volatile HAL_I2C_ModeTypeDef Mode;

  volatile uint32_t ErrorCode;

  volatile uint32_t AddrEventCount;

  volatile uint32_t Devaddress;

  volatile uint32_t Memaddress;
# 253 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
} I2C_HandleTypeDef;
# 591 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_i2c_ex.h" 1
# 96 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_i2c_ex.h"
HAL_StatusTypeDef HAL_I2CEx_ConfigAnalogFilter(I2C_HandleTypeDef *hi2c, uint32_t AnalogFilter);
HAL_StatusTypeDef HAL_I2CEx_ConfigDigitalFilter(I2C_HandleTypeDef *hi2c, uint32_t DigitalFilter);







HAL_StatusTypeDef HAL_I2CEx_EnableWakeUp(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2CEx_DisableWakeUp(I2C_HandleTypeDef *hi2c);







void HAL_I2CEx_EnableFastModePlus(uint32_t ConfigFastModePlus);
void HAL_I2CEx_DisableFastModePlus(uint32_t ConfigFastModePlus);
# 592 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h" 2
# 602 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c);
# 625 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                          uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                         uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                         uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                        uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                    uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                   uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials,
                                        uint32_t Timeout);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                            uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                      uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                               uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                        uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                  uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                 uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
# 692 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode);
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c);
# 712 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c);
HAL_I2C_ModeTypeDef HAL_I2C_GetMode(I2C_HandleTypeDef *hi2c);
uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c);
# 368 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 415 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
typedef struct
{
  uint32_t PVDLevel;




  uint32_t Mode;



}PWR_PVDTypeDef;
# 672 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
typedef struct
{
  uint32_t AVDLevel;




  uint32_t Mode;



}PWREx_AVDTypeDef;




typedef struct
{
  uint32_t WakeUpPin;




  uint32_t PinPolarity;




  uint32_t PinPull;



}PWREx_WakeupPinTypeDef;
# 509 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
HAL_StatusTypeDef HAL_PWREx_ConfigSupply (uint32_t SupplySource);
uint32_t HAL_PWREx_GetSupplyConfig (void);
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling (uint32_t VoltageScaling);
uint32_t HAL_PWREx_GetVoltageRange (void);
HAL_StatusTypeDef HAL_PWREx_ControlStopModeVoltageScaling (uint32_t VoltageScaling);
uint32_t HAL_PWREx_GetStopModeVoltageRange (void);
# 526 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnterSTOPMode (uint32_t Regulator, uint8_t STOPEntry, uint32_t Domain);
void HAL_PWREx_EnterSTANDBYMode (uint32_t Domain);
void HAL_PWREx_ConfigD3Domain (uint32_t D3State);

void HAL_PWREx_ClearPendingEvent (void);
# 539 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnableFlashPowerDown (void);
void HAL_PWREx_DisableFlashPowerDown (void);






void HAL_PWREx_EnableWakeUpPin (PWREx_WakeupPinTypeDef *sPinParams);
void HAL_PWREx_DisableWakeUpPin (uint32_t WakeUpPin);
uint32_t HAL_PWREx_GetWakeupFlag (uint32_t WakeUpFlag);
HAL_StatusTypeDef HAL_PWREx_ClearWakeupFlag (uint32_t WakeUpFlag);

void HAL_PWREx_WAKEUP_PIN_IRQHandler (void);
void HAL_PWREx_WKUP1_Callback (void);
void HAL_PWREx_WKUP2_Callback (void);

void HAL_PWREx_WKUP3_Callback (void);

void HAL_PWREx_WKUP4_Callback (void);

void HAL_PWREx_WKUP5_Callback (void);

void HAL_PWREx_WKUP6_Callback (void);
# 571 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg (void);
HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg (void);

HAL_StatusTypeDef HAL_PWREx_EnableUSBReg (void);
HAL_StatusTypeDef HAL_PWREx_DisableUSBReg (void);
void HAL_PWREx_EnableUSBVoltageDetector (void);
void HAL_PWREx_DisableUSBVoltageDetector (void);

void HAL_PWREx_EnableBatteryCharging (uint32_t ResistorValue);
void HAL_PWREx_DisableBatteryCharging (void);
# 594 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnableMonitoring (void);
void HAL_PWREx_DisableMonitoring (void);
uint32_t HAL_PWREx_GetTemperatureLevel (void);
uint32_t HAL_PWREx_GetVBATLevel (void);




void HAL_PWREx_ConfigAVD (PWREx_AVDTypeDef *sConfigAVD);
void HAL_PWREx_EnableAVD (void);
void HAL_PWREx_DisableAVD (void);

void HAL_PWREx_PVD_AVD_IRQHandler (void);
void HAL_PWREx_AVDCallback (void);
# 673 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h" 2
# 683 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
void HAL_PWR_DeInit (void);
void HAL_PWR_EnableBkUpAccess (void);
void HAL_PWR_DisableBkUpAccess (void);
# 695 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
void HAL_PWR_ConfigPVD (PWR_PVDTypeDef *sConfigPVD);
void HAL_PWR_EnablePVD (void);
void HAL_PWR_DisablePVD (void);


void HAL_PWR_EnableWakeUpPin (uint32_t WakeUpPinPolarity);
void HAL_PWR_DisableWakeUpPin (uint32_t WakeUpPinx);


void HAL_PWR_EnterSTOPMode (uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode (uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode (void);


void HAL_PWR_PVD_IRQHandler (void);
void HAL_PWR_PVDCallback (void);


void HAL_PWR_EnableSleepOnExit (void);
void HAL_PWR_DisableSleepOnExit (void);
void HAL_PWR_EnableSEVOnPend (void);
void HAL_PWR_DisableSEVOnPend (void);
# 416 "../Core/Inc\\stm32h7xx_hal_conf.h" 2



# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h" 1
# 48 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h"
typedef struct
{
  uint32_t ClockPrescaler;

  uint32_t FifoThreshold;

  uint32_t SampleShifting;


  uint32_t FlashSize;




  uint32_t ChipSelectHighTime;


  uint32_t ClockMode;

  uint32_t FlashID;

  uint32_t DualFlash;

}QSPI_InitTypeDef;




typedef enum
{
  HAL_QSPI_STATE_RESET = 0x00U,
  HAL_QSPI_STATE_READY = 0x01U,
  HAL_QSPI_STATE_BUSY = 0x02U,
  HAL_QSPI_STATE_BUSY_INDIRECT_TX = 0x12U,
  HAL_QSPI_STATE_BUSY_INDIRECT_RX = 0x22U,
  HAL_QSPI_STATE_BUSY_AUTO_POLLING = 0x42U,
  HAL_QSPI_STATE_BUSY_MEM_MAPPED = 0x82U,
  HAL_QSPI_STATE_ABORT = 0x08U,
  HAL_QSPI_STATE_ERROR = 0x04U
}HAL_QSPI_StateTypeDef;







typedef struct

{
  QUADSPI_TypeDef *Instance;
  QSPI_InitTypeDef Init;
  uint8_t *pTxBuffPtr;
  volatile uint32_t TxXferSize;
  volatile uint32_t TxXferCount;
  uint8_t *pRxBuffPtr;
  volatile uint32_t RxXferSize;
  volatile uint32_t RxXferCount;
  MDMA_HandleTypeDef *hmdma;
  volatile HAL_LockTypeDef Lock;
  volatile HAL_QSPI_StateTypeDef State;
  volatile uint32_t ErrorCode;
  uint32_t Timeout;
# 124 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h"
}QSPI_HandleTypeDef;




typedef struct
{
  uint32_t Instruction;

  uint32_t Address;

  uint32_t AlternateBytes;

  uint32_t AddressSize;

  uint32_t AlternateBytesSize;

  uint32_t DummyCycles;

  uint32_t InstructionMode;

  uint32_t AddressMode;

  uint32_t AlternateByteMode;

  uint32_t DataMode;

  uint32_t NbData;


  uint32_t DdrMode;

  uint32_t DdrHoldHalfCycle;


  uint32_t SIOOMode;

}QSPI_CommandTypeDef;




typedef struct
{
  uint32_t Match;

  uint32_t Mask;

  uint32_t Interval;

  uint32_t StatusBytesSize;

  uint32_t MatchMode;

  uint32_t AutomaticStop;

}QSPI_AutoPollingTypeDef;




typedef struct
{
  uint32_t TimeOutPeriod;

  uint32_t TimeOutActivation;

}QSPI_MemoryMappedTypeDef;
# 559 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h"
HAL_StatusTypeDef HAL_QSPI_Init (QSPI_HandleTypeDef *hqspi);
HAL_StatusTypeDef HAL_QSPI_DeInit (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_MspInit (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_MspDeInit(QSPI_HandleTypeDef *hqspi);
# 572 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h"
void HAL_QSPI_IRQHandler(QSPI_HandleTypeDef *hqspi);


HAL_StatusTypeDef HAL_QSPI_Command (QSPI_HandleTypeDef *hqspi, QSPI_CommandTypeDef *cmd, uint32_t Timeout);
HAL_StatusTypeDef HAL_QSPI_Transmit (QSPI_HandleTypeDef *hqspi, uint8_t *pData, uint32_t Timeout);
HAL_StatusTypeDef HAL_QSPI_Receive (QSPI_HandleTypeDef *hqspi, uint8_t *pData, uint32_t Timeout);
HAL_StatusTypeDef HAL_QSPI_Command_IT (QSPI_HandleTypeDef *hqspi, QSPI_CommandTypeDef *cmd);
HAL_StatusTypeDef HAL_QSPI_Transmit_IT (QSPI_HandleTypeDef *hqspi, uint8_t *pData);
HAL_StatusTypeDef HAL_QSPI_Receive_IT (QSPI_HandleTypeDef *hqspi, uint8_t *pData);
HAL_StatusTypeDef HAL_QSPI_Transmit_DMA (QSPI_HandleTypeDef *hqspi, uint8_t *pData);
HAL_StatusTypeDef HAL_QSPI_Receive_DMA (QSPI_HandleTypeDef *hqspi, uint8_t *pData);


HAL_StatusTypeDef HAL_QSPI_AutoPolling (QSPI_HandleTypeDef *hqspi, QSPI_CommandTypeDef *cmd, QSPI_AutoPollingTypeDef *cfg, uint32_t Timeout);
HAL_StatusTypeDef HAL_QSPI_AutoPolling_IT(QSPI_HandleTypeDef *hqspi, QSPI_CommandTypeDef *cmd, QSPI_AutoPollingTypeDef *cfg);


HAL_StatusTypeDef HAL_QSPI_MemoryMapped(QSPI_HandleTypeDef *hqspi, QSPI_CommandTypeDef *cmd, QSPI_MemoryMappedTypeDef *cfg);


void HAL_QSPI_ErrorCallback (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_AbortCpltCallback (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_FifoThresholdCallback(QSPI_HandleTypeDef *hqspi);


void HAL_QSPI_CmdCpltCallback (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_RxCpltCallback (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_TxCpltCallback (QSPI_HandleTypeDef *hqspi);


void HAL_QSPI_StatusMatchCallback (QSPI_HandleTypeDef *hqspi);


void HAL_QSPI_TimeOutCallback (QSPI_HandleTypeDef *hqspi);
# 620 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_qspi.h"
HAL_QSPI_StateTypeDef HAL_QSPI_GetState (QSPI_HandleTypeDef *hqspi);
uint32_t HAL_QSPI_GetError (QSPI_HandleTypeDef *hqspi);
HAL_StatusTypeDef HAL_QSPI_Abort (QSPI_HandleTypeDef *hqspi);
HAL_StatusTypeDef HAL_QSPI_Abort_IT (QSPI_HandleTypeDef *hqspi);
void HAL_QSPI_SetTimeout (QSPI_HandleTypeDef *hqspi, uint32_t Timeout);
HAL_StatusTypeDef HAL_QSPI_SetFifoThreshold(QSPI_HandleTypeDef *hqspi, uint32_t Threshold);
uint32_t HAL_QSPI_GetFifoThreshold(QSPI_HandleTypeDef *hqspi);
HAL_StatusTypeDef HAL_QSPI_SetFlashID (QSPI_HandleTypeDef *hqspi, uint32_t FlashID);
# 420 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 463 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef struct
{
  uint32_t BaudRate;
# 66 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
  uint32_t WordLength;


  uint32_t StopBits;


  uint32_t Parity;






  uint32_t Mode;


  uint32_t HwFlowCtl;



  uint32_t OverSampling;



  uint32_t OneBitSampling;



  uint32_t ClockPrescaler;


} UART_InitTypeDef;




typedef struct
{
  uint32_t AdvFeatureInit;




  uint32_t TxPinLevelInvert;


  uint32_t RxPinLevelInvert;


  uint32_t DataInvert;



  uint32_t Swap;


  uint32_t OverrunDisable;


  uint32_t DMADisableonRxError;


  uint32_t AutoBaudRateEnable;


  uint32_t AutoBaudRateMode;



  uint32_t MSBFirst;

} UART_AdvFeatureInitTypeDef;
# 179 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_StateTypeDef;




typedef enum
{
  UART_CLOCKSOURCE_D2PCLK1 = 0x00U,
  UART_CLOCKSOURCE_D2PCLK2 = 0x01U,
  UART_CLOCKSOURCE_D3PCLK1 = 0x02U,
  UART_CLOCKSOURCE_PLL2 = 0x04U,
  UART_CLOCKSOURCE_PLL3 = 0x08U,
  UART_CLOCKSOURCE_HSI = 0x10U,
  UART_CLOCKSOURCE_CSI = 0x20U,
  UART_CLOCKSOURCE_LSE = 0x40U,
  UART_CLOCKSOURCE_UNDEFINED = 0x80U
} UART_ClockSourceTypeDef;
# 206 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_RxTypeTypeDef;
# 217 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_RxEventTypeTypeDef;




typedef struct __UART_HandleTypeDef
{
  USART_TypeDef *Instance;

  UART_InitTypeDef Init;

  UART_AdvFeatureInitTypeDef AdvancedInit;

  const uint8_t *pTxBuffPtr;

  uint16_t TxXferSize;

  volatile uint16_t TxXferCount;

  uint8_t *pRxBuffPtr;

  uint16_t RxXferSize;

  volatile uint16_t RxXferCount;

  uint16_t Mask;

  uint32_t FifoMode;


  uint16_t NbRxDataToProcess;

  uint16_t NbTxDataToProcess;

  volatile HAL_UART_RxTypeTypeDef ReceptionType;

  volatile HAL_UART_RxEventTypeTypeDef RxEventType;

  void (*RxISR)(struct __UART_HandleTypeDef *huart);

  void (*TxISR)(struct __UART_HandleTypeDef *huart);

  DMA_HandleTypeDef *hdmatx;

  DMA_HandleTypeDef *hdmarx;

  HAL_LockTypeDef Lock;

  volatile HAL_UART_StateTypeDef gState;



  volatile HAL_UART_StateTypeDef RxState;


  volatile uint32_t ErrorCode;
# 292 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
} UART_HandleTypeDef;
# 1598 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
typedef struct
{
  uint32_t WakeUpEvent;




  uint16_t AddressLength;


  uint8_t Address;
} UART_WakeUpTypeDef;
# 140 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
HAL_StatusTypeDef HAL_RS485Ex_Init(UART_HandleTypeDef *huart, uint32_t Polarity, uint32_t AssertionTime,
                                   uint32_t DeassertionTime);
# 151 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
void HAL_UARTEx_WakeupCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxFifoFullCallback(UART_HandleTypeDef *huart);
void HAL_UARTEx_TxFifoEmptyCallback(UART_HandleTypeDef *huart);
# 165 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
HAL_StatusTypeDef HAL_UARTEx_StopModeWakeUpSourceConfig(UART_HandleTypeDef *huart, UART_WakeUpTypeDef WakeUpSelection);
HAL_StatusTypeDef HAL_UARTEx_EnableStopMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_DisableStopMode(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_MultiProcessorEx_AddressLength_Set(UART_HandleTypeDef *huart, uint32_t AddressLength);

HAL_StatusTypeDef HAL_UARTEx_EnableFifoMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_DisableFifoMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_SetTxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold);
HAL_StatusTypeDef HAL_UARTEx_SetRxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold);

HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint16_t *RxLen,
                                           uint32_t Timeout);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);

HAL_UART_RxEventTypeTypeDef HAL_UARTEx_GetRxEventType(UART_HandleTypeDef *huart);
# 1599 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h" 2
# 1610 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength);
HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod);
HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart);
void HAL_UART_MspInit(UART_HandleTypeDef *huart);
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart);
# 1637 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart);

void HAL_UART_IRQHandler(UART_HandleTypeDef *huart);
void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size);
# 1675 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
void HAL_UART_ReceiverTimeout_Config(UART_HandleTypeDef *huart, uint32_t TimeoutValue);
HAL_StatusTypeDef HAL_UART_EnableReceiverTimeout(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DisableReceiverTimeout(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_EnableMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_DisableMuteMode(UART_HandleTypeDef *huart);
void HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart);
# 1695 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_UART_StateTypeDef HAL_UART_GetState(const UART_HandleTypeDef *huart);
uint32_t HAL_UART_GetError(const UART_HandleTypeDef *huart);
# 1713 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef UART_SetConfig(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_CheckIdleState(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status,
                                              uint32_t Tickstart, uint32_t Timeout);
void UART_AdvFeatureConfig(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_Start_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef UART_Start_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
# 1731 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
extern const uint16_t UARTPrescTable[12];
# 464 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 30 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 2
# 43 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
typedef enum
{
  HAL_TICK_FREQ_10HZ = 100U,
  HAL_TICK_FREQ_100HZ = 10U,
  HAL_TICK_FREQ_1KHZ = 1U,
  HAL_TICK_FREQ_DEFAULT = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;
# 1044 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
extern volatile uint32_t uwTick;
extern uint32_t uwTickPrio;
extern HAL_TickFreqTypeDef uwTickFreq;
# 1059 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick (uint32_t TickPriority);
# 1073 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);

void HAL_SYSCFG_ETHInterfaceSelect(uint32_t SYSCFG_ETHInterface);

void HAL_SYSCFG_AnalogSwitchConfig(uint32_t SYSCFG_AnalogSwitch , uint32_t SYSCFG_SwitchState );

void HAL_SYSCFG_EnableBOOST(void);
void HAL_SYSCFG_DisableBOOST(void);



void HAL_SYSCFG_CM7BootAddConfig(uint32_t BootRegister, uint32_t BootAddress);
# 1107 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_EnableCompensationCell(void);
void HAL_DisableCompensationCell(void);
void HAL_SYSCFG_EnableIOSpeedOptimize(void);
void HAL_SYSCFG_DisableIOSpeedOptimize(void);
void HAL_SYSCFG_CompensationCodeSelect(uint32_t SYSCFG_CompCode);
void HAL_SYSCFG_CompensationCodeConfig(uint32_t SYSCFG_PMOSCode, uint32_t SYSCFG_NMOSCode);



void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
# 1138 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_EXTI_EdgeConfig(uint32_t EXTI_Line , uint32_t EXTI_Edge );
void HAL_EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);



void HAL_EXTI_D1_ClearFlag(uint32_t EXTI_Line);
void HAL_EXTI_D1_EventInputConfig(uint32_t EXTI_Line , uint32_t EXTI_Mode, uint32_t EXTI_LineCmd);



void HAL_EXTI_D3_EventInputConfig(uint32_t EXTI_Line, uint32_t EXTI_LineCmd , uint32_t EXTI_ClearSrc);
void HAL_SetFMCMemorySwappingConfig(uint32_t BankMapConfig);
uint32_t HAL_GetFMCMemorySwappingConfig(void);
void HAL_SYSCFG_VREFBUF_VoltageScalingConfig(uint32_t VoltageScaling);
void HAL_SYSCFG_VREFBUF_HighImpedanceConfig(uint32_t Mode);
void HAL_SYSCFG_VREFBUF_TrimmingConfig(uint32_t TrimmingValue);
HAL_StatusTypeDef HAL_SYSCFG_EnableVREFBUF(void);
void HAL_SYSCFG_DisableVREFBUF(void);
# 121 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c" 2
# 170 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig)
{
  volatile uint32_t *regaddr;
  uint32_t regval;
  uint32_t linepos;
  uint32_t maskline;
  uint32_t offset;
  uint32_t pcrlinepos;


  if ((hexti == 0) || (pExtiConfig == 0))
  {
    return HAL_ERROR;
  }


  ((void)0U);
  ((void)0U);


  hexti->Line = pExtiConfig->Line;


  offset = ((pExtiConfig->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  linepos = (pExtiConfig->Line & 0x0000001FUL);
  maskline = (1UL << linepos);


  if ((pExtiConfig->Line & (0x02UL << 24U)) != 0x00U)
  {
    ((void)0U);


    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->RTSR1 + (0x08U * offset));
    regval = *regaddr;


    if ((pExtiConfig->Trigger & 0x00000001U) != 0x00U)
    {
      regval |= maskline;
    }
    else
    {
      regval &= ~maskline;
    }


    *regaddr = regval;


    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->FTSR1 + (0x08U * offset));
    regval = *regaddr;


    if ((pExtiConfig->Trigger & 0x00000002U) != 0x00U)
    {
      regval |= maskline;
    }
    else
    {
      regval &= ~maskline;
    }


    *regaddr = regval;


    if ((pExtiConfig->Line & ((0x04UL << 24U) | (0x02UL << 24U))) == ((0x04UL << 24U) | (0x02UL << 24U)))
    {
      ((void)0U);
      ((void)0U);

      regval = ((SYSCFG_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0400UL))->EXTICR[(linepos >> 2U) & 0x03UL];
      regval &= ~((0xFUL << (0U)) << ((4U) * (linepos & 0x03U)));
      regval |= (pExtiConfig->GPIOSel << ((4U) * (linepos & 0x03U)));
      ((SYSCFG_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0400UL))->EXTICR[(linepos >> 2U) & 0x03UL] = regval;
    }
  }


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->IMR1 + (0x04U * offset));
  regval = *regaddr;


  if ((pExtiConfig->Mode & 0x00000001U) != 0x00U)
  {
    regval |= maskline;
  }
  else
  {
    regval &= ~maskline;
  }


  *regaddr = regval;


  ((void)0U);


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->EMR1 + (0x04U * offset));
  regval = *regaddr;


  if ((pExtiConfig->Mode & 0x00000002U) != 0x00U)
  {
    regval |= maskline;
  }
  else
  {
    regval &= ~maskline;
  }


  *regaddr = regval;
# 326 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  if ((pExtiConfig->Line & ((0x01UL << 20U) | (0x02UL << 20U))) == ((0x01UL << 20U) | (0x02UL << 20U)))
  {
    ((void)0U);


    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PMR1 + (0x08U * offset));
    regval = *regaddr;

    if(pExtiConfig->PendClearSource == 0x00000000U)
    {

      regval &= ~maskline;

      *regaddr = regval;
    }
    else
    {

      regval |= maskline;

      *regaddr = regval;

      if(linepos < 16UL)
      {
        regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1L + (0x08U * offset));
        pcrlinepos = 1UL << linepos;
      }
      else
      {
        regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1H + (0x08U * offset));
        pcrlinepos = 1UL << (linepos - 16UL);
      }

      regval = (*regaddr & (~(pcrlinepos * pcrlinepos * 3UL))) | (pcrlinepos * pcrlinepos * (pExtiConfig->PendClearSource - 1UL));
      *regaddr = regval;
    }
  }

  return HAL_OK;
}
# 374 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig)
{
  volatile uint32_t *regaddr;
  uint32_t regval;
  uint32_t linepos;
  uint32_t maskline;
  uint32_t offset;
  uint32_t pcrlinepos;


  if ((hexti == 0) || (pExtiConfig == 0))
  {
    return HAL_ERROR;
  }


  ((void)0U);


  pExtiConfig->Line = hexti->Line;


  offset = ((pExtiConfig->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  linepos = (pExtiConfig->Line & 0x0000001FUL);
  maskline = (1UL << linepos);


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->IMR1 + (0x04U * offset));
  regval = *regaddr;

  pExtiConfig->Mode = 0x00000000U;


  if ((regval & maskline) != 0x00U)
  {
    pExtiConfig->Mode = 0x00000001U;
  }


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->EMR1 + (0x04U * offset));
  regval = *regaddr;


  if ((regval & maskline) != 0x00U)
  {
    pExtiConfig->Mode |= 0x00000002U;
  }
# 443 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  pExtiConfig->Trigger = 0x00000000U;
  pExtiConfig->GPIOSel = 0x00U;


  if ((pExtiConfig->Line & (0x02UL << 24U)) != 0x00U)
  {
    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->RTSR1 + (0x08U * offset));
    regval = *regaddr;


    if ((regval & maskline) != 0x00U)
    {
      pExtiConfig->Trigger = 0x00000001U;
    }


    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->FTSR1 + (0x08U * offset));
    regval = *regaddr;


    if ((regval & maskline) != 0x00U)
    {
      pExtiConfig->Trigger |= 0x00000002U;
    }


    if ((pExtiConfig->Line & ((0x04UL << 24U) | (0x02UL << 24U))) == ((0x04UL << 24U) | (0x02UL << 24U)))
    {
      ((void)0U);

      regval = ((SYSCFG_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0400UL))->EXTICR[(linepos >> 2U) & 0x03UL];
      pExtiConfig->GPIOSel = (regval >> ((4U) * (linepos & 0x03u))) & (0xFUL << (0U));
    }
  }


  pExtiConfig->PendClearSource = 0x00000000U;


  if ((pExtiConfig->Line & ((0x01UL << 20U) | (0x02UL << 20U))) == ((0x01UL << 20U) | (0x02UL << 20U)))
  {
    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PMR1 + (0x08U * offset));
    if(((*regaddr) & linepos) != 0UL)
    {

      if(linepos < 16UL)
      {
        regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1L + (0x08U * offset));
        pcrlinepos = 1UL << linepos;
      }
      else
      {
        regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1H + (0x08U * offset));
        pcrlinepos = 1UL << (linepos - 16UL);
      }

      pExtiConfig->PendClearSource = 1UL + ((*regaddr & (pcrlinepos * pcrlinepos * 3UL)) / (pcrlinepos * pcrlinepos));
    }
  }

  return HAL_OK;
}







HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti)
{
  volatile uint32_t *regaddr;
  uint32_t regval;
  uint32_t linepos;
  uint32_t maskline;
  uint32_t offset;
  uint32_t pcrlinepos;


  if (hexti == 0)
  {
    return HAL_ERROR;
  }


  ((void)0U);


  offset = ((hexti->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  linepos = (hexti->Line & 0x0000001FUL);
  maskline = (1UL << linepos);


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->IMR1 + (0x04U * offset));
  regval = (*regaddr & ~maskline);
  *regaddr = regval;


  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->EMR1 + (0x04U * offset));
  regval = (*regaddr & ~maskline);
  *regaddr = regval;
# 558 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  if ((hexti->Line & (0x02UL << 24U)) != 0x00U)
  {
    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->RTSR1 + (0x08U * offset));
    regval = (*regaddr & ~maskline);
    *regaddr = regval;

    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->FTSR1 + (0x08U * offset));
    regval = (*regaddr & ~maskline);
    *regaddr = regval;


    if ((hexti->Line & ((0x04UL << 24U) | (0x02UL << 24U))) == ((0x04UL << 24U) | (0x02UL << 24U)))
    {
      ((void)0U);

      regval = ((SYSCFG_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0400UL))->EXTICR[(linepos >> 2U) & 0x03UL];
      regval &= ~((0xFUL << (0U)) << ((4U) * (linepos & 0x03UL)));
      ((SYSCFG_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0400UL))->EXTICR[(linepos >> 2U) & 0x03UL] = regval;
    }
  }


  if ((hexti->Line & ((0x01UL << 20U) | (0x02UL << 20U))) == ((0x01UL << 20U) | (0x02UL << 20U)))
  {
    regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PMR1 + (0x08U * offset));
    *regaddr = (*regaddr & ~maskline);

    if(linepos < 16UL)
    {
      regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1L + (0x08U * offset));
      pcrlinepos = 1UL << linepos;
    }
    else
    {
      regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->D3PCR1H + (0x08U * offset));
      pcrlinepos = 1UL << (linepos - 16UL);
    }


    *regaddr &= (~(pcrlinepos * pcrlinepos * 3UL));
  }

  return HAL_OK;
}
# 612 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void))
{
  HAL_StatusTypeDef status = HAL_OK;


  if (hexti == 0)
  {
    return HAL_ERROR;
  }

  switch (CallbackID)
  {
    case HAL_EXTI_COMMON_CB_ID:
      hexti->PendingCallback = pPendingCbfn;
      break;

    default:
      status = HAL_ERROR;
      break;
  }

  return status;
}
# 644 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine)
{

  ((void)0U);


  if (hexti == 0)
  {
    return HAL_ERROR;
  }
  else
  {

    hexti->Line = ExtiLine;

    return HAL_OK;
  }
}
# 685 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti)
{
  volatile uint32_t *regaddr;
  uint32_t regval;
  uint32_t maskline;
  uint32_t offset;


  offset = ((hexti->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  maskline = (1UL << (hexti->Line & 0x0000001FUL));
# 708 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->PR1 + (0x04U * offset));



  regval = (*regaddr & maskline);

  if (regval != 0x00U)
  {

    *regaddr = maskline;


    if (hexti->PendingCallback != 0)
    {
      hexti->PendingCallback();
    }
  }
}
# 737 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
{
  volatile uint32_t *regaddr;
  uint32_t regval;
  uint32_t linepos;
  uint32_t maskline;
  uint32_t offset;


  ((void)0U);
  ((void)0U);
  ((void)0U);


  offset = ((hexti->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  linepos = (hexti->Line & 0x0000001FUL);
  maskline = (1UL << linepos);
# 767 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->PR1 + (0x04U * offset));



  regval = ((*regaddr & maskline) >> linepos);
  return regval;
}
# 785 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
{
  volatile uint32_t *regaddr;
  uint32_t maskline;
  uint32_t offset;


  ((void)0U);
  ((void)0U);
  ((void)0U);


  offset = ((hexti->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  maskline = (1UL << (hexti->Line & 0x0000001FUL));
# 812 "../Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->PR1 + (0x04U * offset));



  *regaddr = maskline;
}






void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti)
{
  volatile uint32_t *regaddr;
  uint32_t maskline;
  uint32_t offset;


  ((void)0U);
  ((void)0U);


  offset = ((hexti->Line & ((0x00UL << 16U) | (0x01UL << 16U) | (0x02UL << 16U))) >> 16U);
  maskline = (1UL << (hexti->Line & 0x0000001FUL));

  regaddr = (volatile uint32_t *)(&((EXTI_TypeDef *) (((0x40000000UL) + 0x18000000UL) + 0x0000UL))->SWIER1 + (0x08U * offset));
  *regaddr = maskline;
}
