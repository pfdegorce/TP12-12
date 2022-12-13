#!/bin/bas

#df -i / nous donne des informations sur le filesystem 
#tail -n 1 renvoie la dernière ligne
#cut -d ' ' -f nous permet de récupérer les caractères que 
inodes_libres=$(df -i / | tail -n 1 | cut -d ' ' -f 11)
pourcentage_occupe=$(df -i / | tail -n 1 | cut -d ' ' -f 14 | sed 's/%//')

echo "Le nombre d'inodes libres est :"
echo $inodes_libres
echo "Le pourcentage d'inode occupe est :"
echo $pourcentage_occupe

if [ $pourcentage_occupe -gt 20 ]
then
	echo "Il reste moins de 80% d'inodes disponibles"
	mkdir -p /var/log/exercice/archives
	nom_fichier=$(cat /dev/random |head -c 5)
	tar -czvf /var/log/exercice/archives/$nom_fichier  /var/log/exercice/recent_logs
	echo "HODOOOOOOOR!!!!"
else
	echo "Hodor survit"
fi

