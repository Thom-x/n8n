ARG VERSION=latest
FROM n8nio/n8n:${VERSION}
USER root
RUN apk add --no-cache \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    giflib-dev \
    pixman-dev \
    build-base \
    g++ \
    make \
    python3
RUN npm install -g escpos escpos-network canvas
USER node
