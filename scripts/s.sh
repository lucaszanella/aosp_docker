#run like this: source s.sh
ORIGINAL_DIR=$PWD
cd $AOSP_ROOT
source build/envsetup.sh
choosecombo release aosp_x86_64 userdebug
cd $ORIGINAL_DIR