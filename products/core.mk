#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is the config file for an actual configuration on HTC hero

ifeq ($(PRODUCT_REGION_EU),true)
$(call inherit-product, vendor/aosp/products/aosp_eu.mk)
else
$(call inherit-product, vendor/aosp/products/aosp_us.mk)
endif

# This is the list of apps included in the build
PRODUCT_PACKAGES := \
	AccountAndSyncSettings \
	AlarmProvider \
	ApplicationsProvider \
	Bluetooth \
	Browser \
	Bugreport \
	Calculator \
	Calendar \
	CalendarProvider \
	Camera \
    CertInstaller \
	Contacts \
	ContactsProvider \
	DeskClock \
	DownloadProvider \
	DrmProvider \
	Email \
	FieldTest \
	Gallery3D \
	GlobalSearch \
	GoogleSearch \
	HTMLViewer \
	IM \
	IMProvider \
	LatinIME \
	Launcher \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	MediaProvider \
	Mms \
	Music \
	PackageInstaller \
	Phone \
	PicoTts \
	Provision \
	Settings \
	SettingsProvider \
	SoundRecorder \
	Stk \
	SubscribedFeedsProvider \
	Superuser \
	Sync \
	SyncProvider \
	TelephonyProvider \
	TtsService \
	Updater \
	UserDictionaryProvider \
	VisualizationWallpapers \
	CubeLiveWallpaper \
	VoiceDialer \
	VpnServices \
	WebSearchProvider \
	framework-res \
	libRS \
	librs_jni

PRODUCT_COPY_FILES += \
	vendor/community/prebuild/xbin/apps2sd:system/xbin/apps2sd \
	vendor/community/prebuild/etc/apns-conf.xml:system/etc/apns-conf.xml \
	vendor/community/prebuild/etc/sysctl.conf:system/etc/sysctl.conf \
	vendor/community/prebuild/etc/fstab:system/etc/fstab \
	vendor/community/prebuild/etc/init.d/00banner:system/etc/init.d/00banner \
	vendor/community/prebuild/etc/init.d/01settings:system/etc/init.d/01settings \
	vendor/community/prebuild/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
	vendor/community/prebuild/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
	vendor/community/prebuild/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd \
	vendor/community/prebuild/etc/init.d/99complete:system/etc/init.d/99complete \
	vendor/community/prebuild/etc/permissions/extra_permissions.xml:system/etc/permissions/extra_permissions.xml \
	vendor/community/prebuild/etc/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	vendor/community/prebuild/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	vendor/community/prebuild/etc/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	vendor/community/prebuild/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# Include en_US by default.
PRODUCT_LOCALES := \
	en_US

ifeq ($(INCLUDE_ALL_LOCALES),true)

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES += \
	en_AU \
	en_CA \
	en_GB \
	en_IE \
	en_IN \
	en_NZ \
	en_SG \
	en_ZA \
	es_ES \
	es_US \
	ar_EG \
	ar_IL \
	bg_BG \
	ca_ES \
	cs_CZ \
	da_DK \
	de_AT \
	de_CH \
	de_DE \
	de_LI \
	el_GR \
	fi_FI \
	fr_BE \
	fr_CA \
	fr_CH \
	fr_FR \
	he_IL \
	hi_IN \
	hr_HR \
	hu_HU \
	id_ID \
	it_CH \
	it_IT \
	iw_IL \
	ja_JP \
	ko_KR \
	lt_LT \
	lv_LV \
	nb_NO \
	nl_BE \
	nl_NL \
	pl_PL \
	pt_BR \
	pt_PT \
	ro_RO \
	ru_RU \
	sk_SK \
	sl_SI \
	sr_RS \
	sv_SE \
	th_TH \
	tl_PH \
	tr_TR \
	uk_UA \
	vi_VN \
	zh_CN \
	zh_TW

endif # INCLUDE_ALL_LOCALES
# Force dex optimization (this may not work if you are on a Mac)
WITH_DEXPREOPT := true
DISABLE_DEXPREOPT := false

# Build the JIT, but disable it for right now because of stability issues
#WITH_JIT := true
#PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.execution-mode=int:fast

ifeq ($(INCLUDE_TTS_LANGS),true)

# TTS languages
include external/svox/pico/lang/PicoLangDeDeInSystem.mk
include external/svox/pico/lang/PicoLangEnGBInSystem.mk
include external/svox/pico/lang/PicoLangEnUsInSystem.mk
include external/svox/pico/lang/PicoLangEsEsInSystem.mk
include external/svox/pico/lang/PicoLangFrFrInSystem.mk
include external/svox/pico/lang/PicoLangItItInSystem.mk

endif # INCLUDE_TTS_LANGS

#
# ADDITIONAL_BUILD_PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
  ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
  ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
  ro.com.google.networklocation=1 \
  ro.setupwizard.mode=DISABLED \
  ro.config.ringtone=Big_Easy.ogg \
  ro.setupwizard.mode=OPTIONAL \
  dalvik.vm.dexopt-flags=m=y
