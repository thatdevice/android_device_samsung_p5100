#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/samsung/p5100/p51xx-common.mk)

LOCAL_PATH := device/samsung/p5100

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Packages
PRODUCT_PACKAGES += \
	SamsungServiceMode

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.ril_class=Smdk4210RIL \
	mobiledata.interfaces=pdp0,wlan0,gprs,ppp0

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Use the non-open-source parts, if they're present
$(call inherit-product, vendor/samsung/p51xx/p5100-vendor.mk)
