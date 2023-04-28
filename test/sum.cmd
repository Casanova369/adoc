@echo off
:addition
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=num1+num2
echo The sum of %num1% and %num2% is %result%.
rem type in the console: "call add.cmd :addition"