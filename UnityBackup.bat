@echo off
setlocal enabledelayedexpansion

echo You may need to run this as an administrator for it to copy correctly.

set /p "source=Enter the source root directory (e.g., P:\Project): "
set /p "destination=Enter the destination root directory (e.g., P:\ProjectCopy): "

echo Creating a backup of Unity assets...

pushd "%source%"
set "sourceDir=!CD!"
popd

powershell -Command "robocopy '%source%' '%destination%' /E /Z /ZB /R:5 /W:5 /MT:8 /XD Library Temp /XF *.unityproj *.sln *.csproj *.userprefs /TEE /NP /ETA /LOG+:backup_log.txt

echo Backup completed!

pause
