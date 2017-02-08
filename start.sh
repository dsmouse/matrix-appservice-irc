#!/bin/sh

if [ ! -z $IP_BASE ]
then
  for ADDRESS in $(sipcalc -6 "$IP_BASE/$IP_PREFIX" -S 128 | egrep -o '[0-9a-f:]{39}' | uniq)
  do
    echo ip a a $ADDRESS/128 dev $IP_IFACE
  done

fi



exec matrix-appservice-irc
