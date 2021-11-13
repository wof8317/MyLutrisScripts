@echo off
color 0F
c:\
goto launcher

:launcher
cls
echo.
echo.
echo.	-----------------------------------------------------
echo.		     Unreal II: The Awakening - GOG
echo.	-----------------------------------------------------
echo.
echo.	1) Play Unreal 2 Single Player
echo.	2) Play Unreal 2 Multiplayer
echo.	3) Exit
echo.
echo.	-----------------------------------------------------
echo.
echo.   Your choice? [1-3]:
choice /c123 /s /N
if errorlevel 3 goto :exit
if errorlevel 2 goto :multi
if errorlevel 1 goto :single

:single
cd c:\GOG Games\Unreal 2 - The Awakening\singleplayer\System\
start Unreal2.exe
goto :launcher

:multi
cd c:\GOG Games\Unreal 2 - The Awakening\multiplayer\SYSTEM\
start U2XMP.exe
goto :launcher

:exit
exit
