FROM n8nio/n8n:1.119.2

USER root

# Alpine usa apk en lugar de apt-get
RUN apk add --no-cache ffmpeg

USER node
