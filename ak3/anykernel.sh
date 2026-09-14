### AnyKernel3 Ramdisk Mod Script
## for a52sxq (Samsung Galaxy A52s 5G / SM-A528B) - icecat-kernel

### AnyKernel setup
# global properties
properties() { '
kernel.string=icecat-kernel by icecat8-lab
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a52sxq
device.name2=a52sxq5g
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
'; } # end properties

### AnyKernel install
## boot shell variables
block=boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=0;

## import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

## boot install
dump_boot;

# no ramdisk/cmdline patching needed - Image swap + modules only
write_boot;
## end boot install

## begin ramdisk changes
## (intentionally empty - this build only replaces the kernel Image and
##  the vendor touch/camera/BT modules listed in modules/vendor/lib/modules/)
## end ramdisk changes
