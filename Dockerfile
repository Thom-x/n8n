ARG VERSION=latest
FROM n8nio/n8n:${VERSION}
USER root
RUN apk add --no-cache cups-client
RUN npm install -g escpos escpos-network
USER node


