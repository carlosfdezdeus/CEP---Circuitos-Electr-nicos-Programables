@echo off
rem load_sw_Vivado_s7.bat (version 1.0)

setlocal
if %1.==. goto sintax

call C:\Xilinx\Vivado\2018.3\bin\vivado.bat -mode batch -source load_sw_Vivado_s7.tcl -notrace -tclargs %1

del /F *.jou
del /F *.log

@echo off
goto end

:sintax
@echo ----------------------------------------------
@echo Command line syntax for batch file load_sw_Vivado_s7.bat
@echo load_sw_Vivado_s7.bat bit_file
@echo ----------------------------------------------
:end
endlocal
pause