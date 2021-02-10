set -x
set -e

mkdir -p non_disk
cd non_disk
mkdir -p aosp
cd aosp

TAG_NAME=lz_experiments
mkdir emulator-$TAG_NAME
cd emulator-$TAG_NAME

repo init -u https://android.googlesource.com/platform/manifest -b aosp-emu-30-release --depth=1
repo sync -c -j8

pip3 install absl-py

#cd external/qemu
#python android/build/python/cmake.py 
#/home/project/non_disk/aosp/emulator-lz_experiments/prebuilts/cmake/linux-x86/bin/cmake', '--build', '/home/project/non_disk/aosp/emulator-lz_experiments/external/qemu/objs', '--target', 'install/strip