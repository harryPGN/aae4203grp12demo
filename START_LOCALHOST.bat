@echo off
setlocal
cd /d "%~dp0"
title PolyU Positioning Lab - Localhost Server

echo ================================================
echo   PolyU Positioning Lab - Localhost Launcher
echo ================================================
echo.
echo Starting local web server at http://127.0.0.1:8000
 echo Keep this window open while using the website.
echo Press Ctrl+C in this window to stop the server.
echo.

where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8000
  py -3 -m http.server 8000 --bind 127.0.0.1
  goto :end
)

where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8000
  python -m http.server 8000 --bind 127.0.0.1
  goto :end
)

echo ERROR: Python 3 was not found.
echo Install Python 3, then double-click this file again.
pause

:end
endlocal
