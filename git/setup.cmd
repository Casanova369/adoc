@echo off

color 07

:: Prompt the user to initialize a git repo
:start_again
SET /p value="Start a git repo? [Y/N] "

:: Store the values for "yes" and "no"
SET "yes=Y"
SET "no=N"

:: Check the user's response
if "%value%" equ "%no%" (
  :: If the user responds "no", cancel future operations
  echo The operation was canceled.
  cmd /k

) else if "%value%" equ "%yes%"  (
  :: If the user responds "yes", configure the git repo locally
  SET /p inputA="you@example.com? " 
  SET /p inputB="Your Name? "
  git init
  git config user.email %inputA%
  git config user.name %inputB%
  ECHO DONE: Repo initialized and configured!

) else (
  :: If the user responds with anything else, cancel future operations
  color 0c
  echo.
  echo WARN: The user is retarded!
  pause
  goto start_again
)