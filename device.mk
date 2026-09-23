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

# GSM variant (GT-I9250): XMM6260 HSPA modem, SiRF GSD4t GPS.

DEVICE_PACKAGE_OVERLAYS += device/samsung/maguro/overlay

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    device/samsung/tuna/etc/wifi/bcmdhd.maguro.cal:$(TARGET_COPY_OUT_SYSTEM)/etc/wifi/bcmdhd.cal

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.subdevice=maguro

$(call inherit-product, device/samsung/tuna/device.mk)
$(call inherit-product, vendor/samsung/maguro/maguro-vendor.mk)
