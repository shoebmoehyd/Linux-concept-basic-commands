#!/bin/bash

read -p "enter your file name:"  filename

if [ -e "$filename" ];then
	echo "File '$filename' exist in the current directory."
else
	echo "File '$filename' does not exist in the current directory"
fi

exit

