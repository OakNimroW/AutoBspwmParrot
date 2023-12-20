#!/bin/bash

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
    echo "%{F#76B97F}󰞀 %{F#DEE1E6}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
    echo "%{F#76B97F}󰞀 %{F#DEE1E6}Disconnected"
fi
