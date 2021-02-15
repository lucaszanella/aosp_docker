#!/bin/bash
cd ${COMPILED_EMULATOR_DIR}

function from_compiled_android {
    DIR_OUT=$GEN_OUT_GEN_x86_64
    KERNEL1=${AOSP_ROOT}/prebuilts/qemu-kernel/x86_64/5.4/kernel-qemu2
    KERNEL2=$DIR_OUT/kernel-ranchu

    ./emulator -sysdir $DIR_OUT/system -datadir $DIR_OUT/data -kernel $KERNEL2 -ramdisk $DIR_OUT/ramdisk-qemu.img -system $DIR_OUT/system-qemu.img -data $DIR_OUT/userdata-qemu.img -cache $DIR_OUT/cache.img -vendor $DIR_OUT/vendor-qemu.img
}

function from_sdk_android {
    DIR_OUT=/workspace/project/sdk/Sdk/system-images/android-30/google_apis/x86/
    KERNEL1=${AOSP_ROOT}/prebuilts/qemu-kernel/x86_64/5.4/kernel-qemu2
    KERNEL2=$DIR_OUT/kernel-ranchu
    KERNEL3=${DIR_OUT}/kernel-ranchu-64

    ./emulator -sysdir $DIR_OUT/data/system -datadir $DIR_OUT/data -kernel $KERNEL3 -ramdisk $DIR_OUT/ramdisk.img -system $DIR_OUT/system.img -data $DIR_OUT/userdata.img -vendor $DIR_OUT/vendor-qemu.img
}

from_compiled_android
#from_sdk_android