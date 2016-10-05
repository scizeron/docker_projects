#!/bin/sh
redis-cli -h $1 -p $2 -a $3 info | grep keys | grep db0 | cut -d "," -f  1 | cut -d "=" -f 2
