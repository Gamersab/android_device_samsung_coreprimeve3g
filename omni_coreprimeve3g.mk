## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := coreprimeve3g

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/coreprimeve3g/full_coreprimeve3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := coreprimeve3g
PRODUCT_NAME := omni_coreprimeve3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G361H
PRODUCT_MANUFACTURER := samsung
