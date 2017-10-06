#pragma once

#include <stdint.h>
#include <inttypes.h>

int scePadClose(int handle);
int scePadInit(void);
int scePadOpen(int userID, int, int, void *);
int scePadRead(int handle, void *data, int count);
int scePadReadState(int handle, void *data);

/* unreversed */

// int64_t scePadClose();
int64_t scePadDeviceOpen();
int64_t scePadDisableVibration();
int64_t scePadEnableUsbConnection();
int64_t scePadGetControllerInformation();
int64_t scePadGetDataInternal();
int64_t scePadGetDeviceInfo();
// int64_t scePadInit();
int64_t scePadMbusInit();
// int64_t scePadOpen();
// int64_t scePadRead();
// int64_t scePadReadState();
int64_t scePadResetLightBar();
int64_t scePadResetOrientation();
int64_t scePadSetAngularVelocityDeadbandState();
int64_t scePadSetAutoPowerOffCount();
int64_t scePadSetConnection();
int64_t scePadSetLightBar();
int64_t scePadSetLightBarBaseBrightness();
int64_t scePadSetLightBarBlinking();
int64_t scePadSetMotionSensorState();
int64_t scePadSetTiltCorrectionState();
int64_t scePadSetVibration();
