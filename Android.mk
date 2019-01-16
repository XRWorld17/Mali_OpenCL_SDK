LOCAL_PATH := $(call my-dir)

CL_PROJ_PATH := $(LOCAL_PATH)


##################################################
# Build all sub-directories
$(info  " ***include all Android.mk under AREngine/thirdParty")

include $(CL_PROJ_PATH)/lib/Android.mk
include $(CL_PROJ_PATH)/common/Android.mk

include $(call all-makefiles-under,$(CL_PROJ_PATH)/samples)

#include $(call all-makefiles-under,$(LOCAL_PATH))

