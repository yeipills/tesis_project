# Usa una imagen base oficial de Ruby
FROM ruby:3.3.4

# Instala dependencias de sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Configura el directorio de trabajo
WORKDIR /app

# Copia el archivo Gemfile y Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Instala las gemas
RUN bundle install

# Copia el resto de la aplicación
COPY . ./

# Expone el puerto que Puma utilizará
EXPOSE 3000

# Comando por defecto
CMD ["rails", "server", "-b", "0.0.0.0"]
