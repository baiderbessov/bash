#!/bin/bash

is_alive_ping()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo Host with IP: $i is IP.
}

for i in 192.168.1.{1..255} 
do
is_alive_ping $i & disown
done