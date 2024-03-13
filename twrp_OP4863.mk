#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from OP4863 device
$(call inherit-product, device/oppo/OP4863/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := OP4863
PRODUCT_NAME := twrp_OP4863
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1969
PRODUCT_MANUFACTURER := oppo
PRODUCT_GMS_CLIENTID_BASE := android-oppo
	