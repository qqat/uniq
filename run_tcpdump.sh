#!/bin/bash 

now=$(date +"%Y%m%d_%T")

tcpdump -i lo 'port 80' -w log/port_80_dump_$now.pcap & 
sleep $1m 

killall -15 tcpdump
