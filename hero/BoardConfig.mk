#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

TARGET_BOOTLOADER_BOARD_NAME := hero

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x19200000

BOARD_HAVE_BLUETOOTH := true

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libgps librpc

BOARD_VENDOR_USE_AKMD := true

USE_PV_WINDOWS_MEDIA := false

BOARD_USE_HTC_APPS := true

BOARD_USE_HERO_LIBSENSORS := true

#BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
#BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
#BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x05a00000)
#BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x127c0000)
BOARD_BOOTIMAGE_MAX_SIZE := 2621440
BOARD_RECOVERYIMAGE_MAX_SIZE := 5242880
BOARD_SYSTEMIMAGE_MAX_SIZE := 70778880
BOARD_USERDATAIMAGE_MAX_SIZE := 78381056
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

USE_CAMERA_STUB := true
