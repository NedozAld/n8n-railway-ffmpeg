FROM n8nio/n8n:1.119.2

# Cambiar a root para instalar paquetes
USER root

# Instalar ffmpeg completo
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Volver al usuario por defecto de n8n
USER node
