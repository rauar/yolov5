#!/bin/bash

gst-launch-1.0 -t -v tcpserversrc host=0.0.0.0 port=10000 ! queue ! matroskademux ! vp8dec ! videoconvert ! ximagesink
#gst-launch-1.0 -t -v tcpserversrc host=0.0.0.0 port=10000 ! queue ! matroskademux ! vp8dec ! videoconvert ! appsink
