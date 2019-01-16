LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= libCommon

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)
	
LOCAL_SRC_FILES := 	\
	common.cpp 	\
	image.cpp
	

LOCAL_CFLAGS += -c
LOCAL_CFLAGS += -Wall

LOCAL_ARM_MODE  := arm

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
