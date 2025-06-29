# 💳 Sistema Bancario

Sistema web desarrollado con **Django** para la gestión de operaciones bancarias básicas como creación de cuentas, envío de transacciones, auditoría y administración de usuarios. Diseñado para simular el comportamiento de una plataforma bancaria real.

---

## 📚 Tabla de Contenidos

- [🎯 Objetivo](#-objetivo)
- [🚀 Funcionalidades Principales](#-funcionalidades-principales)
- [🛠️ Tecnologías Utilizadas](#️-tecnologías-utilizadas)
- [⚙️ Instalación y Ejecución](#️-instalación-y-ejecución)
- [🚀 Despliegue en Railway](#-despliegue-en-railway)
- [📁 Estructura del Proyecto](#-estructura-del-proyecto)

---

## 🎯 Objetivo

Este proyecto tiene como propósito simular un sistema bancario básico que permita registrar usuarios, gestionar sus cuentas, realizar transacciones entre ellas y mantener un historial auditable de todas las operaciones.

---

## 🚀 Funcionalidades Principales

- 🧑 Registro y autenticación de usuarios
- 💼 Creación y gestión de cuentas bancarias
- 💸 Transferencias entre cuentas
- 📬 Gestión de solicitudes (autorizaciones, revisiones)
- 📜 Auditoría de eventos y operaciones del sistema
- 📚 Implementación de estructuras de datos clásicas (pila, cola, árbol binario, lista enlazada)

---

## 🛠️ Tecnologías Utilizadas

- **Lenguaje:** Python 3.x
- **Framework:** Django
- **Base de datos:** PostgreSQL 
- **Estilos:** Bootstrap
- **Otros:** 
  - Django Admin
  - Django ORM
  - Virtualenv

---

## ⚙️ Instalación y Ejecución

Sigue estos pasos para correr el proyecto localmente:

### 1. Clona el repositorio

```bash
git clone https://github.com/syderkkk/sistema-bancario.git
cd sistema-bancario
```
### 2. Crea un entorno virtual

```bash
# En Windows
python -m venv venv
venv\Scripts\activate
```

### 3. Instala las dependencias

```bash
pip install -r requirements.txt
```

### 4. Configura las variables de entorno

```bash
# Copia el archivo de ejemplo
cp env.example .env

# Edita el archivo .env con tus configuraciones
```

### 5. Ejecuta las migraciones

```bash
python manage.py makemigrations
python manage.py migrate
```

### 6. Crea un superusuario (opcional)

```bash
python manage.py createsuperuser
```

### 7. Ejecuta el servidor

```bash
python manage.py runserver
```

---

## 🚀 Despliegue en Railway

Este proyecto está configurado para ser desplegado fácilmente en Railway. Sigue estos pasos:

### 1. Preparación del repositorio

Asegúrate de que tu código esté en GitHub con todos los archivos de configuración:
- `requirements.txt`
- `Procfile`
- `runtime.txt`
- `env.example`

### 2. Conectar con Railway

1. Ve a [Railway](https://railway.app) y crea una cuenta
2. Conecta tu repositorio de GitHub
3. Selecciona el repositorio del sistema bancario

### 3. Configurar la base de datos

1. En Railway, ve a la pestaña "Variables"
2. Agrega el plugin PostgreSQL desde la sección "Add Plugin"
3. Railway automáticamente configurará la variable `DATABASE_URL`

### 4. Configurar variables de entorno

En Railway, agrega estas variables de entorno:

```bash
DJANGO_SECRET_KEY=tu_clave_secreta_muy_segura_aqui
DJANGO_DEBUG=False
DJANGO_ALLOWED_HOSTS=.railway.app
```

### 5. Despliegue automático

Railway detectará automáticamente que es un proyecto Django y:
- Instalará las dependencias de `requirements.txt`
- Ejecutará las migraciones
- Recolectará archivos estáticos
- Iniciará el servidor con Gunicorn

### 6. Verificar el despliegue

Una vez desplegado, podrás acceder a tu aplicación en la URL proporcionada por Railway.

### 📁 Estructura del Proyecto
```text
sistema-bancario/
├── auditoria/         # Módulo de auditoría de operaciones
├── cuentas/           # Lógica para cuentas bancarias
├── solicitudes/       # Gestión de solicitudes entre usuarios/cuentas
├── transacciones/     # Envío y recepción de dinero
├── usuarios/          # Registro y autenticación de usuarios
├── utils/             # Implementaciones de estructuras de datos
├── sistema_bancario/  # Configuración global del proyecto Django
├── manage.py          # Script de gestión del proyecto
├── requirements.txt   # Lista de dependencias
├── Procfile           # Configuración para Railway
├── runtime.txt        # Versión de Python
├── env.example        # Variables de entorno de ejemplo
└── deploy.sh          # Script de despliegue
```