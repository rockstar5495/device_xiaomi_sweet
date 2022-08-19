#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Evolution stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Extras
TARGET_BOOT_ANIMATION_RES := 1080

# Product identifier to come after all inclsions
PRODUCT_NAME := evolution_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_global-user 12 RKQ1.210614.002 V13.0.12.0.SKFMIXM release-keys"

BUILD_FINGERPRINT := "Redmi/sweet_global/sweet:12/RKQ1.210614.002/V13.0.12.0.SKFMIXM:user/release-keys"
