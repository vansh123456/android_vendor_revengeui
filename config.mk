# Copyright (C) 2019 RevengeOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/revengeui

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# Fonts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_PACKAGES += \
    FontAileronOverlay \
    FontInterOverlay \
    FontUrbanistOverlay
    Fontsamsung-sansOverlay

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay/common/

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_720.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_1080.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_1440.zip:system/media/bootanimation.zip
else
    $(error "RevengeOS: TARGET_BOOT_ANIMATION_RES is undefined")
endif

# Apps
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    RevengeMessages \
    RevengeOSThemePicker

# Gradients
PRODUCT_PACKAGES += \
    ColorStyleSolid \
    GradientBurningOrange \
    GradientNightMare \
    GradientOrangeFun \
    GradientPurple \
    GradientQuepal \
    GradientSkyBlue \
    GradientSkyline \
    GradientSublime \
    GradientSunset \
    GradientVanusa \
    GradientJuicyCake

# Themes
PRODUCT_PACKAGES += \
    RevengeOSCustomisation
