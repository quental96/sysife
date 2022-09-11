#!/bin/bash
INIT=$(date +%s)
read DIFF < "$(dirname $0)/temps.txt"
ACTUAL=$(date +%s)
while [ $ACTUAL -lt $((INIT+DIFF)) ]
do
	ACTUAL=$(date +%s)
	sudo sh $(dirname $0)/takeSingle.sh
	sudo python $(dirname $0)/MPL3115A2/MPL3115A2_B.py
done