# Usa Node.js 14 ou 16 (Recomendado pela doc oficial)
FROM node:16-alpine

# Instala ferramentas de compilação necessárias (Python, Make, G++)
RUN apk add --no-cache python3 make g++

# Instala o GenieACS Oficial via NPM
RUN npm install -g genieacs@1.2.13

# Define diretório de trabalho
WORKDIR /app

# Cria links simbólicos para facilitar o uso dos comandos
RUN ln -s /usr/local/bin/genieacs-cwmp /app/genieacs-cwmp \
    && ln -s /usr/local/bin/genieacs-nbi /app/genieacs-nbi \
    && ln -s /usr/local/bin/genieacs-fs /app/genieacs-fs \
    && ln -s /usr/local/bin/genieacs-ui /app/genieacs-ui
