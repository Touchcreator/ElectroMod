@echo off
echo welcome to the electromod uninstaller script!
echo are you sure you want to uninstall electromod? press any key to proceed, otherwise, close this Window
echo.
echo.
echo.
pause

echo proceeding...
timeout /t 2 /nobreak > nul 2>nul

if exist "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar.backup" (

    echo closing discord... this is needed to complete the uninstall

    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul

    timeout /t 3 /nobreak > nul 2>nul

    if exist "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" (
        del /f /q "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar" > nul 2>nul
        ren "%localappdata%\Discord\app-1.0.9199\modules\discord_desktop_core-1\discord_desktop_core\core.asar.backup" "core.asar"
        if exist "\ElectroMod\" (
            echo deleting extra files...
            rmdir "\ElectroMod" > nul 2>nul
        )

    C:\Windows\System32\TIMEOUT.exe /t 1 /nobreak > nul 2> nul

    echo.
    echo.
    echo electromod should be uninstalled!
    echo if its not, you may have done something wrong.
    pause    
    ) else (
        echo you dont have a core.asar file! how were you using discord?
        pause
        exit
    )

) else (
    echo you dont have a core.asar.backup file! reinstall discord instead.
    pause
    exit
)

echo uninstalling openasar
if exist "%localappdata%\Discord\app-1.0.9199\resources\app.asar.backup" (
    echo closing discord... this is needed to complete the uninstall (again)

    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul
    taskkill /F /im "discord.exe" > nul 2> nul

    if exist "%localappdata%\Discord\app-1.0.9199\resources\app.asar" (
        del /f /q "%localappdata%\Discord\app-1.0.9199\resources\app.asar" > nul 2>nul
        ren "%localappdata%\Discord\app-1.0.9199\resources\app.asar.backup" "app.asar"
        echo done
        pause
        exit
    ) else (
        echo NO APP.ASAR?? WHAT DID TOU DO?
        pause
        exit
    )
) else (
    echo you dont seem to have a backup app.asar.... but its alright cus open asar is cool
    pause
    exit
)