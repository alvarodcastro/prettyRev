#!/bin/bash
if [ $# -eq 1 ]; then
	socat file:`tty`,raw,echo=0 tcp-listen:$1
else
	echo "Usage [Listener PORT]"
fi
