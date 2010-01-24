#!/bin/sh

mkdir -p proprietary

if [ -z "$1" ]; then
	ZIP="update-hero.zip"
else
    ZIP=$1
fi

unzip -j -d proprietary -o ../../../$ZIP \
	system/etc/AudioFilter.csv \
	system/etc/AudioPara4.csv \
	system/etc/AudioPreProcess.csv \
	system/etc/firmware/tiinit_5.3.53.bts \
   	system/etc/firmware/avpr.bts \
	system/etc/firmware/brf6300.bin \
	system/etc/firmware/fmc_init_1273.2.bts \
	system/etc/firmware/fm_rx_init_1273.2.bts \
	system/etc/firmware/vac_config.ini \
	system/etc/gps.conf \
	system/etc/wifi/Fw1251r1c.bin \
	system/lib/libhtc_acoustic.so \
	system/lib/libhtc_ril.so \
	system/lib/hw/sensors.hero.so \
	system/usr/keychars/hero-keypad.kcm.bin \
	system/lib/egl/egl.cfg \
	system/lib/egl/libGLES_qcom.so \
	system/lib/libGLESv1_CM.so \
	system/lib/libGLESv2.so

touch proprietary/*

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
