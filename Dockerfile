# Etapa 1: Construcción y desarrollo de la aplicación Angular
FROM node:14 as development-stage

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json y el package-lock.json al contenedor
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

RUN npm install -g @angular/cli@10

# Copiar el resto de los archivos de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que se servirá la aplicación
EXPOSE 4200

# Comando por defecto para correr la aplicación Angular
CMD ["ng", "serve", "--host", "0.0.0.0"]
