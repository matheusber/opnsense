#!/bin/sh

# Script to make sdcard using EDK2 for Nanopi R5S
# 22/07/2024 - By Matheus NDN

DEV=$1

dd if=NANOPI-R5S_EFI.img of=/dev/$DEV seek=64 bs=512 conv=sync
dd if=NANOPI-R5S_EFI.itb of=/dev/$DEV seek=16384 bs=512 conv=sync


