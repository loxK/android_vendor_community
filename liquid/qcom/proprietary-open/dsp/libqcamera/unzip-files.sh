#!/bin/sh

mkdir -p proprietary


# libqcamera.so not on hero
# unzip -j -o ../../../../../$1 system/lib/libcamera.so system/lib/libqcamera.so -d proprietary

unzip -j -o ../../../../../../../$1 system/lib/libcamera.so -d proprietary
unzip -j -o ../../../../../../../$1 system/lib/libcameraservice.so -d proprietary
unzip -j -o ../../../../../../../$1 system/lib/liboemcamera.so -d proprietary
touch proprietary/*
