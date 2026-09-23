#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOTANIMATION_HALF_RES := true

# The Go profile sets ro.config.low_ram and the Go package set.
$(call inherit-product, vendor/lineage/config/common_mini_go_phone.mk)

$(call inherit-product, device/samsung/maguro/device.mk)

# microG instead of Google apps; WITH_MICROG=false leaves it out.
ifneq ($(WITH_MICROG),false)
$(call inherit-product, vendor/microg/microg.mk)
endif

PRODUCT_DEVICE := maguro
PRODUCT_NAME := lineage_maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=yakju \
    PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66Y 776638 release-keys"

BUILD_FINGERPRINT := google/yakju/maguro:4.3/JWR66Y/776638:user/release-keys
