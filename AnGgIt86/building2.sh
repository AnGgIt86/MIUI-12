#!/sbin/sh
#Prebuild Common MIUI 12

#Add to product build.prop
/sbin/busybox echo "ro.sys.sdcardfs=0" >> /system/system/product/build.prop
/sbin/busybox echo "persist.sys.disable_rescue=true" >> /system/system/product/build.prop
/sbin/busybox echo "ro.control_privapp_permissions=disable" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.low=1001" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.medium=0" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.critical=0" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.critical_upgrade=false" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.upgrade_pressure=100" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.downgrade_pressure=100" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.kill_heaviest_task=true" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.kill_timeout_ms=100" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.use_minfree_levels=true" >> /system/system/product/build.prop
/sbin/busybox echo "ro.lmk.log_stats=true" >> /system/system/product/build.prop

exit 0;