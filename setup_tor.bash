#!/bin/sh

NAME=$(`oc-metadata | grep HOSTNAME | cut -d= -f2`)
IP=$(`oc-metadata | grep PUBLIC_IP_ADDRESS | cut -d= -f2`)
PATH_TO_TEMPLATE="/tmp/torrc.template"
WITH_IP="/tmp/torrc.with_ip"
TORRC_PATH="/etc/tor/torrc"

sed 's/{IP_ADDR}/$IP/g' "$PATH_TO_TEMPLATE" > "$WITH_IP"
sed 's/{NAME}/$NAME/g'  "$WITH_IP" > "$TORRC_PATH"