#!/usr/bin/env bash
# Start OpenVPN
# nohup /usr/local/bin/entrypoint.sh &
# Start Socks5 Server
sleep 5s
pubIP=$(curl ipinfo.io/ip)

gost -L "udp://:2408/162.159.192.1:2408?keepalive=true&ttl=25s&readBufferSize=4096"
# gost -L socks5://:1080?udp=true

