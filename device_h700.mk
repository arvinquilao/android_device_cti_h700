$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/cti/h700/h700-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/cti/h700
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    
PRODUCT_COPY_FILES += \
device/cti/h700/rootdir/fstab.qcom:root/fstab.qcom \
device/cti/h700/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
device/cti/h700/rootdir/init.qcom.rc:root/init.qcom.rc \
device/cti/h700/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
device/cti/h700/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
device/cti/h700/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
device/cti/h700/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
device/cti/h700/rootdir/init.qcom.rc:root/init.qcom.rc \
device/cti/h700/rootdir/init.qcom.sh:root/init.qcom.sh \
device/cti/h700/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
device/cti/h700/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
device/cti/h700/rootdir/init.target.rc:root/init.target.rc \
device/cti/h700/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
device/cti/h700/rootdir/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
device/cti/h700/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
device/cti/h700/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
device/cti/h700/rootdir/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
device/cti/h700/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
device/cti/h700/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
device/cti/h700/rootdir/etc/snd_soc_msm/snd_soc_msm_8x10_wcd:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd \
device/cti/h700/rootdir/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuaa:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuaa \
device/cti/h700/rootdir/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuab:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuab 

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
device/cti/h700/idc/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
device/cti/h700/idc/Goodix-TS.idc:system/usr/idc/Goodix-TS.idc \
device/cti/h700/idc/himax-ts.idc:system/usr/idc/himax-ts.idc \
device/cti/h700/idc/msg2133.idc:system/usr/idc/msg2133.idc \
device/cti/h700/idc/qwerty.idc:system/usr/idc/qwerty.idc \
device/cti/h700/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

PRODUCT_COPY_FILES += \
device/cti/h700/audio_policy.conf:system/etc/audio_policy.conf \

PRODUCT_COPY_FILES += \
device/cti/h700/media_codecs.xml:system/etc/media_codecs.xml \
device/cti/h700/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
device/cti/h700/sec_config:system/etc/sec_config \
device/cti/h700/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf \
device/cti/h700/xtwifi.conf:system/etc/xtwifi.conf \
device/cti/h700/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
device/cti/h700/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
device/cti/h700/modules/coresight-event.ko:system/lib/modules/coresight-event.ko \
device/cti/h700/modules/dma_test.ko:system/lib/modules/dma_test.ko \
device/cti/h700/modules/evbug.ko:system/lib/modules/evbug.ko \
device/cti/h700/modules/gpio_axis.ko:system/lib/modules/gpio_axis.ko \
device/cti/h700/modules/gpio_event.ko:system/lib/modules/gpio_event.ko \
device/cti/h700/modules/gpio_input.ko:system/lib/modules/gpio_input.ko \
device/cti/h700/modules/gpio_matrix.ko:system/lib/modules/gpio_matrix.ko \
device/cti/h700/modules/gpio_output.ko:system/lib/modules/gpio_output.ko \
device/cti/h700/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
device/cti/h700/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
device/cti/h700/modules/oprofile.ko:system/lib/modules/oprofile.ko \
device/cti/h700/modules/qcedev.ko:system/lib/modules/qcedev.ko \
device/cti/h700/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
device/cti/h700/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
device/cti/h700/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
device/cti/h700/modules/spidev.ko:system/lib/modules/spidev.ko \
device/cti/h700/modules/wlan.ko:system/lib/modules/wlan.ko \
device/cti/h700/modules/pronto/pronto_wlan.ko:system/lib/modules/pronto/pronto_wlan.ko


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
device/cti/h700/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
device/cti/h700/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
device/cti/h700/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
device/cti/h700/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
device/cti/h700/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
device/cti/h700/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
device/cti/h700/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
device/cti/h700/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
device/cti/h700/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
device/cti/h700/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
device/cti/h700/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
device/cti/h700/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
device/cti/h700/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
device/cti/h700/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
device/cti/h700/permissions/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
device/cti/h700/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
device/cti/h700/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_h700
PRODUCT_DEVICE := h700
