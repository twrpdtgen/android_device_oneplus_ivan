#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ivan device
$(call inherit-product, device/oneplus/ivan/device.mk)

PRODUCT_DEVICE := ivan
PRODUCT_NAME := omni_ivan
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Nord CE 2 5G
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OP555BL1-user 11 RP1A.200720.011 release-keys"

BUILD_FINGERPRINT := OnePlus/IV2201/OP555BL1:11/RP1A.200720.011/1655212189936:user/release-keys
