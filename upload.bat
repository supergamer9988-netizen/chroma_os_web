@echo off
set GIT="C:\Program Files\Git\cmd\git.exe"

echo [1/6] Initializing Git...
%GIT% init

echo [2/6] Adding Files...
%GIT% add .

echo [3/6] Committing...
%GIT% commit -m "Chroma OS Simulator Upload"

echo [4/6] Setting Branch...
%GIT% branch -M main

echo [5/6] Configuring Remote...
%GIT% remote remove origin 2>nul
%GIT% remote add origin https://github.com/supergamer9988-netizen/chroma_os_web.git

echo [6/6] Pushing to GitHub...
%GIT% push -u origin main

echo Done.
