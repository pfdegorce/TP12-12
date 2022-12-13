#!/bin/bas

inodes_libres=$(df -i / | tail -n 1 | cut -d ' ' -f 11)
pourcentage_occupe=$(df -i / | tail -n 1 | cut -d ' ' -f 14 | sed 's/%//')

echo "Le nombre d'inodes libres est :"
echo $inodes_libres
echo "Le pourcentage d'inode occupe est :"
echo $pourcentage_occupe

if [ $pourcentage_occupe -gt 20 ]
then
	echo "Il reste moins de 80% d'inodes disponibles"
else
	echo "Hodor survit"
fi

