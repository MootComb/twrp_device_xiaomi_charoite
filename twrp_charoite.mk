# TWRP product makefile for Xiaomi/Redmi charoite

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

PRODUCT_DEVICE := charoite
PRODUCT_NAME := twrp_charoite
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 25100RA69G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := charoite

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_SHIPPING_API_LEVEL := 35
PRODUCT_TARGET_VNDK_VERSION := 36

PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=charoite \
    ro.product.device=charoite \
    ro.product.vendor.device=charoite \
    ro.board.platform=mt6789

PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/root/vendor/etc/fstab.mt6789.stock:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/fstab.mt6789.stock
