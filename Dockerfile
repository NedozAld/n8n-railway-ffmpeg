# Imagen oficial de n8n
FROM n8nio/n8n:latest
# Si quieres fijar versión concreta:
# FROM n8nio/n8n:1.97.1

# Instalar ffmpeg (la imagen base es Alpine)
USER root
RUN apk add --no-cache ffmpeg

# Volver al usuario por defecto
USER node
