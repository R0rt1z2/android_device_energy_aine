DEVICE_PATH := device/energy/aine

# Architecture
TARGET_ARCH         := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI      := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_VARIANT  := cortex-a7
TARGET_CPU_SMP      := true
ARCH_ARM_HAVE_NEON  := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sc8830
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

BOARD_RAMDISK_OFFSET   := 0x01000000
BOARD_SECOND_OFFSET    := 0x00f00000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_ARCH        := arm
TARGET_KERNEL_HEADER_ARCH := arm
BOARD_KERNEL_IMAGE_NAME   := zImage

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB    := $(DEVICE_PATH)/prebuilt/dt.img

BOARD_MKBOOTIMG_ARGS    := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline "console=ttyS1,115200n8" --dt $(TARGET_PREBUILT_DTB)

# Display
TARGET_SCREEN_DENSITY := 240
TARGET_SCREEN_WIDTH   := 480
TARGET_SCREEN_HEIGHT  := 800
DEVICE_RESOLUTION := 480x800

# Filesystems
BOARD_HAS_LARGE_FILESYSTEM           := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE     := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4           := true
TARGET_USERIMAGES_USE_F2FS           := true
BOARD_SUPPRESS_SECURE_ERASE          := true

# Platform
TARGET_BOARD_PLATFORM := sc8830

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := false
RECOVERY_SDCARD_ON_DATA := true

# TWRP
TW_THEME                        := portrait_mdpi
TW_MTP_DEVICE                   := "/dev/mtp_usb"
TW_BRIGHTNESS_PATH              := "/sys/class/backlight/sprd_backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH         := "/sys/class/thermal/thermal_zone1/temp"
TW_INTERNAL_STORAGE_PATH        := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH        := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NEW_ION_HEAP                 := true
TW_NO_EXFAT_FUSE                := true
TW_NO_REBOOT_BOOTLOADER         := true
TW_NO_SCREEN_BLANK              := true
TW_EXCLUDE_TWRPAPP              := true
TW_EXCLUDE_SUPERSU              := true
TW_INCLUDE_CRYPTO               := true
TW_EXCLUDE_TZDATA               := true
TW_EXCLUDE_NANO                 := true
TW_EXCLUDE_BASH                 := true
TW_EXCLUDE_SUPERSU              := true
TW_EXCLUDE_PYTHON               := true
