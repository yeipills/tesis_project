---
    
# UBB Cyber Security Academy
    
[![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-7.1.3-red?logo=rubyonrails&style=for-the-badge)](https://rubyonrails.org)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue?logo=postgresql&style=for-the-badge)](https://www.postgresql.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
    
Bienvenido a la **UBB Cyber Security Academy**, una plataforma de aprendizaje dedicada a proporcionar habilidades avanzadas en ciberseguridad.
    
## Descripción
    
**UBB Cyber Security Academy** es una aplicación web desarrollada con **Ruby on Rails**. Nuestro objetivo es ofrecer cursos de alta calidad en el campo de la ciberseguridad, facilitando el aprendizaje y la capacitación de profesionales en este sector crítico.
    
## Características
    
- **Cursos especializados**: Amplia variedad de cursos en diferentes áreas de la ciberseguridad.
- **Testimonios de éxito**: Historias de éxito de nuestros estudiantes que han mejorado sus habilidades.
- **Interfaz intuitiva**: Diseño limpio y moderno utilizando **Bulma CSS** y **Font Awesome**.
- **Autenticación segura**: Implementación de **bcrypt** para la gestión segura de usuarios.
- **Soporte comunitario**: Conéctate con otros estudiantes y expertos en ciberseguridad.
    
---
    
# Instalación de Ruby on Rails con RVM
    
Este README te guiará a través de los pasos necesarios para instalar **Ruby** utilizando **RVM** en un proyecto existente de **Ruby on Rails**, además de solucionar el error que puede surgir con la instalación de ciertas gemas utilizando `libpq-dev`.
    
## Requisitos previos
    
Asegúrate de que tu sistema esté actualizado antes de comenzar:
    
```bash
sudo apt update && sudo apt upgrade -y
```
    
Instala las dependencias esenciales que serán necesarias para compilar Ruby:
    
```bash
sudo apt install -y curl gnupg build-essential libssl-dev libreadline-dev zlib1g-dev
```
    
## 1. Instalar RVM
    
### Paso 1: Instalar las claves GPG
    
Para verificar los paquetes de instalación de **RVM**, primero instala las claves GPG:
    
```bash
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
    
### Paso 2: Instalar RVM
    
Una vez que hayas configurado las claves, instala **RVM** ejecutando el siguiente comando:
    
```bash
\curl -sSL https://get.rvm.io | bash -s stable
```
    
### Paso 3: Cargar RVM en la terminal
    
Después de la instalación, carga **RVM** en tu sesión actual de la terminal:
    
```bash
source ~/.rvm/scripts/rvm
```
    
### Paso 4: Verificar instalación de RVM
    
Para asegurarte de que **RVM** está correctamente instalado, verifica su versión:
    
```bash
rvm -v
```
    
## 2. Instalar Ruby
    
### Paso 1: Instalar Ruby usando RVM
    
Ahora que tienes **RVM** instalado, puedes instalar la versión de **Ruby** que necesitas. Aquí instalaremos **Ruby 3.3.4**:
    
```bash
rvm install 3.3.4
```
    
### Paso 2: Usar Ruby por defecto
    
Establece **Ruby 3.3.4** como la versión predeterminada para tu sistema:
    
```bash
rvm use 3.3.4 --default
```
    
### Paso 3: Verificar instalación de Ruby
    
Verifica que **Ruby** se haya instalado correctamente:
    
```bash
ruby -v
```
    
> **Nota**: Recomendamos utilizar la versión **Ruby 3.3.4** para compatibilidad con las dependencias del proyecto.
    
## 3. Instalar Bundler
    
**Bundler** es una herramienta esencial para gestionar dependencias de gemas en proyectos Rails. Instálalo ejecutando:
    
```bash
gem install bundler
```
    
## 4. Instalar `libpq-dev` para solucionar errores de compilación
    
Si experimentas errores al compilar gemas nativas, como el paquete `pg` para PostgreSQL, asegúrate de instalar **libpq-dev** con el siguiente comando:
    
```bash
sudo apt install libpq-dev
```
    
Este paquete es necesario para que las gemas que dependen de PostgreSQL se compilen correctamente.
    
## 5. Instalar dependencias del proyecto existente
    
Navega a tu proyecto existente y utiliza **bundle** para instalar las gemas necesarias:
    
```bash
cd /ruta/a/tu/proyecto
bundle install
```
    
---
    
## Configuración del proyecto UBB Cyber Security Academy
    
### Paso 1: Clonar el repositorio
    
Clona el repositorio del proyecto:
    
```bash
git clone https://github.com/yeipills/ubbcsa.git
cd ubbcsa
```
    
### Paso 2: Instalar dependencias
    
Ya en el directorio del proyecto, ejecuta:
    
```bash
bundle install
```
    
### Paso 3: Configurar las variables de entorno
    
Crea un archivo `.env` en la raíz del proyecto y agrega las siguientes variables. Reemplaza los valores con tus propias credenciales:
    
```bash
SUPABASE_HOST=tu_supabase_host
SUPABASE_PORT=tu_supabase_puerto
SUPABASE_USERNAME=tu_supabase_usuario
SUPABASE_PASSWORD=tu_supabase_contraseña
SUPABASE_DATABASE=tu_supabase_base_de_datos
GOOGLE_CLIENT_ID=tu_google_client_id
GOOGLE_CLIENT_SECRET=tu_google_client_secret
```
    
### Paso 4: Configurar la base de datos
    
Configura la base de datos ejecutando los siguientes comandos:
    
```bash
rails db:create
rails db:migrate
```
    
### Paso 5: Iniciar el servidor
    
Inicia el servidor localmente:
    
```bash
rails server
```
    
Abre tu navegador y navega a `http://localhost:3000`.
    
---
    
## Uso
    
Una vez que la aplicación esté en funcionamiento, puedes:
    
- **Registrarte** como un nuevo usuario.
- **Iniciar sesión** con tus credenciales.
- **Explorar** y matricularte en diversos cursos de ciberseguridad.
- **Leer** testimonios de otros estudiantes.
    
---
    
## Contribución
    
Si deseas contribuir a este proyecto, por favor sigue estos pasos:
    
1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-caracteristica`).
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir nueva característica'`).
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`).
5. Abre un Pull Request.
    
---
    
## Gemas Utilizadas
    
El proyecto utiliza las siguientes gemas para proporcionar la funcionalidad del sistema:
    
- **Rails 7.1.3**: El framework principal para el desarrollo del proyecto.
- **Puma**: Un servidor web altamente eficiente.
- **Sprockets-Rails**: Gestión del pipeline de activos.
- **Importmap-Rails**: Para la gestión de JavaScript con ESM import maps.
- **Turbo-Rails** y **Stimulus-Rails**: Para proporcionar una experiencia SPA.
- **Jbuilder**: Generación de JSON para APIs.
- **Capybara** y **Selenium-Webdriver**: Herramientas de prueba para pruebas de sistema.
- **Bulma-Rails**: Para el diseño del frontend.
- **Omniauth-Google-OAuth2**: Autenticación con Google.
- **Httparty**: Para realizar solicitudes HTTP en APIs.
- **Pundit**: Para la autorización basada en políticas.
- **Bcrypt**: Para la autenticación segura de contraseñas.
    
### Desarrollo y Pruebas
    
- **Web-Console**: Para abrir una consola de Rails en las páginas de error durante el desarrollo.
- **Dotenv-Rails**: Para cargar variables de entorno desde un archivo `.env`.
    
---
    
## Créditos
    
- **Diseño**: Utilizamos **Bulma CSS** y **Font Awesome** para un diseño moderno y responsivo.
- **Desarrollo**: Este proyecto fue desarrollado por el equipo de **UBB Cyber Security Academy**.
    
---
    
## Licencia
    
Este proyecto está licenciado bajo la **Licencia MIT**. Consulta el archivo LICENSE para obtener más información.
    
---
