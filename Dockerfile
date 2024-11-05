FROM choyakawa/openvpn-tunnel:latest

COPY openvpn2socks5_entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/openvpn2socks5_entrypoint.sh
RUN apk add grep && bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install

ENTRYPOINT ["openvpn2socks5_entrypoint.sh"]
