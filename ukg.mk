# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/ukg/config/common.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ukg/overlay/grouper

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ukg/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := ukg_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/nakasi/grouper:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_tvdpi.conf:system/etc/beerbong/properties.conf \
    vendor/ukg/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/ukg/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

