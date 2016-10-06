LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_HAS_LEGACY_CAMERA_HAL1),true)
    LOCAL_CFLAGS += -DNO_CAMERA_SERVER

    LOCAL_SHARED_LIBRARIES += \
        libcameraservice \
        libgui \
        libhidltransport \
        android.hardware.camera.common@1.0 \
        android.hardware.camera.provider@2.4
endif

include $(BUILD_EXECUTABLE)
