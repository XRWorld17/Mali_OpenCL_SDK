#!/bin/bash
echo "Android  compiler on Linux Host"

function usage() {
  echo "Usage: "
  echo "  Build  lib: ./ndk_build-android.sh 1"
  echo "  Clean  lib: ./ndk_build-android.sh 0"
}

if [ $# -eq 0 ]
then 
  usage
  exit 2
fi

if [ $1 -eq 0 ]
then 
  type=clean
else
  type=  
fi
#echo "Build type: ${type} "

start_tm=`date +%s%N`;

  APP_BUILD_SCRIPT_DIR=`pwd`
  OUT_DIR=${APP_BUILD_SCRIPT_DIR}/bin
  

  echo You SHOULD check your ndk tool first, supported version: android-ndk-r15c

  ndk-build  ${type} NDK_PROJECT_PATH=null APP_BUILD_SCRIPT=$APP_BUILD_SCRIPT_DIR/Android.mk NDK_APPLICATION_MK=$APP_BUILD_SCRIPT_DIR/Application.mk  NDK_DEBUG=0 NDK_OUT=$OUT_DIR/obj NDK_LIBS_OUT=$OUT_DIR/lib -j6

  echo ----------Build Finished----------
  end_tm=`date +%s%N`;
  use_tm=`echo $end_tm $start_tm | awk '{ print ($1 - $2) / 1000000000}'`
  echo Elapsed  time:  ${use_tm} seconds

