# M20 NetHunter Pro
## Official Stable Build for SM-M205F (Exynos 7904)

Custom Kali NetHunter Kernel for Samsung Galaxy M20 (Exynos 7904) featuring:
- USB HID Gadget support for keyboard emulation
- External Wi-Fi Monitor Mode (ATH9K_HTC, RTL8187)
- mac80211 monitor mode enabled
- DM-Verity & ForceEncrypt disabled for TWRP
- Optimized for stability and compatibility

### Device Compatibility
- **Model**: Samsung Galaxy M20 (SM-M205F)
- **SoC**: Exynos 7904 (Octa-core ARM Cortex-A53)
- **Android**: LineageOS 18.1+ / Android 11+
- **Recovery**: TWRP 3.6+

### Features
- USB Gadget HID (ConfigFS) - keyboard/terminal emulation
- External USB Wi-Fi adapter support
- Monitor mode for network auditing
- Magisk root compatible

### Installation
1. Download `M20-NetHunter-Pro-Stable-V1.zip`
2. Boot into TWRP recovery
3. Flash the ZIP
4. Reboot to system

### Build Info
- Kernel: 4.9.x based
- Architecture: arm64
- Compression: GZIP (for boot compatibility)

---
*Built for educational and security research purposes.*