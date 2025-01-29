#!/bin/bash

# Verifica si existe el archivo descargado
if [ -f "./env-file/.env" ]; then
    mv ./env-file/.env .env
    echo ".env movido al proyecto ✅"
else
    echo "❌ No se encontró el archivo .env"
fi
