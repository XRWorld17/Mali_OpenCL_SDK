LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../../include \
	$(LOCAL_PATH)/../../common \
	$(LOCAL_PATH)  \

LOCAL_C_INCLUDES += external/stlport/stlport bionic/ bionic/libstdc++/include
	
LOCAL_SRC_FILES := 	\
	sgemm.cpp 	
	

LOCAL_SHARED_LIBRARIES := \
	libOpenCL

LOCAL_STATIC_LIBRARIES := \
	libCommon
	

LOCAL_CFLAGS += -c
LOCAL_CFLAGS += -Wall
	
LOCAL_MODULE:= sgemm

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
