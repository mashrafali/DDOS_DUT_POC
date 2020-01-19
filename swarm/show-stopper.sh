#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
cd /usr/bin/
#-------------------

pkill hping3
pkill hping3
pkill hping3
pkill hping3

pkill slowloris.pl
pkill slowloris.pl
pkill slowloris.pl
pkill slowloris.pl

pkill slowhttptest
pkill slowhttptest
pkill slowhttptest
pkill slowhttptest

ps aux | grep -i hping3 > removing-pid.temp
sed '/grep -i hping3/d' removing-pid.temp > removing-pid
sleep 0.5
while read line
do
PID=$(echo $line | awk '{print $2}')
echo KILLING HPING @PID=$PID
kill -9 $PID
done < removing-pid
