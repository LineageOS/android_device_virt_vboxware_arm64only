#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device
$(call inherit-product, device/virt/vboxware_arm64only/device.mk)

$(call enforce-product-packages-exist,\
    android.hardware.health@2.0-impl-default.recovery \
    com.android.ranging \
    DeviceDiagnostics \
    product_manifest.xml \
    uprobestats)

PRODUCT_NAME := aosp_vboxware_arm64only
PRODUCT_DEVICE := vboxware_arm64only
PRODUCT_BRAND := vboxware_arm64only
PRODUCT_MANUFACTURER := vboxware_arm64only
PRODUCT_MODEL := vboxware_arm64only

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)
