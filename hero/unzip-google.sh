#!/bin/sh

mkdir -p proprietary/google

if [ -z "$1" ]; then
	ZIP="update-hero.zip"
else
    ZIP=$1
fi

unzip -j -d proprietary/google -o ../../../$ZIP \
	system/app/com.cooliris.media.apk \
	system/app/FlashLitePlugin.apk \
	system/app/FlashPlayer.apk \
	system/app/Gmail.apk \
	system/app/GmailProvider.apk \
	system/app/GoogleApps.apk \
	system/app/GoogleCheckin.apk \
	system/app/GoogleContactsSyncAdapter.apk \
	system/app/GooglePartnerSetup.apk \
	system/app/GoogleSettingsProvider.apk \
	system/app/GoogleSubscribedFeedsProvider.apk \
	system/app/gtalkservice.apk \
	system/app/MarketUpdater.apk \
	system/app/NetworkLocation.apk \
	system/app/SetupWizard.apk \
	system/app/Talk.apk \
	system/app/TalkProvider.apk \
	system/app/Vending.apk \
	system/app/GenieWidget.apk \
	system/framework/com.google.android.gtalkservice.jar \
	system/framework/com.google.android.maps.jar \
	system/lib/libflashlite.so \
	system/lib/libflashsnddec.so \
	system/lib/libflsaplayerlib.so \
	system/lib/libgtalk_jni.so

touch proprietary/google/*

(cd ../../htc/common-open/akmd && ./unzip-files.sh $ZIP)
(cd ../../htc/prebuilt-open && ./unzip-files.sh $ZIP)
#(cd ../../pv-open && ./unzip-files.sh $ZIP)
(cd qcom/android-open/libopencorehw && ./unzip-files.sh $ZIP)
(cd qcom/android-open/loc_api && ./unzip-files.sh $ZIP)
(cd qcom/android-open/pvomx && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/dsp/libqcamera && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/dsp/mm && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libaudioeq && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libgps && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libhgl && ./unzip-files.sh $ZIP)
