ARG VERSION=latest
FROM n8nio/n8n:${VERSION}
USER root
RUN apk add --no-cache cups-client
RUN mkdir -p /etc/cups && echo "ServerName 192.168.1.2" >> /etc/cups/client.conf
RUN npm install -g escpos escpos-network
USER node




