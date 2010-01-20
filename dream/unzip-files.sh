#!/bin/sh

mkdir -p proprietary

ZIP=Intension-Beta3.zip

unzip -j -o ../../../$ZIP system/etc/AudioFilter.csv system/etc/AudioPara4.csv system/etc/AudioPreProcess.csv system/etc/gps.conf system/lib/libhtc_acoustic.so system/etc/firmware/brf6300.bin system/etc/gps.conf system/etc/wifi/Fw1251r1c.bin system/lib/libhtc_ril.so system/lib/hw/sensors.trout.so system/lib/egl/libGLES_qcom.so -d proprietary
mv -f proprietary/AudioPara4.csv proprietary/AudioPara4_US.csv
cp -f proprietary/AudioPara4_US.csv proprietary/AudioPara4_EU.csv
mv -f proprietary/gps.conf proprietary/gps.conf_US
sed s/north-america/europe/ < proprietary/gps.conf_US > proprietary/gps.conf_EU
touch proprietary/*

(cd ../../htc/common-open/akmd && ./unzip-files.sh $ZIP)
(cd ../../htc/prebuilt-open && ./unzip-files.sh $ZIP)
(cd ../../pv-open && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/libopencorehw && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/loc_api && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/pvomx && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/dsp/libqcamera && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/dsp/mm && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libaudioeq && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libgps && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libhgl && ./unzip-files.sh $ZIP)
