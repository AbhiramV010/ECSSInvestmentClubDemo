@echo off
cd /d "%~dp0"
where python >nul 2>nul || (echo Python was not found on PATH. Install it from python.org and try again. & pause & exit /b 1)
start "Investment Game Server (close to stop)" python -m http.server 6767 --bind 127.0.0.1
ping -n 3 127.0.0.1 >nul
start "" http://127.0.0.1:6767
