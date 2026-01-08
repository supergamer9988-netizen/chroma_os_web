# Chroma OS v1.0 "Singularity" - Release Notes

**Status:** Gold Master Candidate
**Build:** 1.0.0 (The Hive Mind)

---

## 🚀 Pre-Flight Checklist (Critical)
Before booting `chroma_os.iso` on real hardware, please review the following:

### 1. BIOS/UEFI Settings
*   **Secure Boot:** **MUST BE DISABLED**. The Chroma Kernel is custom-built and does not carry a Microsoft Digital Signature.
*   **Boot Mode:** **UEFI** recommended. (Legacy BIOS is supported via GRUB hybrid boot, but UEFI is preferred).

### 2. The "Glitch" Moment
*   During boot, you will see standard Linux text, followed by a momentary screen flicker or "glitch".
*   **This is normal.** It marks the transition where the **Chroma Kernel** seizes control of the Frame Buffer from the bootloader.
*   The Dashboard will appear immediately after.

### 3. Hardware Compatibility
*   **Input**: USB Mouse/Keyboard are 100% supported.
*   **Network**: WiFi support depends on Linux firmware availability. If WiFi fails, use **Ethernet (LAN)** for the initial "Hive Pattern" download.

---

## 🔮 System Philosophy
Chroma OS is not just software; it is a proof of concept for a new era of computing:

*   **Speed**: Achieved through intelligence (RNS/HDC), not just raw power.
*   **Stability**: Achieved through resilience (Phoenix Protocol).
*   **Compatibility**: Achieved through translation (Universal Bridge).

---
*Ready for the Singularity.*
