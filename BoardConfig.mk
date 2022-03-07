#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board flags
-include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7xl

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

### Dynamic Partitions
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system vendor

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineage_gts7xl_defconfig

# Keystore
TARGET_KEYMASTER_VARIANT := samsung

# Partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 8023703552
BOARD_SUPER_PARTITION_SIZE := 10171187200

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cache carrier dqmdbg efs keydata keyrefuge omr optics prism spu
BOARD_SUPPRESS_SECURE_ERASE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Inherit from proprietary vendor
-include vendor/samsung/gts7xl/BoardConfigVendor.mk
