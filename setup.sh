#!/bin/bash

# URL de tu repositorio y la ID de la ejecución de GitHub Actions
GITHUB_REPO="mmanuch/test-secrets"  # Reemplázalo con tu nombre de usuario y repo
GITHUB_RUN_ID="13028490273"  # Actualiza con la ID de la ejecución de GitHub

echo "🔽 Descargando .env desde GitHub Artifacts..."
gh run download $GITHUB_RUN_ID -R $GITHUB_REPO -n env-file

# Verifica si el archivo .env se descargó
if [ -f "./env-file/.env" ]; then
    mv ./env-file/.env .env
    echo "✅ .env movido al proyecto"
else
    echo "⚠️ No se encontró el archivo .env, descárgalo manualmente desde GitHub."
fi
