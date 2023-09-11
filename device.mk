#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/mithorium.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Dynamic Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    CustomROMsOverlay_msm8937 \
    HapticOverlay

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.xml,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_ODM)/etc/)

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937

# Input
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/keylayout/,$(TARGET_COPY_OUT_ODM)/usr/keylayout/)

# Recovery
PRODUCT_COPY_FILES += \
    vendor/qualcomm/msm8937/proprietary/vendor/bin/hvdcp_opti:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/hvdcp_opti

# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom_ramdisk \
    init.xiaomi.device.rc \
    init.xiaomi.device.sh

# Shims
PRODUCT_PACKAGES += \
    libshims_android \
    libshims_ui \
    libwui

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/qualcomm/msm8937/msm8937-vendor.mk)
