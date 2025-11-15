FROM n8nio/n8n:1.119.2

# Cambiar a root para instalar paquetes
USER root

# Instalar FFmpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Regresar al usuario normal
USER node
