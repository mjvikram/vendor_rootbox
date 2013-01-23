# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i9103/full_i9103.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/i9100

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_DEVICE := i9103
PRODUCT_NAME := rootbox_i9103
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9103

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9103 TARGET_DEVICE=GT-I9103 BUILD_FINGERPRINT=samsung/GT-I9103/GT-I9103:4.2.1/JRO03C/XXLPQ:eng/Adam77Root-test-keys PRIVATE_BUILD_DESC="GT-I9103-eng 4.2.1 JRO03C XXLPQ Adam77Root-test-keys"
PRODUCT_RELEASE_NAME := GT-I9103

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Copy Onandroid partitions table
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/onandroid/s2-common/partlayout4nandroid:system/partlayout4nandroid
