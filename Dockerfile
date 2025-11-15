FROM n8nio/n8n:1.119.2

# Pasamos a root para poder instalar paquetes y crear carpetas
USER root

# Instalar ffmpeg y limpiar caché de apt
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Crear la carpeta /data y darle permisos al usuario "node"
RUN mkdir -p /data \
    && chown -R node:node /data

# Volver al usuario por defecto de n8n
USER node
