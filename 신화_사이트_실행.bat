@echo off
chcp 65001 > nul
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (
 echo [ERROR] Node.js is not installed or not on PATH.
 echo Install Node.js LTS from https://nodejs.org/
 pause
 exit /b 1
)
start "" "http://localhost:3000"
node server.js
pause
