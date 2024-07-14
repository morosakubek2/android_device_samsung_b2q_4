#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
#TARGET_SCREEN_HEIGHT := 2340
#TARGET_SCREEN_WIDTH := 1080

# Fingerprint
PRODUCT_PACKAGES += \
    init.udfps.rc

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# Init
PRODUCT_PACKAGES += \
    init.b2q.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResB2q

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/b2q/b2q-vendor.mk)
