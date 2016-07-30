LOCAL_PATH := device/samsung/gts210ltexx

# Flat device tree for boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# Tinyalsa
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts210ltexx/gts210ltexx-vendor.mk)
