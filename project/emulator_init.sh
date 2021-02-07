set -x
set -e

cd disk
mkdir -p aosp
cd aosp

TAG_NAME=lz_experiments
mkdir emulator-$TAG_NAME
cd emulator-$TAG_NAME

repo init -u https://android.googlesource.com/platform/manifest -b aosp-emu-30-release --depth=1
repo sync -c -j8

pip install absl-py

#cd external/qemu
#python android/build/python/cmake.py 
