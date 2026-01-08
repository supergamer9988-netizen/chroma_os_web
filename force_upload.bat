@echo off
set GIT="C:\Program Files\Git\cmd\git.exe"

echo [1/4] RESETTING (Force Mode)...
%GIT% init
%GIT% add .
%GIT% commit -m "Force Update Simulator"

echo [2/4] Setting Main Branch...
%GIT% branch -M main

echo [3/4] Linking Remote...
%GIT% remote remove origin 2>nul
%GIT% remote add origin https://github.com/supergamer9988-netizen/chroma_os_web.git

echo [4/4] FORCE PUSHING (Overwrite)...
%GIT% push -u origin main --force

echo.
echo ==========================================
echo If you see a login window, please sign in.
echo If "Everything up-to-date", it worked.
echo ==========================================
pause
