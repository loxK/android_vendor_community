LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/lib/libhtc_ril.so
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/libhtc_ril.so | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/lib/libhtc_acoustic.so
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/libhtc_acoustic.so | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/usr/keychars/hero-keypad.kcm.bin
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/hero-keypad.kcm.bin | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/hero-keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/prebuilt/hero-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/prebuilt/h2w_headset.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/etc/firmware/avpr.bts
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/avpr.bts | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/etc/firmware/brf6300.bin
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/brf6300.bin | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/etc/firmware/fmc_init_1273.2.bts
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/fmc_init_1273.2.bts | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/etc/firmware/fm_rx_init_1273.2.bts
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/tiinit_5.3.53.bts | $(ACP)
	$(transform-prebuilt-to-target)
	
file := $(TARGET_OUT)/etc/firmware/tiinit_5.3.53.bts
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/tiinit_5.3.53.bts | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/etc/firmware/vac_config.ini
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/vac_config.ini | $(ACP)
	$(transform-prebuilt-to-target)

# Ramdisk Files
file := $(TARGET_ROOT_OUT)/init.hero.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.hero.rc | $(ACP)
	$(transform-prebuilt-to-target)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/init.rc:root/init.rc

include $(CLEAR_VARS)
LOCAL_SRC_FILES := prebuilt/hero-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)

# egl
file := $(TARGET_OUT)/lib/egl/egl.cfg
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/egl.cfg | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_qcom.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)/egl
include $(BUILD_PREBUILT)

# This will install the file in /system/etc
#
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := vold.conf
LOCAL_SRC_FILES := prebuilt/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := agps_rm
LOCAL_SRC_FILES := prebuilt/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# WiFi driver and firmware
local_target_dir := $(TARGET_OUT_ETC)/wifi

include $(CLEAR_VARS)
LOCAL_MODULE := Fw1251r1c.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wlan.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules
LOCAL_SRC_FILES := prebuilt/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)
