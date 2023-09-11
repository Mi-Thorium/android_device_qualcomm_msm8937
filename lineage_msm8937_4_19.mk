#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from msm8937 device
$(call inherit-product, device/qualcomm/msm8937/device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8937_4_19
PRODUCT_NAME := lineage_msm8937_4_19
BOARD_VENDOR := Qualcomm
PRODUCT_BRAND := Qualcomm
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Qualcomm
TARGET_VENDOR := Qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-google
