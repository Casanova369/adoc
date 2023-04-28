@echo off

rem Lists previous git config 
echo The previous git config
git config --list
echo.

rem Unset git local credentials
git config --global --unset credential.helper

rem Prompt for new user config and email address 
set /p set_user=Enter new `git config user.name "your_user"`: 
set /p set_eadd=Enter new `git config user.email "your_eadd"`: 
git config --global user.name "%set_user%"
git config --global user.email "%set_eadd%"

rem List updated git config
echo The up to date git config
git config --list
echo.

echo Process finished successfully!

rem Keep the command prompt window open 
pause

:: Mondieur G
:: garamoundier.developer@protonmail.com

:: Casanova
:: contato.gabrielcasanova@gmail.com