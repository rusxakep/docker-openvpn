#!/bin/bash

path=/etc/openvpn/ccd

users=`ls -F $path | sed 's/\///g'` # array of certificate name

echo "{"
echo "\"data\":["

comma=""
for user in $users
do
    echo "    $comma{\"{#VPNUSER}\":\"$user\"}"
    comma=","
done

echo "]"
echo "}"

