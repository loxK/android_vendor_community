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

# This is the top-level configuration for a US-configured loxMod build

$(call inherit-product, vendor/lox/products/core.mk)

PRODUCT_NAME := lox_liquid

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_MANUFACTURER := htc
PRODUCT_DEVICE := salsa

# The user-visible product name
PRODUCT_MODEL := KaguDroid

TARGET_BUILD_TYPE := release

PRODUCT_PACKAGE_OVERLAYS := vendor/lox/overlay

# Pick up some liquid settings (gps and voice settings).
include vendor/lox/liquid/device.mk

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage2.mk

# TTS languages
include external/svox/pico/lang/PicoLangDeDeInSystem.mk
include external/svox/pico/lang/PicoLangEnGBInSystem.mk
include external/svox/pico/lang/PicoLangEnUsInSystem.mk
include external/svox/pico/lang/PicoLangEsEsInSystem.mk
include external/svox/pico/lang/PicoLangFrFrInSystem.mk
include external/svox/pico/lang/PicoLangItItInSystem.mk
