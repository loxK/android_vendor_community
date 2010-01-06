#!/bin/sh

mkdir -p proprietary

ZIP=update-signed.zip

unzip -j -o ../../../$ZIP system/etc/AudioFilter.csv system/etc/firmware/yamato_pfp.fw system/etc/firmware/yamato_pm4.fw system/etc/gps.conf system/etc/init.salsa.bt.sh system/lib/libhtc_acoustic.so system/lib/libhtc_ril.so system/lib/hw/sensors.hero.so system/usr/keychars/hero-keypad.kcm.bin system/lib/egl/egl.cfg system/lib/egl/libGLES_qcom.so system/lib/libGLESv1_CM.so system/lib/libGLESv2.so system/etc/permissions/com.google.android.datamessaging.xml system/etc/permissions/com.google.android.gtalkservice.xml system/etc/permissions/com.google.android.maps.xml -d proprietary
touch proprietary/*

#(cd ../../htc/common-open/akmd && ./unzip-files.sh $ZIP)
#(cd ../../htc/prebuilt-open && ./unzip-files.sh $ZIP)
#(cd ../../pv-open && ./unzip-files.sh $ZIP)
(cd qcom/android-open/libopencorehw && ./unzip-files.sh $ZIP)
(cd qcom/android-open/loc_api && ./unzip-files.sh $ZIP)
(cd qcom/android-open/pvomx && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/dsp/libqcamera && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/dsp/mm && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libaudioeq && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libgps && ./unzip-files.sh $ZIP)
(cd qcom/proprietary-open/libhgl && ./unzip-files.sh $ZIP)

