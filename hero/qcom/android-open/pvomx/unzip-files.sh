#!/bin/sh

mkdir -p proprietary

unzip -j -o ../../../../../../$1 system/etc/01_qcomm_omx.cfg system/lib/libqcomm_omx.so -d proprietary

touch proprietary/*
