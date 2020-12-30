#!/bin/bash

gst-launch-1.0 v4l2src extra-controls=s,exposure_auto=3,exposure_absolute=30,brightness=100,backlight_compensation=1 device=/dev/video0 ! video/x-raw,width=640,height=480,framerate=15/2,format=YUY2 ! videorate ! video/x-raw,framerate=4/1 ! nvvidconv ! 'video/x-raw(memory:NVMM),format=NV12' ! nvv4l2vp8enc  ! matroskamux streamable=true ! tee name=t ! queue ! tcpclientsink host=127.0.0.1 port=10000 t. ! filesink location=stream0.webm
