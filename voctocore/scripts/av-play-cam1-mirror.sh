#!/bin/sh
gst-launch-1.0 \
	tcpclientsrc host=localhost port=13000 !\
	gdpdepay !\
	xvimagesink \
	\
	tcpclientsrc host=localhost port=23000 !\
	gdpdepay !\
	alsasink sync=false