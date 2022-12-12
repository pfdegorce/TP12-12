#!/bin/bash

#Création du dossier dans lequel on va mettre les n fichiers
sudo mkdir -p /var/log/exercice/recent_logs

#Base centrale de la boucle for

for i in {1. .$1}
do
echo $(cat /dev/random |head -c 10) >> /var/log/exercice/recent_logs/$RANDOM
done

