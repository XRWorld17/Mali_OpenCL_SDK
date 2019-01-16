LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)  \

LOCAL_C_INCLUDES += external/stlport/stlport bionic/ bionic/libstdc++/include
	
LOCAL_SRC_FILES := 	\
	common.cpp 	\
	image.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libstdc++ \
	liblog \
#	libstlport

LOCAL_STATIC_LIBRARIES := \
	libstlport_static

LOCAL_CFLAGS += -c
LOCAL_CFLAGS += -Wall
	
LOCAL_MODULE:= libCommon

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
