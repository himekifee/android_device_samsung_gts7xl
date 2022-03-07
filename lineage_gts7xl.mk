#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts7xl device
$(call inherit-product, device/samsung/gts7xl/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_gts7xlxeea
PRODUCT_DEVICE := gts7xl
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T976B

PRODUCT_SYSTEM_DEVICE := qssi
PRODUCT_SYSTEM_NAME := gts7xlxxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_PDA_MODEL_NEW := T976B
PRODUCT_PDA_MODEL_VERSION_NEW := XXU2CVA5
PRODUCT_PDA_VERSION_NEW := $(PRODUCT_PDA_MODEL_NEW)$(PRODUCT_PDA_MODEL_VERSION_NEW)

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID).$(PRODUCT_PDA_VERSION_NEW)" \
    PRODUCT_DEVICE=gts7xl \
    PRODUCT_NAME=gts7xlxeea \
    TARGET_DEVICE=SM-T976B \
    PRIVATE_BUILD_DESC="gts7xlxeea-user 12 SP1A.210812.016 $(PRODUCT_PDA_VERSION_NEW) release-keys" \
    BUILD_NUMBER=$(PRODUCT_PDA_VERSION_NEW) \
    TARGET_BUILD_FLAVOR="gts7xl-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := samsung/gts7xlxxx/gts7xlxxx:12/SP1A.210812.016/$(PRODUCT_PDA_VERSION_NEW):user/release-keys
