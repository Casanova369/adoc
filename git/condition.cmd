@echo off

set expected_value=Hello, world!

set /p user_input=Enter a string: 

if /i "%user_input%" equ "%expected_value%" (
    echo The strings are equal.
) else (
    echo The strings are not equal.
)