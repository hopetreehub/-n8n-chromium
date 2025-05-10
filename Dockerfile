FROM docker.n8n.io/n8nio/n8n:1.91.3

USER root
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ttf-liberation \
      udev \
      dumb-init
ENV PUPPETEER_EXECUTABLE_PATH=/usr/lib/chromium/chromium
USER node
