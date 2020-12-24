mkdir aosp && cd aosp
repo init -u https://android.googlesource.com/platform/manifest
#To checkout a branch:
#repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1

repo sync -c -j6