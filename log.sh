#!/bin/bash

#Création du dossier dans lequel on va mettre les n fichiers
mkdir - p /var/log/exercice/recent_logs

#Base centrale de la boucle for
echo $(cat /dev/random |head -c 10) >> /var/log/exercice/recent_logs/fichier_n

