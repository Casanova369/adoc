@echo off

:: TODO (GASS): Git 
SET /p value="Sure you want to remove git credentials? [Y/N] "
SET "yes=Y"
SET "no=N"

if "%value%" equ "%no%" (
  color 06
  ECHO INFO: The operation was canceled.
  CMD /k
) else if "%value%" equ "%yes%"  (
  cmdkey /delete:git:https://github.com
  ECHO DONE: Credentials removed successfully!
) else (
  echo WARN: The user is retarded!
  pause
)