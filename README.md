# Scripts for building opnsense (https://opnsense.org) focused on ARM64 targets
This files aim for Nanopi R5S and R4S, and Orange Pi 5 Plus. Can be used for other ARM64 systems, and also for building images for AMD64 if desired as well.

The scripts use the 1.98 version of Realtek 2.5Gbps driver (https://www.freshports.org/net/realtek-re-kmod198/), the last known version that works on R5S. Orange Pi 5 Plus needs also the same driver.

In the case for R5S, both EDK2 and U-BOOT firmware are supported. As the latter is under development and testing under FreeBSD, no image is published yet.
## How-to use
- Writing to the sdcard or USB storage:
  - ```
    dd if=image_file of=/dev/STORAGE_DEV bs=1m status=progress conv=sync
    ```
## Caveats
- First boot on devices that use the 1.98 Realtek driver (for now, R5S and OP5P) needs to have all network cables disconnected. Might be a bug on the driver, I don't know how to explain this yet :(
## TO-DO
- Wait for sdcard support for rk3588
## News
- 2025-12-07: Due to storage problems and the Holiday Season, I won't be able to build 25.7.9 Images. In about two weeks I will have new hardware to rebuild the ARM64 box.
  
