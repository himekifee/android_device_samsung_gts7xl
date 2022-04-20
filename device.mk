#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common device configuration
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2800
TARGET_SCREEN_WIDTH := 1752
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x400000000LL
# TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS == 0x546C00000000
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_QCOM_DISPLAY_BSP := true
TARGET_USES_QTI_MAPPER_2_0 := true
TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true

# ConfigStore
PRODUCT_PACKAGES += \
    disable_configstore

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.recovery.target.rc

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    android.hardware.keymaster@4.1.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/gts7xl/gts7xl-vendor.mk)
