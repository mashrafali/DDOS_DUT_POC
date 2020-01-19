test1=$(ps aux | grep -i "[h]ping3")
test2=$(ps aux | grep -i "[s]lowloris.pl")
test3=$(ps aux | grep -i "[s]lowhttptest")


if [ -z "$test1" ] && [ -z "$test2" ] && [ -z "$test3" ]
then
echo "## No Current Attacks are running ##"
else
echo
echo "## The following Attacks are running:"
echo
ps aux | grep -i "[h]ping3"
ps aux | grep -i "[s]lowloris.pl"
ps aux | grep -i "[s]lowhttptest"
echo
fi
