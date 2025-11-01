ARG VERSION=latest
FROM n8nio/n8n:${VERSION}
USER root
RUN npm install -g escpos escpos-network jimp
USER node
