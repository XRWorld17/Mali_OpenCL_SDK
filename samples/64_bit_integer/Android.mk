LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= 64_bit_integer

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../../include \
	$(LOCAL_PATH)/../../common
	
LOCAL_SRC_FILES := 	\
	64_bit_integer.cpp 	
	

LOCAL_SHARED_LIBRARIES := \
	libOpenCL
	

LOCAL_STATIC_LIBRARIES := \
	libCommon
	

LOCAL_CFLAGS += -c
LOCAL_CFLAGS += -Wall

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
