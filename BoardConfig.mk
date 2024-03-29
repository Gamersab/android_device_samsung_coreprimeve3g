USE_CAMERA_STUB                              := true

# inherit from the proprietary version
-include vendor/samsung/coreprimeve3g/BoardConfigVendor.mk

TARGET_ARCH                                  := arm
TARGET_BOARD_PLATFORM                        := sc8830
TARGET_CPU_ABI                               := armeabi-v7a
TARGET_CPU_ABI2                              := armeabi
TARGET_ARCH_VARIANT                          := armv7-a-neon
TARGET_CPU_VARIANT                           := cortex-a7
ARCH_ARM_HAVE_NEON                           := true
TARGET_CPU_SMP                               := true
ARCH_ARM_HAVE_TLS_REGISTER                   := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME                 := SC7730SE
TARGET_NO_BOOTLOADER                         := true
TARGET_NO_RADIOIMAGE                         := true

# Kernel
BOARD_KERNEL_CMDLINE                         := console=ttyS1,115200n8
BOARD_KERNEL_BASE                            := 0x00000000
BOARD_KERNEL_PAGESIZE                        := 2048
TARGET_KERNEL_SOURCE                         := kernel/samsung/coreprimeve3g/common
TARGET_KERNEL_CONFIG                         := coreprimeve3g-dt_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN               := arm-eabi-4.8

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE               := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE           := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE              := 209715200
BOARD_SYSTEMIMAGE_PARTITION_SIZE             := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE           := 5872025600
BOARD_FLASH_BLOCK_SIZE                       := 131072

TARGET_USERIMAGES_USE_EXT4                   := true
BOARD_HAS_LARGE_FILESYSTEM                   := true

# RIL
BOARD_RIL_CLASS                              := ../../../device/samsung/coreprimeve3g/ril

# Hardware rendering
TARGET_BOARD_PLATFORM_GPU                    := mali-400 MP2
BOARD_EGL_CFG                                := device/samsung/coreprimeve3g/egl/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508            := true
USE_OPENGL_RENDERER                          := true
BOARD_USE_MHEAP_SCREENSHOT                   := true
HWUI_COMPILE_FOR_PERF                        := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK        := true

# Wifi
BOARD_WLAN_DEVICE                            := bcmdhd
BOARD_WLAN_DEVICE_REV                        := bcm4343
WPA_SUPPLICANT_VERSION                       := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER                  := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB             := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                         := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                    := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM                    := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA                      := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP                       := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM                 := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH                       := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                                    := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI                      := true

# healthd
BOARD_HAL_STATIC_LIBRARIES                   := libhealthd-coreprimeve3g

# Bluetooth
BOARD_HAVE_BLUETOOTH                         := true
BOARD_HAVE_BLUETOOTH_BCM                     :=true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR  := device/samsung/coreprimeve3g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF                  := device/samsung/coreprimeve3g/bluetooth/libbt_vndcfg.txt

# TWRP Recovery
BOARD_HAS_NO_SELECT_BUTTON                   := true
TARGET_RECOVERY_INITRC                       := device/samsung/coreprimeve3g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB                        := device/samsung/coreprimeve3g/recovery/twrp.fstab
BOARD_HAS_LARGE_FILESYSTEM                   := true
TARGET_RECOVERY_PIXEL_FORMAT                 := "RGBX_8888"
TW_THEME                                     := portrait_mdpi
SP1_NAME                                     := "internal_sd"
SP1_BACKUP_METHOD                            := files
SP1_MOUNTABLE                                := 1
TW_INTERNAL_STORAGE_PATH                     := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT              := "data"
TW_EXTERNAL_STORAGE_PATH                     := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT              := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE                  := true
TW_FLASH_FROM_STORAGE                        := true
TW_NO_REBOOT_BOOTLOADER                      := true
TW_HAS_DOWNLOAD_MODE                         := true
TW_NO_CPU_TEMP                               := true
TW_MTP_DEVICE                                := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION                  := true
BOARD_USE_CUSTOM_RECOVERY_FONT               := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH             := true

# CMHW
BOARD_HARDWARE_CLASS                         := hardware/samsung/cmhw/ device/samsung/coreprimeve3g/cmhw/

# Audio
BOARD_USES_GENERIC_AUDIO                     := true
BOARD_USES_TINYALSA_AUDIO                    := true

# Bootanimation
TARGET_SCREEN_HEIGHT                         := 800
TARGET_SCREEN_WIDTH                          := 480
TARGET_BOOTANIMATION_PRELOAD                 := true
TARGET_BOOTANIMATION_TEXTURE_CACHE           := true
