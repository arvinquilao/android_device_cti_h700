## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := h700

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/cti/h700/device_h700.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h700
PRODUCT_NAME := cm_h700
PRODUCT_BRAND := cti
PRODUCT_MODEL := h700
PRODUCT_MANUFACTURER := cti
