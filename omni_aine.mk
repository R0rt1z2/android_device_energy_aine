# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)

# Inherit some common ROM stuff.
$(call inherit-product-if-exists, vendor/cm/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/common.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from aine device
$(call inherit-product, device/energy/aine/device.mk)

PRODUCT_DEVICE := aine
PRODUCT_NAME := omni_aine
PRODUCT_BRAND := Energy_Sistem
PRODUCT_MODEL := Energy Phone Neo Lite
PRODUCT_MANUFACTURER := energy_sistem

PRODUCT_GMS_CLIENTID_BASE := Energy_Phone_Neo_Lite

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aine-user 5.1 LMY47D eng.zc.20160624.131132 release-keys"

BUILD_FINGERPRINT := Energy_Sistem/aine/aine:5.1/LMY47D/06241313:user/release-keys
