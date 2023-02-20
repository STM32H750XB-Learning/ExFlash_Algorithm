[Debugging a Custom Flash Loader | IAR](https://www.iar.com/knowledge/support/technical-notes/debugger/debugging-a-custom-flash-loader/)

# Debugging a Custom Flash Loader

## Technical Note 201118

Architectures:

Arm

Component:

debugger

Updated:

12/10/2020 10:14 AM

## Introduction

Creating a custom flash loader can be a tricky process, because it is difficult to debug flash loader activity the usual way. (See Technical Note [200214](https://www.iar.com/knowledge/support/technical-notes/debugger/logging-flash-loader-activity/) on how to log flash loader activity). This Technical Note shows an alternative way of debugging a flash loader under development.

For more information about developing custom flash loaders, see also the *Flash Loader Development Guide* in `$TOOLKIT_DIR$\doc\FlashLoaderGuide.ENU.pdf`.

## Discussion

During development of a custom flash loader, it is possible to use semihosting printf to debug flash loader activity. The general idea is to:

1. Build a flash loader project with semihosting `printf`
2. Configure the application project to produce a **Terminal I/O** log file

### Instructions

In this example, an STM32F429II-ACA board is used with an I-jet debug probe.

### Build a flash loader project with semihosting printf

1. Open the flash loader workspace from `$TOOLKIT_DIR$\src\flashloader` (in this example from `ST\FlashSTM32F4xx`)
   ![img](E:\0.个人文件\typora文件备份\Debugging a Custom Flash Loader  IAR Systems_figures\1_open_eww-1676689871908-10.png)

2. Select the correct configuration (in this example `FlashSTM32F4xxRAM192K_Dual`)
   ![img](E:\0.个人文件\typora文件备份\Debugging a Custom Flash Loader  IAR Systems_figures\2_select_configuration-1676689871908-12.png)

3. Confirm that **Project > Options > General Options > Library Configuration > stdout/stderr: Via semihosting** is selected.

   

4. Add a call to

    

   ```
   __iar_data_init3
   ```

    

   and a

    

   ```
   printf
   ```

    

   statement at the beginning of the

    

   ```
   FlashInit 
   ```

   function, like this:

   ```c
   __iar_data_init3(); // Required to initialize .bss
   parallelism = 1;
   blankcheck = 0;
   printf("Hello! World\n\n");
   printf("image_size:%d\n\n", image_size);
   ```

   

5. If you get a linker error [Lp005]: placement includes a mix of sections with content and sections without content, you need to modify the linker configuration file:
    \* Comment out the lines `do not initialize { zi }` or```  do not initialize { section .bss }`.
    \* Add a line `initialize by copy { readwrite }` if not already there.

6. Build and replace the flash loader .out file in `$TOOLKIT_DIR$\config\flashloader`
   (In this example in the ST folder)

   ![img](E:\0.个人文件\typora文件备份\Debugging a Custom Flash Loader  IAR Systems_figures\5_replace_flashloader-1676689871908-14.png)

### Configure the application project to produce a Terminal I/O log file

The flash loader printf output will not be visible in the **Terminal I/O** window. However, it will be logged in the Terminal I/O log file.

1. Open the STM32F429II-ACA LightEffects project from **Help > Information Center > Example Projects**.

   

2. Temporarily change the debugger driver to **Simulator** just in case the debug session cannot be launched with I-jet or other hardware debug probes (because of problems with the custom flash loader): **Project > Options > Debugger > Setup>Driver: Simulator

   **

3. Start a debug session by choosing **Project > Download and Debug**

   

4. Enable the **Terminal I/O** log file by choosing **Debug > Logging > Set Terminal I/O Log File
   **
   ![img](E:\0.个人文件\typora文件备份\Debugging a Custom Flash Loader  IAR Systems_figures\8_app_enable_logging.png)

   

5. Exit the debug session, and change the debugger driver back to I-jet: **Project > Options > Debugger > Setup>Driver: I-jet**

   

6. Start a new debug session by choosing **Project > Download and Debug**

   

7. Flash loader printf output is now recorded in the **Terminal I/O** log file.

   ![img](E:\0.个人文件\typora文件备份\Debugging a Custom Flash Loader  IAR Systems_figures\12_image_size-1676689871909-17.png)

## Conclusion

For debugging and logging details of custom flash loader development, semihosting printf and the **Terminal I/O** log file are useful.

*All product names are trademarks or registered trademarks of their respective owners.*