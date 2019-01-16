LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	
LOCAL_SRC_FILES:= \
	opencl_stubs.c

LOCAL_SHARED_LIBRARIES := \
	libcutils 

LOCAL_CFLAGS += -fPIC
LOCAL_CFLAGS += -Wno-error=return-type
	
LOCAL_MODULE:= libOpenCL

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
