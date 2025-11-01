ARG VERSION=latest
FROM n8nio/n8n:${VERSION}

USER root

# Install build dependencies for Sharp on Alpine Linux
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    vips-dev \
    fftw-dev \
    gcc \
    musl-dev

# Install npm packages
RUN npm install -g escpos escpos-network

# Install Sharp with proper Alpine Linux support
RUN npm install --include=optional --platform=linuxmusl --arch=x64 sharp

USER node

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
