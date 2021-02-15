#!/bin/bash
cd ${AOSP_ROOT}

cd prebuilts/android-emulator/linux-x86_64

DIR_OUT=$GEN_OUT_GEN_x86_64

./emulator -sysdir $DIR_OUT/system -datadir $DIR_OUT/data -kernel ${AOSP_ROOT}/prebuilts/qemu-kernel/x86_64/5.4/kernel-qemu2 -ramdisk $DIR_OUT/ramdisk-qemu.img -system $DIR_OUT/system.img -data $DIR_OUT/userdata-qemu.img -cache $DIR_OUT/cache.img -vendor $DIR_OUT/vendor.img