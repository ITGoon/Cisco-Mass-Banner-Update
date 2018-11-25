#!/bin/bash
IP_FILE="switches.txt"

if [[ ! -f ${IP_FILE} ]]; then
   echo "No File!"
   exit 1
fi
for IP_ADDRESS in $(cat $IP_FILE); do
   ./banner.sh "$IP_ADDRESS"
done

