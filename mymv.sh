#!/bin/bash
first=$1
second=$2
i=1

while [ -f "$second.$i" ]
do
	((i++))
done

if [ -f "$second" ]
then
	mv $first $second.$i
else
	mv $first $second
fi
