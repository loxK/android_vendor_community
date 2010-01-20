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

$(call inherit-product, build/target/product/generic.mk)

# This is the list of apps included in the build
PRODUCT_PACKAGES := \
	AlarmClock \
	AlarmProvider \
	ApplicationsProvider \
	Browser \
	Bugreport \
	Calculator \
	Calendar \
	CalendarProvider \
	Camera \
	Contacts \
	ContactsProvider \
	DownloadProvider \
	DrmProvider \
	Email \
	FieldTest \
	GlobalSearch \
	GoogleSearch \
	HTMLViewer \
	LatinIME \
	Launcher \
	MediaProvider \
	Mms \
	Music \
	IM \
	IMProvider \
	PackageInstaller \
	Phone \
	PicoTts \
	Settings \
	SettingsProvider \
	SoundRecorder \
	SubscribedFeedsProvider \
	Sync \
	SyncProvider \
	TelephonyProvider \
	TtsService \
	Updater \
	UserDictionaryProvider \
	VoiceDialer \
	VpnServices \
	WebSearchProvider \
	framework-res \
	Stk \
	Updater \
	Superuser

PRODUCT_COPY_FILES += \
	vendor/community/xbin/apps2sd:system/xbin/apps2sd \
	vendor/community/app/MarketEnabler.apk:system/app/MarketEnabler.apk \
	vendor/community/etc/apns-conf.xml:system/etc/apns-conf.xml \
	vendor/community/etc/sysctl.conf:system/etc/sysctl.conf \
	vendor/community/etc/fstab:system/etc/fstab \
	vendor/community/etc/init.d/00banner:system/etc/init.d/00banner \
	vendor/community/etc/init.d/01settings:system/etc/init.d/01settings \
	vendor/community/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
	vendor/community/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
	vendor/community/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd \
	vendor/community/etc/init.d/99complete:system/etc/init.d/99complete \
	vendor/community/etc/permissions/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml \
	vendor/community/etc/permissions/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml \
	vendor/community/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	vendor/community/etc/permissions/extra_permissions.xml:system/etc/permissions/extra_permissions.xml \
   			  
# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := \
	en_US \
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

# Additional settings used in all builds
PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true

# eu settings
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.notification_sound=pizzicato.ogg \
	ro.config.alarm_alert=Big_Easy.ogg \
	ro.com.android.dateformat=dd-MM-yyyy \
	ro.com.android.dataroaming=true \
	ro.ril.hsxpa=1 \
	ro.ril.gprsclass=10
