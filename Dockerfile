# FROM node:lts-alpine
# ENV NODE_ENV=production
# WORKDIR /usr/src/app
# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../
# COPY . .
# EXPOSE 3000
# RUN chown -R node /usr/src/app
# USER node
# CMD ["npm", "start"]


# # Utilizar una imagen de Node.js oficial como base
# FROM node:14-alpine

# # Crear un directorio para la aplicación
# WORKDIR /usr/src/app

# # Copiar el archivo package.json y package-lock.json al directorio de la aplicación
# COPY package*.json ./

# # Instalar las dependencias de la aplicación
# RUN npm install

# # Copiar el resto del código de la aplicación
# COPY . .

# # Exponer el puerto en el que se ejecutará la aplicación
# EXPOSE 3000

# # Comando para ejecutar la aplicación
# CMD [ "node", "app.js" ]

# Utilizar una imagen de Node.js oficial como base
FROM node:14-alpine

# Definir variables de entorno
ENV MY_NAME=Juan
ENV MY_AGE=27
ENV BACK_URL=https://es.wikipedia.org/wiki/Wikipedia:Portada

# Crear un directorio para la aplicación
WORKDIR /usr/src/app


# Copiar el archivo package.json y package-lock.json al directorio de la aplicación
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .


# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 80



# Comando para ejecutar la aplicación
CMD [ "npm", "start" ]
