# Hackintosh B450 + Ryzen 3600X + RX 5600 XT - macOS Sonoma 14

OpenCore EFI configuration for:
- **Motherboard:** MSI B450 MORTAR MAX
- **CPU:** AMD Ryzen 3600X (Matisse)
- **GPU:** AMD RX 5600 XT (Navi 10)
- **OS:** macOS Sonoma 14.x

## Latest Kexts (April 2026)

| Kext | Version | Purpose |
|------|---------|---------|
| OpenCore | 1.0.7 | Bootloader |
| Lilu | 1.7.2 | Dependency |
| WhateverGreen | 1.7.0 | GPU patches |
| AppleALC | 1.9.7 | Audio (ALC892) |
| VirtualSMC | 1.3.7 | SMC emulator |
| NVMeFix | 1.1.3 | NVMe power management |
| RestrictEvents | 1.1.6 | Memory warnings fix |

## Boot Args

```
-v keepsyms=1 amdfx.prebuilt=1 -radcodec -cdfon agdpmod=pikera
```

**Important for RX 5600 XT:** `agdpmod=pikera` is REQUIRED for display output.

## BIOS Settings

- CSM: **OFF** (Required for Navi GPUs)
- Above 4G Decoding: **Enabled**
- PCIe Gen: **Gen3** (force)
- USB XHCI Hand-off: **Enabled**
- Windows 8/10 WHQL: **Disabled**
- SVM Mode: **Enabled** (for virtualization)

## Features

- ✅ Native CPU power management (Ryzen 3000 series)
- ✅ RX 5600 XT full acceleration
- ✅ Audio via AppleALC (Layout ID: alcid=1)
- ✅ NVMe power management
- ✅ USB 3.0/2.0 working
- ✅ Sleep/Wake support

## Installation Notes

1. Format USB as GPT with HFS+ (macOS Extended)
2. Copy EFI folder to USB's EFI partition
3. Boot from USB
4. Run macOS Installer
5. After installation, copy EFI to SSD's EFI partition

## SMBIOS

Uses MacPro7,1 - generates unique serials before use!

## Credit

- [Acidanthera](https://github.com/acidanthera) - OpenCore, Lilu, WhateverGreen, AppleALC
- [Dortania's OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)
