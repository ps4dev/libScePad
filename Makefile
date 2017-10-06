###################################

ifndef Ps4Sdk
ifdef ps4sdk
Ps4Sdk := $(ps4sdk)
endif
ifdef PS4SDK
Ps4Sdk := $(PS4SDK)
endif
ifndef Ps4Sdk
$(error Neither PS4SDK, Ps4Sdk nor ps4sdk set)
endif
endif

###################################

target := ps4_stub_lib
OutPath := lib

###################################

include $(Ps4Sdk)/make/ps4sdk.mk

###################################

$(eval $(call generateModule, \
	libScePad, \
		scePadClose \
		scePadDeviceOpen \
		scePadDisableVibration \
		scePadEnableUsbConnection \
		scePadGetControllerInformation \
		scePadGetDataInternal \
		scePadGetDeviceInfo \
		scePadInit \
		scePadMbusInit \
		scePadOpen \
		scePadRead \
		scePadReadState \
		scePadResetLightBar \
		scePadResetOrientation \
		scePadSetAngularVelocityDeadbandState \
		scePadSetAutoPowerOffCount \
		scePadSetConnection \
		scePadSetLightBar \
		scePadSetLightBarBaseBrightness \
		scePadSetLightBarBlinking \
		scePadSetMotionSensorState \
		scePadSetTiltCorrectionState \
		scePadSetVibration \
))

###################################
