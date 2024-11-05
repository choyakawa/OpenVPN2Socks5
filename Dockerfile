FROM choyakawa/openvpn-tunnel:latest

COPY openvpn2socks5_entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/openvpn2socks5_entrypoint.sh
RUN apk add grep && curl -L https://raw.githubusercontent.com/snail007/goproxy/refs/heads/master/install_auto.sh | bash
ENV udpPort "4080"
EXPOSE 4080

ENTRYPOINT ["openvpn2socks5_entrypoint.sh"]
