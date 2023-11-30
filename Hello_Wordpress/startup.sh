#!/bin/bash

# Mise à jour des paquets
apt-get update

# Installation de Docker
apt-get install -y docker.io

# Démarrage du service Docker
systemctl start docker

# Activation du service Docker au démarrage
systemctl enable docker

# Téléchargement de l'image WordPress
docker pull wordpress

# Création d'un réseau Docker pour la communication entre les conteneurs
docker network create wordpress_network

# Démarrage du conteneur MySQL
docker run --name wordpress-db -e MYSQL_ROOT_PASSWORD=Meurtheetmoselle -e MYSQL_DATABASE=wordpress -d mysql:5.7

# Démarrage du conteneur WordPress en le reliant à la base de données MySQL
docker run --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=Meurtheetmoselle -e WORDPRESS_DB_NAME=wordpress -p 80:80 -d wordpress
