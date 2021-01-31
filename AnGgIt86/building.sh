#!/sbin/sh
#Prebuild Common MIUI 12 Q

# Remove dir
rm -rf /system/res/images/charger/*
rm -rf /system/system/app/FingerprintExtensionService
rm -rf /system/system/app/GFTest1
rm -rf /system/system/app/MiuiCompass
rm -rf /system/system/app/Email
rm -rf /system/system/app/Health
rm -rf /system/system/app/MiuiWallpaper
rm -rf /system/system/etc/firmware
rm -rf /system/system/etc/device_features
rm -rf /system/system/etc/dualcamera_in.png
rm -rf /system/system/etc/dualcamera.png
rm -rf /system/system/framework/com.fingerprints.extension.jar
rm -rf /system/system/lib/vndk-29/android.hardware.nfc*
rm -rf /system/system/lib/libmorpho*
rm -rf /system/system/lib64/vndk-29/android.hardware.nfc*
rm -rf /system/system/lib64/libmorpho*
rm -rf /system/system/priv-app/DiracAudioControlService
rm -rf /system/system/priv-app/MiuiScanner
rm -rf /system/system/priv-app/MiuiCamera
rm -rf /system/system/product/app/LatinImeGoogle
rm -rf /system/system/product/priv-app/Velvet
rm -rf /system/system/product/overlay/Accent*
rm -rf /system/system/product/overlay/IconPack*
rm -rf /system/system/product/overlay/DisplayCutout*
rm -rf /data/system/package_cache

# Fingerprint selinux
/sbin/busybox echo "goodix.fp                        u:object_r:gx_fpd_service:s0" >> /system/system/etc/selinux/plat_service_contexts;
/sbin/busybox echo "persist.sys.fp.sensor            u:object_r:fp_service:s0" >> /system/system/etc/selinux/plat_service_contexts;

# Boot add dsp
/sbin/busybox echo "" >> /system/init.miui.rc;
/sbin/busybox echo "import /init.miui.dsp.rc" >> /system/init.miui.rc;

# Media
cp -fpr /vendor/etc/media_profiles_vendor.xml /system/system/etc/media_profiles_msm8953_v1.xml

# Ota By NFS Projects
/sbin/busybox echo "" >> /system/system/build.prop;
/sbin/busybox echo "import /system/AnGgIt86/nfs.prop" >> /system/system/build.prop;
