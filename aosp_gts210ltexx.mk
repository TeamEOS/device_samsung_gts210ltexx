# Inherit device configuration
$(call inherit-product, device/samsung/gts210ltexx/device.mk)
$(call inherit-product, device/samsung/gts2-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_gts210ltexx
PRODUCT_DEVICE := gts210ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T815
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210ltexx
