#!/bin/bash
source /opt/CPshrd-R77/tmp/.CPprofile.sh
#####Generating number between 0-1
range=2
number=$(($RANDOM % $range))
echo $number

if ($number==0)
then
fw tab -t dynobj_cache -x -y
dynamic_objects -o DYN_ISP_0 -r 0.0.0.0 255.255.255.255 -a
dynamic_objects -o DYN_ISP_1 -r 0.0.0.0 255.255.255.255 -d
dynamic_objects -o DYN_ISP_1 -r 0.0.0.0 0.0.0.0 -a 
elif ($number==1)
then
fw tab -t dynobj_cache -x -y
dynamic_objects -o DYN_ISP_1 -r 0.0.0.0 255.255.255.255 -a
dynamic_objects -o DYN_ISP_0 -r 0.0.0.0 255.255.255.255 -d
dynamic_objects -o DYN_ISP_0 -r 0.0.0.0 0.0.0.0 -a
fi
####END

