#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board flags
-include device/samsung/gts7xl-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7xl

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

### Dynamic Partitions
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/gts7xl_eur_open_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gts7xl
KERNEL_TOOLCHAIN        := $(shell pwd)/$(TARGET_KERNEL_SOURCE)/toolchain/gcc/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/$(TARGET_KERNEL_SOURCE)/toolchain/clang
BOARD_KERNEL_CMDLINE += enforcing=0 androidboot.selinux=permissive


BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#BOARD_RAMDISK_USE_XZ := true


# Partitions
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 1258291200
endif
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8023703552
BOARD_SUPER_PARTITION_SIZE := 10171187200

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE=f2fs
# TARGET_USERIMAGES_USE_F2FS=true
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cache carrier dqmdbg efs keydata keyrefuge omr optics prism spu
BOARD_SUPPRESS_SECURE_ERASE := true

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from proprietary vendor
-include vendor/samsung/gts7xl/BoardConfigVendor.mk
