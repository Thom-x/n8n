ARG VERSION=latest

FROM n8nio/n8n:${VERSION}
USER root
RUN npm install -g escpos escpos-network
RUN npm install --include=optional --os=linux --libc=musl --cpu=x64 sharp
USER node
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]





