

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hello
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := hello.c
LOCAL_CFLAGS += -ggdb
LOCAL_LDFLAGS += -g
LOCAL_STRIP_MODULE = false
LOCAL_SHARED_LIBRARIES := libutils libcutils libbinder
LOCAL_C_INCLUDES += frameworks/base/include system/core/include
include $(BUILD_EXECUTABLE)

