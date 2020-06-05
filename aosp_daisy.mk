#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from daisy device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := aosp_daisy
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
	
TARGET_VENDOR_PRODUCT_NAME := daisy
TARGET_VENDOR_DEVICE_NAME := daisy

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="daisy" \
    PRODUCT_NAME="daisy"

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"

# Build FP to be picked by both system and vendor
BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys"

# Use Gcam and Jelly
TARGET_USE_GCAM := false
TARGET_USE_JELLY := true

TARGET_BOOT_ANIMATION_RES := 2280

# Set this flag in build script
ifeq ($(CURRENT_BUILD_TYPE), gapps)
# Use Gapps
  TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
  WITH_GAPPS := true
  TARGET_GAPPS_ARCH := arm64
  IS_PHONE := true
  #TARGET_INCLUDE_WIFI_EXT := true
endif

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
