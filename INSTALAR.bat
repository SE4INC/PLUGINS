@echo off
REM Instala MilagrosAfina.vst3 para FL Studio (ejecutar como administrador)
net session >nul 2>&1
if %errorlevel% neq 0 (
  echo Haz clic derecho en este archivo y elige "Ejecutar como administrador".
  pause
  exit /b 1
)
set DEST=%CommonProgramFiles%\VST3
if not exist "%DEST%" mkdir "%DEST%"
xcopy /E /I /Y "%~dp0MilagrosAfina.vst3" "%DEST%\MilagrosAfina.vst3"
echo.
echo Listo. En FL Studio: Options ^> Manage plugins ^> Find plugins.
pause
