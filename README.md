# Scripts for building opnsense (https://opnsense.org) focused on ARM64 targets
This files aim for Nanopi R5S and R4S. Can be used for other ARM64 systems, and also for AMD64 if desired as well.

The scripts use the 1.98 version of Realtek 2.5Gbps driver (https://www.freshports.org/net/realtek-re-kmod198/), the last known version that works on R5S. Both EDK2 and U-BOOT firmware are supported, but the latter is under development and testing, so no image is published yet.
## How-to use
- Writing to the sdcard:
  - ```
    dd if=image_file of=/dev/SDCARD_DEV bs=1m status=progress conv=sync
    ```
## Caveats
- First boot on R5S needs to have all network cables disconnected. Might be a bug on the driver, I don't know how to explain this yet :(
## TO-DO
- Change extras.conf to not generate /boot/loader.conf.local loading realtek-kmod 1.98 for R4S (not needed)
