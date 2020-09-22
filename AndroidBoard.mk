LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#----------------------------------------------------------------------
# Radio image
#----------------------------------------------------------------------
ifeq ($(ADD_RADIO_FILES), true)
radio_dir := $(LOCAL_PATH)/radio
RADIO_FILES := $(shell cd $(radio_dir) ; ls)
$(foreach f, $(RADIO_FILES), \
    $(call add-radio-file,radio/$(f)))
endif

TARGET_BOOTLOADER_EMMC_INTERNAL := $(LOCAL_PATH)/images/emmc_appsboot.mbn
$(TARGET_BOOTLOADER_EMMC_INTERNAL): $(TARGET_BOOTLOADER)

INSTALLED_RADIOIMAGE_TARGET += $(TARGET_BOOTLOADER_EMMC_INTERNAL)
$(call add-radio-file,images/splash.img)
$(call add-radio-file,images/modem.img)
$(call add-radio-file,images/rpm.img)
$(call add-radio-file,images/sbl1.img)
$(call add-radio-file,images/dsp.img)
$(call add-radio-file,images/cmnlib.img)
$(call add-radio-file,images/cmnlib64.img)
$(call add-radio-file,images/keymaster.img)
$(call add-radio-file,images/tz.img)
$(call add-radio-file,images/devcfg.img)
$(call add-radio-file,images/mdtp.img)
$(call add-radio-file,images/aboot.img)