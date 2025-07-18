@echo off
echo welcome to the electromod installation script!
echo are you sure you want to install electromod? press any key to proceed, otherwise, close this Window
echo.
echo.
echo.
pause

echo proceeding...
timeout /t 2 /nobreak > nul 2>nul
echo closing discord... this is needed to complete the installation

taskkill /F /im "discord.exe" > nul 2> nul
taskkill /F /im "discord.exe" > nul 2> nul
taskkill /F /im "discord.exe" > nul 2> nul
taskkill /F /im "discord.exe" > nul 2> nul

timeout /t 3 /nobreak > nul 2>nul

echo replacing core.asar

if exist "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" (
    copy /y "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar.backup" > nul 2>nul
)
if exist "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" (
    del /f /q "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" > nul 2>nul
)

curl -L https://github.com/Touchcreator/ElectroMod/releases/download/dev/core.asar --output "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" > nul 2>nul

echo adding extra files

if exist "\ElectroMod\" (
    rmdir "\ElectroMod" > nul 2>nul
)
mkdir "\ElectroMod\" > nul 2>nul

curl -L https://github.com/Touchcreator/ElectroMod/releases/download/dev/mod.js --output "\ElectroMod\mod.js" > nul 2>nul
curl -L https://github.com/Touchcreator/ElectroMod/releases/download/dev/theme.css --output "\ElectroMod\theme.css" > nul 2>nul

C:\Windows\System32\TIMEOUT.exe /t 1 /nobreak > nul 2> nul

echo.
echo.
echo electromod should be installed!
echo update: you will also need open asar.
pause

echo.
echo.

echo tap a key to install.

echo replacing app.asar
if exist "%localappdata%\Discord\app-1.0.9199\resources\app.asar" (
    copy /y "%localappdata%\Discord\app-1.0.9199\resources\app.asar" "%localappdata%\Discord\app-1.0.9199\resources\app.asar.backup" > nul 2>nul
)

if exist "%localappdata%\Discord\app-1.0.9199\resources\app.asar" (
    del /f /q "%localappdata%\Discord\app-1.0.9199\resources\app.asar" > nul 2>nul
)    
curl -L https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar --output "%localappdata%\Discord\app-1.0.9199\resources\app.asar" > nul 2>nul

echo.
echo.
echo installation complete!
echo discord should now be open. thanks for considering electromod!
start "" "%localappdata%\Discord\Update.exe" --processStart Discord.exe > nul 2> nul
pause