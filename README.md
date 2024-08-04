# UBB Cyber Security Academy

Bienvenido a la UBB Cyber Security Academy, una plataforma de aprendizaje dedicada a proporcionar habilidades avanzadas en ciberseguridad.

## Descripción

UBB Cyber Security Academy es una aplicación web desarrollada con Ruby on Rails. Nuestro objetivo es ofrecer cursos de alta calidad en el campo de la ciberseguridad, facilitando el aprendizaje y la capacitación de profesionales en este sector crítico.

## Características

- **Cursos especializados:** Amplia variedad de cursos en diferentes áreas de la ciberseguridad.
- **Testimonios de éxito:** Historias de éxito de nuestros estudiantes que han mejorado sus habilidades.
- **Interfaz intuitiva:** Diseño limpio y moderno utilizando Bulma CSS y Font Awesome.
- **Autenticación segura:** Implementación de bcrypt para la gestión segura de usuarios.
- **Soporte comunitario:** Conéctate con otros estudiantes y expertos en ciberseguridad.

## Instalación

Para configurar y ejecutar este proyecto localmente, sigue estos pasos:

1. Clona este repositorio:

   ```sh
   git clone https://github.com/tuusuario/ubb-cyber-security-academy.git
   cd ubb-cyber-security-academy
   ```

2. Instala las dependencias:

   ```sh
   bundle install
   ```

3. Configura las variables de entorno:

   Crea un archivo `.env` en la raíz del proyecto y agrega las siguientes variables:

   ```env
   SUPABASE_URL=postgresql://usuario:contraseña@host:puerto/basedatos
   SUPABASE_KEY=tu_supabase_key
   GOOGLE_CLIENT_ID=tu_google_client_id
   GOOGLE_CLIENT_SECRET=tu_google_client_secret
   ```

4. Configura la base de datos:

   ```sh
   rails db:create
   rails db:migrate
   ```

5. Inicia el servidor:

   ```sh
   rails server
   ```

6. Abre tu navegador y navega a `http://localhost:3000`.

## Uso

Una vez que la aplicación esté en funcionamiento, puedes:

- Registrarte como un nuevo usuario.
- Iniciar sesión con tus credenciales.
- Explorar y matricularte en diversos cursos de ciberseguridad.
- Leer testimonios de otros estudiantes.

## Contribución

Si deseas contribuir a este proyecto, por favor sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-caracteristica`).
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir nueva característica'`).
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`).
5. Abre un Pull Request.

## Créditos

- **Diseño:** Utilizamos Bulma CSS y Font Awesome para un diseño moderno y responsivo.
- **Desarrollo:** Este proyecto fue desarrollado por el equipo de UBB Cyber Security Academy.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más información.
