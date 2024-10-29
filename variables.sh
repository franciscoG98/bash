#!/bin/bash

if [ $1 == https://franciscog.vercel.app/es ]; then
	echo "ahhhh asi que queres sabes como esta tu web paxito...."
	response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")
	echo "$1 --> $response"
else
	echo "asi que andas chusmeando webs de otros picaron :*"
	response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")
	echo "$1 --> $response"
fi
