# Définit l'image de base
FROM node:14

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers de l'application dans le conteneur
COPY package*.json ./
COPY . . 

# Installe les dépendances de l'application
RUN npm install

# Expose le port sur lequel l'application va écouter
EXPOSE 3005

# Démarre l'application
CMD [ "npm", "start" ]

