# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include vendor/mmx/s9081/BoardConfigVendor.mk

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/mmx/s9081/kernel

TARGET_BOOTLOADER_BOARD_NAME := s9081
TARGET_OTA_ASSERT_DEVICE := s9081

## CPU & Platform
<<<<<<< HEAD
ARCH_ARM_HAVE_VFP := true
=======
#ARCH_ARM_HAVE_VFP := true
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_BOARD_PLATFORM := 
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX531

## Graphics
# Enable OpenGL Hardware Acceleration
USE_OPENGL_RENDERER := true

# Force non usage of VSync
TARGET_NO_HW_VSYNC := true

<<<<<<< HEAD
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
=======
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
>>>>>>> 42dbd1cafd9e2efe29898580a4c999069311350f

#BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/mmx/s9081/files/lib/egl/egl.cfg

## Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Boot loader & recovery
TARGET_NO_BOOTLOADER := true

## Partition Sizes
# Fix this up by examining /proc/emmc on a running device
	partno:    start_sect   nr_sects  partition_name
	emmc_p1: 00000020 00000002 "ebr1"
	emmc_p2: 0000ac40 00002800 "sec_ro"
	emmc_p3: 00010740 00100000 "android"
	emmc_p4: 00110f40 00100000 "cache"
	emmc_p5: 00211740 00300000 "usrdata"
	emmc_p6: 00511f40 0021b8c0 "fat"

#USE_CAMERA_STUB := false

#TARGET_PROVIDES_LIBAUDIO := true
# Enable ICS-backwards compatibility    
#COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
#TARGET_DISABLE_ARM_PIE := true
