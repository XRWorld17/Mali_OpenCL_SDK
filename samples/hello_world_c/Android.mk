LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../../include \
	$(LOCAL_PATH)/../../common \
	$(LOCAL_PATH)  \

LOCAL_C_INCLUDES += external/stlport/stlport bionic/ bionic/libstdc++/include
	
LOCAL_SRC_FILES := 	\
	hello_world_c.cpp 	
	

LOCAL_SHARED_LIBRARIES := \
	libOpenCL \
	libcutils \
	libutils \
	liblog  \
#	libstlport

LOCAL_STATIC_LIBRARIES := \
	libCommon \
	libstlport_static
	

LOCAL_CFLAGS += -c
LOCAL_CFLAGS += -Wall
	
LOCAL_MODULE:= hello_world_c

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
