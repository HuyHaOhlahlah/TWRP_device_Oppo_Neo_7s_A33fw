LOCAL_PATH := device/$OPPO/$A33

TARGET_BOARD_PLATFORM := msm8916
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := A33
# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true  
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
# BOARD_USES_FULL_RECOVERY_IMAGE := true       
BOARD_FLASH_BLOCK_SIZE := 0                   
BOARD_HAS_NO_REAL_SDCARD := true  
# BOARD_HAS_NO_SELECT_BUTTON := true          
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true
# TWRP stuff
TW_EXCLUDE_SUPERSU := true                   
TW_INCLUDE_CRYPTO := true                    
TW_INPUT_BLACKLIST := "hbtp_vm"            
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi                     
DEVICE_RESOLUTION := 540x960  
TARGET_SCREEN_HEIGHT := 960                 
TARGET_SCREEN_WIDTH := 540                      
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80

TW_INCLUDE_NTFS_3G := true                    
TW_INCLUDE_FUSE_EXFAT := true                 
TWRP_INCLUDE_LOGCAT := true                   
TW_INCLUDE_FB2PNG := true                     
TW_DEFAULT_LANGUAGE := en                     
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_IS_64_BIT := true                      
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 ramoops.mem_address=0x9ff00000 ramoops.mem_size=0x400000
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
# Set FSTAB
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab 

# Architecture
ifeq ($(TARGET_IS_64_BIT),true)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53             
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53         
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT) 
else
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7              
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
endif
