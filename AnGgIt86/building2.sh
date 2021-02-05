#!/sbin/sh
<<<<<<< HEAD
#Prebuild Common MIUI 12 NFS Projects
=======
#Prebuild Common MIUI 12
>>>>>>> FETCH_HEAD

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
<<<<<<< HEAD
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# Enable backlight notify to displayfeature" >> /system/system/product/build.prop
/sbin/busybox echo "ro.xiaomi.bl.notify=0" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# displayfeature use poll to monitor backlight brightness" >> /system/system/product/build.prop
/sbin/busybox echo "ro.xiaomi.bl.poll=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#support unlimited color temperature adjust" >> /system/system/product/build.prop
/sbin/busybox echo "ro.colorpick_adjust=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#Property for display feature histogram" >> /system/system/product/build.prop
/sbin/busybox echo "ro.displayfeature.histogram.enable=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#Enable SAR feature for E4" >> /system/system/product/build.prop
/sbin/busybox echo "persist.radio.dynamic_sar=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#system property for displayfeature hidl" >> /system/system/product/build.prop
/sbin/busybox echo "sys.displayfeature_hidl=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#system property for HBM mode" >> /system/system/product/build.prop
/sbin/busybox echo "sys.displayfeature.hbm.enable=false" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# FM" >> /system/system/product/build.prop
/sbin/busybox echo "ro.fm.transmitter=false" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# Dalvik" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heapstartsize=8m" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heapgrowthlimit=192m" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heapsize=512m" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heaptargetutilization=0.75" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heapminfree=512k" >> /system/system/product/build.prop
/sbin/busybox echo "dalvik.vm.heapmaxfree=8m" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# SurfaceFlinger" >> /system/system/product/build.prop
/sbin/busybox echo "ro.surface_flinger.protected_contents=true" >> /system/system/product/build.prop
/sbin/busybox echo "ro.surface_flinger.max_frame_buffer_acquired_buffers=3" >> /system/system/product/build.prop
/sbin/busybox echo "ro.surface_flinger.max_virtual_display_dimension=4096" >> /system/system/product/build.prop
/sbin/busybox echo "ro.surface_flinger.force_hwc_copy_for_virtual_displays=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#add for screen fliker" >> /system/system/product/build.prop
/sbin/busybox echo "debug.gralloc.gfx_ubwc_disable=1" >> /system/system/product/build.prop
/sbin/busybox echo "debug.gralloc.enable_fb_ubwc=1" >> /system/system/product/build.prop
/sbin/busybox echo "sdm.debug.rotator_disable_ubwc=1" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#Disable Skip Validate" >> /system/system/product/build.prop
/sbin/busybox echo "sdm.debug.disable_skip_validate=1" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "# Display Properties as per treble compliance" >> /system/system/product/build.prop
/sbin/busybox echo "vendor.gralloc.enable_fb_ubwc=1" >> /system/system/product/build.prop
/sbin/busybox echo "vendor.display.disable_skip_validate=1" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#disable UBWC for camera" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.preview.ubwc=0" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.isp.clock.optmz=0" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.isp.turbo=1" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.imglib.usefdlite=1" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.expose.aux=1" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.HAL3.enabled=1" >> /system/system/product/build.prop
/sbin/busybox echo "persist.vendor.camera.mpo.disabled=1" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#add this prop can open or close sar mode" >> /system/system/product/build.prop
/sbin/busybox echo "persist.sar.mode.switch.on=true" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "#for extm config, here is for dev" >> /system/system/product/build.prop
/sbin/busybox echo "persist.lm.em.enabled=1" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
/sbin/busybox echo "import /system/AnGgIt86/nfs.prop" >> /system/system/product/build.prop
/sbin/busybox echo "" >> /system/system/product/build.prop
=======
>>>>>>> FETCH_HEAD

exit 0;