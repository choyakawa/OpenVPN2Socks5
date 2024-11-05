#!/usr/bin/env bash
# Start OpenVPN
nohup /usr/local/bin/entrypoint.sh &
# Start Socks5 Server
sleep 5s
pubIP=$(curl ipinfo.io/ip)
gost -L socks5://:${socks5port}?udp=true
