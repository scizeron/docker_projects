#!/bin/sh
if [ $# -lt 3 ]
then
 echo "missing parameters"
 exit 1
fi

while [ 1 ]
do
 redis-cli -h $1 -p $2 -a $3 info | grep keys | grep db0 | cut -d "," -f  1 | cut -d "=" -f 2
 sleep 5
done

exit 0
