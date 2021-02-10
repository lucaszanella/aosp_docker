set -x
set -e

#cd disk
#rm -rf *

cd disk
mkdir -p aosp
cd aosp


#TAG_NAME=RQ1A.210105.003.2021.01.05.03
TAG_NAME=lz_experiments
mkdir grapheneos-$TAG_NAME
cd grapheneos-$TAG_NAME
repo init -u https://github.com/lucaszanella/platform_manifest

#repo init -u https://android.googlesource.com/platform/manifest

#repo init -u https://github.com/GrapheneOS/platform_manifest 
#-b android-11.0.0_r27

#To checkout a branch:
#repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1

#repo sync -c -j6

#TODO: make it work
#gpg --recv-keys 65EEFE022108E2B708CBFCF7F9E712E59AF5F22A
#cd .repo/manifests
#git verify-tag $(git describe)
#cd ../..

repo sync -j32
