#!/bin/bash

text_files_list=$(find $1 -name "*.txt" -type f | grep -Eioh "([[:alnum:]_.-]+?\.txt)")

for i in $text_files_list
do 
	mv "$1/$i" "$1/old_$i"
done
