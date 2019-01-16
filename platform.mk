# This confidential and proprietary software may be used only as
# authorised by a licensing agreement from ARM Limited
#   (C) COPYRIGHT 2013 ARM Limited
#       ALL RIGHTS RESERVED
# The entire notice above must be reproduced on all authorised
# copies and copies may only be made to the extent permitted
# by a licensing agreement from ARM Limited.

#CC:=arm-none-linux-gnueabi-g++
#AR=arm-none-linux-gnueabi-ar

#Android envi setup, wwb -----------------------------
#CC:=arm-linux-androideabi-g++
#AR=arm-linux-androideabi-ar

#ARCH		:= arm
#CROSS_COMPILE	?= ~/project/5260mango_kitkat/android-google/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-
#Android_PATH := ~/project/5260mango_kitkat/android-google
Android_PATH := ~/pbroject/5260ramos/s97/kitkat.t5260.full.dev

CROSS_COMPILE	?= $(Android_PATH)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-

# Make variables (CC, etc...)
AS		= $(CROSS_COMPILE)as
LD		= $(CROSS_COMPILE)ld
CC		= $(CROSS_COMPILE)gcc
CPP		= $(CC) -E
AR		= $(CROSS_COMPILE)ar
NM		= $(CROSS_COMPILE)nm
STRIP		= $(CROSS_COMPILE)strip
OBJCOPY		= $(CROSS_COMPILE)objcopy
OBJDUMP		= $(CROSS_COMPILE)objdump
#Android envi setup end -----------------------------------

# Test to see if the platform is Windows (it's Windows if the shell has the .exe extention).
ifeq (.exe, $(suffix $(SHELL)))
	RM:=del /f
	CONCATENATE:=&
	MKDIR:=mkdir
	CP:=copy
else
	RM:=rm -f
	CONCATENATE:=;
	MKDIR:=mkdir -p
	CP:=cp
endif	
