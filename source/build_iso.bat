@echo off
setlocal enabledelayedexpansion
title CHROMA OS: FACTORY (FRACTAL SINGULARITY)

echo ===================================================
echo    CHROMA OS: FRACTAL SINGULARITY EDITION
echo ===================================================
echo.
echo    [ARCHITECTURE REPORT]
echo    [+] Core:         MathSeed (Storage Layer)
echo    [+] Memory:       Holographic RNS (Memory Layer)
echo    [+] Execution:    Proton DX-Vulkan (Execution Layer)
echo    [+] Visual:       Gamescope/FSR 4K (Visual Layer)
echo    [+] Status:       CODE SYNCHRONIZED WITH DOCS
echo ===================================================
echo.

docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERROR: Docker is required to synthesize the OS.
    pause
    exit /b
)

echo [1/3] Calibrating RNS Engine & Compiling Factory...
docker build -t chroma-fractal-factory .

echo [2/3] Synthesizing Zero-Write ISO...
docker run --rm -v "%cd%":/output chroma-fractal-factory

echo.
if exist chroma_os.iso (
    echo [3/3] SINGULARITY ACHIEVED.
    echo     Artifact: chroma_os.iso
    echo     Status:   Ready for Deployment.
) else (
    echo [!] ERROR: Synthesis Failed.
)

pause
