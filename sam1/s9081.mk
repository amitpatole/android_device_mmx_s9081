# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/mmx/s9081/s9081-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/mmx/s9081/overlay

<<<<<<< HEAD
PRODUCT_AAPT_CONFIG := normal hdpi
=======
PRODUCT_AAPT_CONFIG := normal hdpi mdpi
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_LOCALES := \
	en_GB \

# Permission files
PRODUCT_COPY_FILES += \
 frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Board-specific init
PRODUCT_COPY_FILES += \
<<<<<<< HEAD
	$(LOCAL_PATH)/root/init.rc:root/init.rc \
=======
	$(LOCAL_PATH)//root/init.rc:root/init.rc \
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
	$(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/root/init.project.rc:root/init.project.rc \
	$(LOCAL_PATH)/root/advanced_meta_init.project.rc:root/advanced_meta_init.project.rc \
	$(LOCAL_PATH)/root/advanced_meta_init.rc:root/advanced_meta_init.rc \
	$(LOCAL_PATH)/root/init.aee.customer.rc:root/init.aee.customer.rc \
	$(LOCAL_PATH)/root/init.factory.rc:root/init.factory.rc \
	$(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/root/init.xlog.rc:root/init.xlog.rc \
	$(LOCAL_PATH)/root/meta_init.rc:root/meta_init.rc \

<<<<<<< HEAD
# Modules
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/files/lib/modules/aed.ko:system/lib/modules/aed.ko \
    $(LOCAL_PATH)/files/lib/modules/alps_core.ko:system/lib/modules/alps_core.ko \
    $(LOCAL_PATH)/files/lib/modules/ccci.ko:system/lib/modules/ccci.ko \
    $(LOCAL_PATH)/files/lib/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
    $(LOCAL_PATH)/files/lib/modules/ccmni.ko:system/lib/modules/ccmni.ko \
    $(LOCAL_PATH)/files/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    $(LOCAL_PATH)/files/lib/modules/devapc.ko:system/lib/modules/devapc.ko \
    $(LOCAL_PATH)/files/lib/modules/devinfo.ko:system/lib/modules/devinfo.ko \
    $(LOCAL_PATH)/files/lib/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    $(LOCAL_PATH)/files/lib/modules/m4u.ko:system/lib/modules/m4u.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_drvb_77.ko:system/lib/modules/mtk_drvb_77.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_fm_priv.ko:system/lib/modules/mtk_fm_priv.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_hif_sdio_mt6620.ko:system/lib/modules/mtk_hif_sdio_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_hwe.ko:system/lib/modules/mtk_hwe.ko \
    $(LOCAL_PATH)/files/lib/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_bt_mt6620.ko:system/lib/modules/mtk_stp_bt_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_gps_mt6620.ko:system/lib/modules/mtk_stp_gps_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_sdio.ko:system/lib/modules/mtk_stp_sdio.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_sdio_mt6620.ko:system/lib/modules/mtk_stp_sdio_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_uart_mt6620.ko:system/lib/modules/mtk_stp_uart_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_stp_wmt_mt6620.ko:system/lib/modules/mtk_stp_wmt_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
    $(LOCAL_PATH)/files/lib/modules/mtk_wmt_wifi_mt6620.ko:system/lib/modules/mtk_wmt_wifi_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/p2p_mt6620.ko:system/lib/modules/p2p_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/p2p_mt6628.ko:system/lib/modules/p2p_mt6628.ko \
    $(LOCAL_PATH)/files/lib/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
    $(LOCAL_PATH)/files/lib/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
    $(LOCAL_PATH)/files/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/files/lib/modules/sec.ko:system/lib/modules/sec.ko \
    $(LOCAL_PATH)/files/lib/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko \
    $(LOCAL_PATH)/files/lib/modules/wlan_mt6620.ko:system/lib/modules/wlan_mt6620.ko \
    $(LOCAL_PATH)/files/lib/modules/wlan_mt6628.ko:system/lib/modules/wlan_mt6628.ko \
    
# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    $(LOCAL_PATH)/files/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/files/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    $(LOCAL_PATH)/files/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/files/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/files/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
=======
# Configs (@Sandip Move it to Vendors Just keep qwerty* , generic , avrcp we  don't need to keep it all here move to vendors)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    $(LOCAL_PATH)/files/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/files/usr/keychars/mtk-kpd.kcm:system/usr/keychars/mtk-kpd.kcm \
    $(LOCAL_PATH)/files/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    $(LOCAL_PATH)/files/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    $(LOCAL_PATH)/files/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/files/usr/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/files/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/files/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    $(LOCAL_PATH)/files/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
    $(LOCAL_PATH)/files/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/files/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# OMX
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/files/omx/libMtkOmxAacDec.so:system/lib/libMtkOmxAacDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxAacEnc.so:system/lib/libMtkOmxAacEnc.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxAmrEnc.so:system/lib/libMtkOmxAmrEnc.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxAMRNBDec:system/lib/libMtkOmxAMRNBDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxAMRWBDec:system/lib/libMtkOmxAMRWBDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxApeDec.so:system/lib/libMtkOmxApeDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxAwbEnc.so:system/lib/libMtkOmxAwbEnc.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxCookDec.so:system/lib/libMtkOmxCookDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxCore.so:system/lib/libMtkOmxCore.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxFlacDec.so:system/lib/libMtkOmxFlacDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxG711Dec.so:system/lib/libMtkOmxG711Dec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxMp3Dec.so:system/lib/libMtkOmxMp3Dec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxVdec.so:system/lib/libMtkOmxVdec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxVenc.so:system/lib/libMtkOmxVenc.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxVorbisDec.so:system/lib/libMtkOmxVorbisDec.so \
	$(LOCAL_PATH)/files/omx/libMtkOmxVorbisEnc.so:system/lib/libMtkOmxVorbisEnc.so 

<<<<<<< HEAD
# Releasetools 
## let's hash it out for now
#PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/etc/vold.fstab:system/etc/vold.fstab
=======
# Releasetools [ @Sandip Do we really need it now ] 
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/etc/vold.fstab:system/etc/vold.fstab 

# Sensors
PRODUCT_COPY_FILES += \
    vendor/mmx/s9081/proprietary/lib/hw/sensors.mt6577.so:system/lib/hw/sensors.mt6577.so \
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f

# Firmware (MT6***)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/etc/firmware/catcher_filter.bin:system/etc/firmware/catcher_filter.bin \
    $(LOCAL_PATH)/files/etc/firmware/DSP_ROM:system/etc/firmware/DSP_ROM \
    $(LOCAL_PATH)/files/etc/firmware/modem.img:system/etc/firmware/modem.img \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_rom.bin:system/etc/firmware/mt6628_fm_rom.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v1_coeff.bin:system/etc/firmware/mt6628_fm_v1_coeff.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v1_patch.bin:system/etc/firmware/mt6628_fm_v1_patch.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v2_coeff.bin:system/etc/firmware/mt6628_fm_v2_coeff.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v2_patch.bin:system/etc/firmware/mt6628_fm_v2_patch.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v3_coeff.bin:system/etc/firmware/mt6628_fm_v3_coeff.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v3_patch.bin:system/etc/firmware/mt6628_fm_v3_patch.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v4_coeff.bin:system/etc/firmware/mt6628_fm_v4_coeff.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v4_patch.bin:system/etc/firmware/mt6628_fm_v4_patch.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v5_coeff.bin:system/etc/firmware/mt6628_fm_v5_coeff.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_fm_v5_patch.bin:system/etc/firmware/mt6628_fm_v5_patch.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_patch_e1_hdr.bin:system/etc/firmware/mt6628_patch_e1_hdr.bin \
    $(LOCAL_PATH)/files/etc/firmware/mt6628_patch_e2_hdr.bin:system/etc/firmware/mt6628_patch_e2_hdr.bin \
    $(LOCAL_PATH)/files/etc/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \
    $(LOCAL_PATH)/files/etc/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
    $(LOCAL_PATH)/files/etc/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
    $(LOCAL_PATH)/files/etc/firmware/WIFI_RAM_CODE_MT6628:system/etc/firmware/WIFI_RAM_CODE_MT6628 \
    $(LOCAL_PATH)/files/etc/firmware/WMT.cfg:system/etc/firmware/WMT.cfg \
    $(LOCAL_PATH)/files/etc/firmware/touchpanel/tinno-fts-update-5d27.ekt:system/etc/firmware/touchpanel/tinno-fts-update-5d27.ekt \
    $(LOCAL_PATH)/files/etc/firmware/touchpanel/tinno-fts-update-594e.bin:system/etc/firmware/touchpanel/tinno-fts-update-594e.bin

# Gralloc & POWERVR stuff [ We will get it opensource but atleast first get it booted ]
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/lib/egl/egl.conf:system/lib/egl/egl.conf \
<<<<<<< HEAD
    
=======
    vendor/mmx/s9081/proprietary/lib/egl/libEGL_mtk.so:system/lib/egl/libEGL_mtk.so \
    vendor/mmx/s9081/proprietary/lib/egl/libGLESv1_CM_mtk.so:system/lib/egl/libGLESv1_CM_mtk.so \
    vendor/mmx/s9081/proprietary/lib/egl/libGLESv2_mtk.so:system/lib/egl/libGLESv2_mtk.so \
    vendor/mmx/s9081/proprietary/lib/hw/gralloc.mt6577.so:system/lib/hw/gralloc.mt6577.so \
    vendor/mmx/s9081/proprietary/lib/libBLPP.so:system/lib/libBLPP.so \
    vendor/mmx/s9081/proprietary/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
    vendor/mmx/s9081/proprietary/lib/libIMGegl.so:system/lib/libIMGegl.so \
    vendor/mmx/s9081/proprietary/lib/libpvr2d.so:system/lib/libpvr2d.so \
    vendor/mmx/s9081/proprietary/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    vendor/mmx/s9081/proprietary/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    vendor/mmx/s9081/proprietary/lib/libsrv_init.so:system/lib/libsrv_init.so \
    vendor/mmx/s9081/proprietary/lib/libsrv_um.so:system/lib/libsrv_um.so \
    vendor/mmx/s9081/proprietary/lib/libusc.so:system/lib/libusc.so \
    vendor/mmx/s9081/proprietary/lib/libwvdrm_L3.so:system/lib/libwvdrm_L3.so \
    vendor/mmx/s9081/proprietary/lib/libwvm.so:system/lib/libwvm.so \
    vendor/mmx/s9081/proprietary/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so \
     
# RIL
PRODUCT_COPY_FILES += \
    vendor/mmx/s9081/proprietary/lib/mtk-ril.so:system/lib/mtk-ril.so \
    vendor/mmx/s9081/proprietary/lib/mtk-ril3.so:system/lib/mtk-ril3.so \
    vendor/mmx/s9081/proprietary/lib/librilmtk.so:system/lib/librilmtk.so \
    vendor/mmx/s9081/proprietary/lib/libril3mtk.so:system/lib/libril3mtk.so
    
# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/mmx/s9081/proprietary/lib/libmtka2dp.so:system/lib/libmtka2dp.so \

>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
# We support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 
    
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags m=y,o=v,u=n
    
# About Product
PRODUCT_NAME := cm_s9081
PRODUCT_BRAND := Micromax
PRODUCT_DEVICE := s9081
PRODUCT_MODEL := Micromax Canvas 2 A110
PRODUCT_MANUFACTURER := micromax
<<<<<<< HEAD
=======
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
