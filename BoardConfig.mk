#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common gts4lv-common
-include device/samsung/gts4lv-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts4lv

# Assert
TARGET_OTA_ASSERT_DEVICE := gts4lv

# Board
TARGET_BOARD_NAME := SRPRL03A001
TARGET_BOOTLOADER_BOARD_NAME := gts4lv

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := gts4lv_defconfig
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOARD_NAME)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# RIL
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true

# inherit from the proprietary version
include vendor/samsung/gts4lv/BoardConfigVendor.mk
