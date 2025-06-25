# run_once.py

from django.core.management import call_command
from django.contrib.auth import get_user_model

# Migraciones
call_command('migrate')

# Crear superusuario sin interacción
User = get_user_model()
if not User.objects.filter(username='admin').exists():
    User.objects.create_superuser('admin', 'admin@example.com', 'admin123')
    print("✅ Superusuario creado.")
else:
    print("⚠️ Ya existe el usuario admin.")
