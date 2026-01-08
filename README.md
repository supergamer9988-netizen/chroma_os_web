# Chroma OS: Fractal Singularity Edition (Web Simulator)

![Chroma OS Logo](https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=2564&auto=format&fit=crop)

**Experience the future of operating systems, running entirely in your browser.**

This repository contains the **Chroma OS Simulator**, a high-fidelity web-based demonstration of the "Fractal Singularity" architecture. It mimics the behavior of the crystal-zero write operating system, featuring a full window manager, simulated cross-platform state synthesis, and a unified settings environment.

## 🌟 Key Features

*   **Fractal Singularity Architecture**: Demonstrates the 4-step pipeline (Storage -> Memory -> Execution -> Visual).
*   **Universal Holographic Bridge**: Simulates running **Windows**, **Android**, and **iOS** applications simultaneously via state synthesis.
*   **Desktop Experience**:
    *   **Window Manager**: Mutli-tasking with draggable, resizable, and focus-aware windows (macOS style focus).
    *   **Start Menu**: Windows 11-style menu with pinned apps and search.
    *   **Taskbar & Tray**: Functional taskbar with running app indicators, Wi-Fi status, and clock.
*   **System Apps**:
    *   **Chroma Surf**: A functional web browser simulator.
    *   **Chroma Terminal**: Interactive command-line interface (`dir`, `ver`, `synth`).
    *   **Settings**: A massive styling unification of Windows, Mac, and Android settings into one neutral "Chroma" suite.
*   **Power Management**: Functional simulation of Sleep, Restart, and Shutdown states.

## 🚀 Live Demo

Simply open `index.html` in any modern web browser to boot the simulator.

## 🛠️ Usage

1.  **Launch Apps**: Click icons in the Start Menu or Taskbar.
2.  **Multitask**: Drag windows by the title bar. Click anywhere on a window to bring it to the front.
3.  **Terminal**: Type `help` in the terminal for a list of commands.
4.  **Settings**: Search for any setting (e.g., "Game Mode", "Face ID") in the universal settings app.

## 📥 How to Download & Use

### Option 1: Play the Simulator (Web Version)
You don't need to install anything!
1.  **Online**: Go to Settings > Pages in this repository to enable GitHub Pages, then play it via the provided URL.
2.  **Offline**:
    *   Click the green **<> Code** button above and select **Download ZIP**.
    *   Extract the folder.
    *   Double-click `index.html` to open the simulator in your browser.

### Option 2: Build the Real OS (For Advanced Users)
To generate the actual bootable `chroma_os.iso` for your computer:
1.  Download the repository (ZIP) as above.
2.  Navigate to the `source` folder.
3.  Ensure you have **Docker Desktop** installed on Windows.
4.  Double-click `build_iso.bat`.
5.  Wait for the "Factory" to finish compiling. The real `chroma_os.iso` (approx 2GB) will appear in the output folder.
6.  Burn this ISO to a USB stick using Rufus to boot real hardware.

---
(c) 2026 Antigravity Corp. All Rights Reserved.
