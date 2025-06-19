#!/bin/bash

# Script para configurar variables de entorno
echo "🚀 Configurando variables de entorno..."

# Verificar si ya existe el archivo .env
if [ -f ".env" ]; then
    echo "⚠️  El archivo .env ya existe. ¿Deseas sobrescribirlo? (y/n)"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "📝 Sobrescribiendo archivo .env..."
    else
        echo "❌ Operación cancelada."
        exit 0
    fi
fi

# Copiar el archivo de ejemplo
cp env.example .env

echo "✅ Archivo .env creado exitosamente!"
echo ""
echo "📋 Próximos pasos:"
echo "1. Edita el archivo .env con tus valores reales"
echo "2. Ejecuta: mvn spring-boot:run"
echo ""
echo "🔒 Recuerda: El archivo .env está en .gitignore y no se subirá al repositorio" 