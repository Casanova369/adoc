@echo off


chcp 65001
ECHO.
ECHO ╔╦╗┌─┐┌┐┌┌┬┐┬┌─┐┬ ┬┬─┐  ╔═╗┌─┐┬─┐┌─┐┌┬┐┌─┐┌┐┌┌┬┐ 
ECHO ║║║│ ││││ │││├┤ │ │├┬┘  ║ ╦├─┤├┬┘├─┤││││ ││││ ││ 
ECHO ╩ ╩└─┘┘└┘─┴┘┴└─┘└─┘┴└─  ╚═╝┴ ┴┴└─┴ ┴┴ ┴└─┘┘└┘─┴┘
ECHO.

color 05

:: Prompt the user to initialize a git repo
:start_again
SET /p value="Start a git repo? [Y/N] "

:: Store the values for "yes" and "no"
SET "yes=Y"
SET "no=N"

:: Check the user's response
if "%value%" equ "%no%" (
  :: If the user responds "no", cancel future operations
  color 06
  ECHO INFO: The operation was canceled.
  CMD /k

) else if "%value%" equ "%yes%"  (
  :: If the user responds "yes", configure the git repo locally
  color 07
  SET /p inputA="you@example.com? " 
  SET /p inputB="Your Name? "
  git init
  git config user.email %inputA%
  git config user.name %inputB%
  ECHO DONE: Repo initialized and configured!

  color 05
  set /p option=INFO: Choose an option!: 

  if "%option%"=="1" goto option1
  if "%option%"=="2" goto option2
  if "%option%"=="3" goto option3

) else (
  :: If the user responds with anything else, cancel future operations
  color 0c
  echo.
  echo WARN: The user is retarded!
  pause
  goto start_again
)

:option1
:option2
:option3
