#!/bin/sh

(cd ../common-open/akmd && ./$1.sh)
(cd ../prebuilt-open && ./$1.sh)
(cd ../../pv-open && ./$1.sh)
(cd ../../qcom/android-open/libopencorehw && ./$1.sh)
(cd ../../qcom/android-open/loc_api && ./$1.sh)
(cd ../../qcom/android-open/pvomx && ./$1.sh)
(cd ../../qcom/proprietary-open/dsp/libqcamera && ./$1.sh)
(cd ../../qcom/proprietary-open/dsp/mm && ./$1.sh)
(cd ../../qcom/proprietary-open/libaudioeq && ./$1.sh)
(cd ../../qcom/proprietary-open/libgps && ./$1.sh)
(cd ../../qcom/proprietary-open/libhgl && ./$1.sh)
