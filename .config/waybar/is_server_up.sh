#!/bin/bash

ping -c 1 marcrobison.com &> /dev/null

if [ $? -eq 0 ]
then
	echo "up"
else
	echo "down"
fi
