#
# Copyright (C) 2009 The Android Open Source Project
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

# This is the top-level configuration for a EU-configured HTC Hero build

$(call inherit-product, vendor/community/products/core.mk)

PRODUCT_NAME := community_hero_eu
PRODUCT_REGION_EU := true

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_MANUFACTURER := htc
PRODUCT_DEVICE := hero

# The user-visible product name
PRODUCT_MODEL := AOSP Hero

TARGET_BUILD_TYPE := release

PRODUCT_PACKAGE_OVERLAYS := vendor/community/overlay

PRODUCT_LOCALES += \
	mdpi \
	hdpi

# Pick up some hero settings (gps and voice settings).
include vendor/community/hero/device.mk
