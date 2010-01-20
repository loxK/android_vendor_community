#
# Copyright (C) 2009 The Android Open-Source Project
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

# To be included directly by a device_dream_*.mk makefile;
# do not use inherit-product on this file.

PRODUCT_COPY_FILES += \
        vendor/community/dream/AudioPara4_EU.csv:system/etc/AudioPara4.csv \
        vendor/community/dream/gps.conf_EU:system/etc/gps.conf

# Extra permissions
PRODUCT_COPY_FILES += \
        vendor/community/etc/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        vendor/community/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        vendor/community/etc/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        vendor/community/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

DEVICE_PACKAGE_OVERLAYS := vendor/community/hero/overlay

PRODUCT_PACKAGES += \
        FieldTest

# Market Fix
BUILD_FINGERPRINT := "google/passion/passion/mahimahi:2.1/ERD79/22607:user/release-keys"

