LOCAL_PATH := device/xiaomi/charoite

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=charoite

PRODUCT_PACKAGES += \
    fastbootd
