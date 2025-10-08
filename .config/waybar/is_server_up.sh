#!/bin/bash

ping -c 1 marcrobison.com &> /dev/null

if [ $? -eq 0 ]
then
	status="up"
	class="server-ping-ok"
else
	status="down"
	class="server-ping-not-ok"
fi

jq -n -c --arg text "$status" --argjson class "[\"$class\"]" \
  '{text: $text, class: $class}'
