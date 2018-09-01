#!/bin/bash
# Akrem perf Script: <akrem.hadji@supcom.tn>

if [ $# -gt 0 ]; then
#echo $#

counter=0
#initialisation

while :; do
############## 
if [ $# -eq 1 ]
then
##############

c=$(top -b -n1 | awk "/$1/"'{ print $9 } ' | grep '[0-9]\+');
t=1
##############
else
c=$(top -b -n1 | awk "/$1/"'{ print $9 } ' | grep '[0-9]\+');
t=$2
fi
echo "$c"

printf "$counter $c \n" >> monReport.txt

sleep $t

let counter=counter+$t
done


 
else

while :; do 
  #top -b -n1 | grep init > top-output.txt
  sleep 1
done
fi

