#!/bin/sh
while [ 1 ]
do
 ADDRESS=localhost
 if [ $# -gt 0 ]
 then
  ADDRESS=$1
 fi
 
 URL="http://$ADDRESS"
 HOST=$(echo $ADDRESS | awk -F ':' '{print $1}')

 echo "===================================================="
 echo " ping $HOST ..."
 ping -c 1 -q $HOST

 echo "===================================================="
 echo " wget $URL ..."
 wget -q $URL
 if [ $? -eq 0 ]
 then
  cat index.html && rm index.html
 fi
 sleep 5
done
