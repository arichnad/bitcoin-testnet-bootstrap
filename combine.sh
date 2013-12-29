#!/bin/bash

for i in testnet*/blocks/*.dat??; do
	file=$(echo "$i" |sed 's/..$//')
	rm -f $file
done

for i in testnet*/blocks/*.dat??; do
	file=$(echo "$i" |sed 's/..$//')
	cat $i >>$file
	rm $i
done

