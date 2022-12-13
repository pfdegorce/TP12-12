#!/bin/bas

inodes_libres=$(df -i / | tail -n 1 | cut -d ' ' -f 11)
pourcentage_occupe=$(df -i / | tail -n 1 | cut -d ' ' -f 14)

echo $inodes_libres
echo $pourcentage_occupe

