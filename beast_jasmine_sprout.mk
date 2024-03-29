#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
#TWRP
BUILD_TWRP := true
# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit some common BeastROMs stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/beast/config/common.mk)
# Dirac
$(call inherit-product-if-exists, vendor/xiaomi/Dirac/dirac.mk)
# MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/MiuiCamera/config.mk)

BEAST_BUILD_TYPE := OFFICIAL

# Device identifier
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_NAME := beast_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jasmine_sprout" \
    PRODUCT_NAME="jasmine"

TARGET_VENDOR_PRODUCT_NAME := jasmine
