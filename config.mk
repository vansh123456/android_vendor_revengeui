# Copyright (C) 2017 The Pure Nexus Project
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

# Prebuilt Packages
PRODUCT_PACKAGES += \
    SoundPickerPrebuilt \
    WallpaperPickerGooglePrebuilt \
    TimeZoneDataPrebuilt \
    WellbeingPrebuilt \
    MarkupGoogle

TARGET_MINIMAL_APPS ?= false

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

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

# Fonts
PRODUCT_COPY_FILES += \
    vendor/revengeui/fonts/Metropolis-Regular.ttf:system/fonts/Metropolis-Regular.ttf \
    vendor/revengeui/fonts/Metropolis-RegularItalic.ttf:system/fonts/Metropolis-Italic.ttf \
    vendor/revengeui/fonts/Metropolis-Medium.ttf:system/fonts/Metropolis-Medium.ttf \
    vendor/revengeui/fonts/Metropolis-MediumItalic.ttf:system/fonts/Metropolis-MediumItalic.ttf \
    vendor/revengeui/fonts/Metropolis-SemiBold.ttf:system/fonts/Metropolis-SemiBold.ttf \
    vendor/revengeui/fonts/Metropolis-SemiBoldItalic.ttf:system/fonts/Metropolis-SemiBoldItalic.ttf \
    vendor/revengeui/fonts/Metropolis-Bold.ttf:system/fonts/Metropolis-Bold.ttf \
    vendor/revengeui/fonts/Metropolis-BoldItalic.ttf:system/fonts/Metropolis-BoldItalic.ttf

ADDITIONAL_FONTS_FILE := vendor/revengeui/fonts/metropolis.xml

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/revengeui/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/revengeui/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/revengeui/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# Include package overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/revengeui/overlay/common/

# Primary Themes
PRODUCT_PACKAGES += \
    DarkThemeAndroidOverlay \
    DarkThemeSettingsOverlay \
    BlackThemeAndroidOverlay \
    BlackThemeSettingsOverlay

# Gradients
PRODUCT_PACKAGES += \
    BlueSkyTheme \
    CherryTheme \
    DeepSkylineTheme \
    DeepSunsetTheme \
    FireTheme \
    FlareTheme \
    GrapeVineTheme \
    HyakkimaruTheme \
    KyeMehTheme \
    LavenderTheme \
    LightSeaStormTheme \
    OrangeCoralTheme \
    PeachyTheme \
    PolarGreenTheme \
    PureLustTheme \
    QuepalTheme \
    ReaTheme \
    SeaStormTheme \
    ShadesofGreyTheme \
    SinCityRedTheme \
    SkylineTheme \
    SublimeTheme \
    TimberTheme \
    WitchingHourTheme \
    YodaTheme
