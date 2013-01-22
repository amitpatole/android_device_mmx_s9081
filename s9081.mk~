# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Graphics 
PRODUCT_PACKAGES += \
    hwcomposer.mt6577 \
    
# Other
PRODUCT_PACKAGES += \
    sensors.mtk6577    
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    mmumapper.mt6577

# Init
PRODUCT_COPY_FILES += \
	device/mmx/s9081/files/root/init.rc:root/init.rc \
	device/mmx/s9081/files/root/ueventd.rc:root/ueventd.rc \
	device/mmx/s9081/files/root/init.project.rc:root/init.project.rc \
	device/mmx/s9081/files/root/advanced_meta_init.project.rc:root/advanced_meta_init.project.rc \
	device/mmx/s9081/files/root/advanced_meta_init.rc:root/advanced_meta_init.rc \
	device/mmx/s9081/files/root/init.aee.customer.rc:root/init.aee.customer.rc \
	device/mmx/s9081/files/root/init.factory.rc:root/init.factory.rc \
	device/mmx/s9081/files/root/init.usb.rc:root/init.usb.rc \
	device/mmx/s9081/files/root/init.xlog.rc:root/init.xlog.rc \
	device/mmx/s9081/files/root/meta_init.rc:root/meta_init.rc \
	
# Camera
## Let's First make it atleast Bootable
    

# OMX
PRODUCT_COPY_FILES += \	
	device/mmx/s9081/files/omx/libMtkOmxAacDec.so:system/lib/libMtkOmxAacDec.so \
	device/mmx/s9081/files/omx/libMtkOmxAacEnc.so:system/lib/libMtkOmxAacEnc.so \
	device/mmx/s9081/files/omx/libMtkOmxAmrEnc.so:system/lib/libMtkOmxAmrEnc.so \
	device/mmx/s9081/files/omx/libMtkOmxAMRNBDec:system/lib/libMtkOmxAMRNBDec.so \
	device/mmx/s9081/files/omx/libMtkOmxAMRWBDec:system/lib/libMtkOmxAMRWBDec.so \
	device/mmx/s9081/files/omx/libMtkOmxApeDec.so:system/lib/libMtkOmxApeDec.so \
	device/mmx/s9081/files/omx/libMtkOmxAwbEnc.so:system/lib/libMtkOmxAwbEnc.so \
	device/mmx/s9081/files/omx/libMtkOmxCookDec.so:system/lib/libMtkOmxCookDec.so \
	device/mmx/s9081/files/omx/libMtkOmxCore.so:system/lib/libMtkOmxCore.so \
	device/mmx/s9081/files/omx/libMtkOmxFlacDec.so:system/lib/libMtkOmxFlacDec.so \
	device/mmx/s9081/files/omx/libMtkOmxG711Dec.so:system/lib/libMtkOmxG711Dec.so \
	device/mmx/s9081/files/omx/libMtkOmxMp3Dec.so:system/lib/libMtkOmxMp3Dec.so \
	device/mmx/s9081/files/omx/libMtkOmxVdec.so:system/lib/libMtkOmxVdec.so \
	device/mmx/s9081/files/omx/libMtkOmxVenc.so:system/lib/libMtkOmxVenc.so \
	device/mmx/s9081/files/omx/libMtkOmxVorbisDec.so:system/lib/libMtkOmxVorbisDec.so \
	device/mmx/s9081/files/omx/libMtkOmxVorbisEnc.so:system/lib/libMtkOmxVorbisEnc.so \

    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# We support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 
    
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Releasetools
PRODUCT_COPY_FILES += \
     device/mmx/s9081/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    device/mmx/s9081/files/etc/vold.fstab:system/etc/vold.fstab 

# Wifi
## Let's First make it atleast Bootable
    
# Audio
## No Open Source yet, We will Use Prebuilt Files After it Boots
    
# Sensors
PRODUCT_COPY_FILES += \
    vendor/mmx/s9081/proprietary/lib/hw/sensors.mt6577.so:system/lib/hw/sensors.mt6577.so \

# Firmware (MT6***)
PRODUCT_COPY_FILES += \
    device/mmx/s9081/files/etc/firmware/catcher_filter.bin:system/etc/firmware/catcher_filter.bin \
    device/mmx/s9081/files/etc/firmware/DSP_ROM:system/etc/firmware/DSP_ROM \
    device/mmx/s9081/files/etc/firmware/modem.img:system/etc/firmware/modem.img \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_rom.bin:system/etc/firmware/mt6628_fm_rom.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v1_coeff.bin:system/etc/firmware/mt6628_fm_v1_coeff.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v1_patch.bin:system/etc/firmware/mt6628_fm_v1_patch.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v2_coeff.bin:system/etc/firmware/mt6628_fm_v2_coeff.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v2_patch.bin:system/etc/firmware/mt6628_fm_v2_patch.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v3_coeff.bin:system/etc/firmware/mt6628_fm_v3_coeff.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v3_patch.bin:system/etc/firmware/mt6628_fm_v3_patch.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v4_coeff.bin:system/etc/firmware/mt6628_fm_v4_coeff.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v4_patch.bin:system/etc/firmware/mt6628_fm_v4_patch.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v5_coeff.bin:system/etc/firmware/mt6628_fm_v5_coeff.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_fm_v5_patch.bin:system/etc/firmware/mt6628_fm_v5_patch.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_patch_e1_hdr.bin:system/etc/firmware/mt6628_patch_e1_hdr.bin \
    device/mmx/s9081/files/etc/firmware/mt6628_patch_e2_hdr.bin:system/etc/firmware/mt6628_patch_e2_hdr.bin \
    device/mmx/s9081/files/etc/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \
    device/mmx/s9081/files/etc/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
    device/mmx/s9081/files/etc/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
    device/mmx/s9081/files/etc/firmware/WIFI_RAM_CODE_MT6628:system/etc/firmware/WIFI_RAM_CODE_MT6628 \
    device/mmx/s9081/files/etc/firmware/WMT.cfg:system/etc/firmware/WMT.cfg \
    device/mmx/s9081/files/etc/firmware/touchpanel/tinno-fts-update-5d27.ekt:system/etc/firmware/touchpanel/tinno-fts-update-5d27.ekt \
    device/mmx/s9081/files/etc/firmware/touchpanel/tinno-fts-update-594e.bin:system/etc/firmware/touchpanel/tinno-fts-update-594e.bin

# Gralloc & POWERVR stuff
PRODUCT_COPY_FILES += \
    device/mmx/s9081/files/lib/egl/egl.conf:system/lib/egl/egl.conf \
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

# Keylayouts & Keychars
PRODUCT_COPY_FILES += \
    device/mmx/s9081/files/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/mmx/s9081/files/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/mmx/s9081/files/usr/keychars/mtk-kpd.kcm:system/usr/keychars/mtk-kpd.kcm \
    device/mmx/s9081/files/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/mmx/s9081/files/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/mmx/s9081/files/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/mmx/s9081/files/usr/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    device/mmx/s9081/files/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/mmx/s9081/files/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/mmx/s9081/files/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/mmx/s9081/files/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/mmx/s9081/files/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/mmx/s9081/files/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc
    
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags m=y,o=v,u=n
    
# About Product
PRODUCT_NAME := cm_s9081
PRODUCT_BRAND := Micromax
PRODUCT_DEVICE := s9081
PRODUCT_MODEL := Micromax Canvas 2 A110
PRODUCT_MANUFACTURER := micromax
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
