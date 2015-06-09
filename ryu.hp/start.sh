#!/bin/bash -v
tcpdump -i eth0 -s 0 -w home/trace not port ssh -c 1000 &
ryu-manager ryu/ryu/app/simple_switch_13.py --verbose &
