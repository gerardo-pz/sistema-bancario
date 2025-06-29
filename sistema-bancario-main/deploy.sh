#!/bin/bash

# Script de despliegue para Railway
echo "🚀 Iniciando despliegue..."

# Ejecutar migraciones
echo "📊 Ejecutando migraciones..."
python manage.py migrate --noinput

# Recolectar archivos estáticos
echo "📁 Recolectando archivos estáticos..."
python manage.py collectstatic --noinput

# Crear superusuario si no existe (opcional)
echo "👤 Verificando superusuario..."
python manage.py shell -c "
from django.contrib.auth.models import User
if not User.objects.filter(is_superuser=True).exists():
    User.objects.create_superuser('admin', 'admin@example.com', 'admin123')
    print('Superusuario creado: admin/admin123')
else:
    print('Superusuario ya existe')
"

echo "✅ Despliegue completado!" 