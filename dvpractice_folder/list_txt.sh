#!/bin/bash 

echo "listing all .txt files in the current directory:"
ls *.txt 2>/dev/null

if [ $? -ne 0 ];then
	echo "no.txt files found in the directory"
fi

