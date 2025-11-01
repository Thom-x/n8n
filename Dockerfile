ARG VERSION=latest
FROM n8nio/n8n:${VERSION}
USER root
RUN apk add --no-cache
RUN npm install -g escpos escpos-network ditherjs
USER node

