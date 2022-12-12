#!/bin/bash

#Création du dossier dans lequel on va mettre les n fichiers
sudo mkdir -p /var/log/exercice/recent_logs

#Création des fichiers

for ((i=1; i<=$1; i++))
do
	#On récupère le chemin des fichiers tampons créés
chemin=$(mktemp /var/log/exercice/recent_logs/XXXX.txt)
	#On ajoute 10 caractères aléatoires dans ces fichiers
echo $(cat /dev/random |head -c 10) >> $chemin
done

