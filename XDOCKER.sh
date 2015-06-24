#!/bin/bash
xhost +
XSOCK=/tmp/.X11-unix/X0
sudo docker run -v $XSOCK:$XSOCK -it $1
