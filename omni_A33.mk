$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/$OPP0/$A33/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := A33
PRODUCT_NAME := omni_A33
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := A33fw
PRODUCT_MANUFACTURER := OPPO

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
