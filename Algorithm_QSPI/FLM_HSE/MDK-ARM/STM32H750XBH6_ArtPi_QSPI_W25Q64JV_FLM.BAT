SET PATH=D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin;D:\Program\VMware\bin\;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;F:\Programming\Python\Scripts\;F:\Programming\Python\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\dotnet\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files (x86)\Calibre2\;D;\Program\Matlab2018b\runtime\win64;D:\Program\PDFtk\bin\;D:\Program\Matlab2022a\runtime\win64;D:\Program\Matlab2022a\bin;C:\Program Files (x86)\dotnet\;C:\Program Files\Git\cmd;;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin;C:\Users\ß÷Ð¡ºÚ\AppData\Local\Microsoft\WindowsApps;F:\Programming\PyCharm Community Edition 2021.1.1\bin;D:\Program\anaconda\python;D:\Program\PyCharm Community Edition 2021.3.2\bin;C:\Users\ß÷Ð¡ºÚ\AppData\Local\JetBrains\Toolbox\scripts;D:\Program\Diffuse;C:\Users\ß÷Ð¡ºÚ\AppData\Local\Microsoft\WindowsApps;D:\Program\Microsoft VS Code\bin;C:\mingw64\bin;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin;C:\OpenOCD-20230103-0.12.0\bin
SET CPU_TYPE=STM32H750XBHx
SET CPU_VENDOR=STMicroelectronics
SET UV2_TARGET=STM32H750XBH6_ArtPi_QSPI_W25Q64JV_FLM
SET CPU_CLOCK=0x017D7840
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\main.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\gpio.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\quadspi.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_it.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_msp.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_cortex.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_qspi.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_rcc.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_rcc_ex.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_gpio.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_pwr.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_pwr_ex.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\stm32h7xx_hal_exti.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\system_stm32h7xx.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\flashdev.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\flashprg.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @".\output\w25q64jv.__i"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\ArmLink" --Via ".\Output\ArtPi_QSPI_W25Q64JV.lnp"
"D:\Program\Keil\Keil_v5\ARM\ARMCLANG\Bin\fromelf.exe" ".\Output\ArtPi_QSPI_W25Q64JV.axf" --i32combined --output ".\Output\ArtPi_QSPI_W25Q64JV.hex"
cmd.exe /C copy ".\Output\ArtPi_QSPI_W25Q64JV.axf" "..\Algorithms\ArtPi_QSPI_W25Q64JV.FLM"
