#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Infinity-X Specific Flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := ankitstha
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true 
EXTRA_UDFPS_ANIMATIONS := true
WITH_INFINITY_CHARGER := true

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 11 RKQ1.201022.002 2206171030 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2206171030:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
