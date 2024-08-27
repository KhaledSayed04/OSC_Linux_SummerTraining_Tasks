#!/bin/bash

text_files_list=$(ls $1 | grep -Eioh "([[:alnum:]_.-]+?\.txt)") 

for i in $text_files_list
do 
	if [[ -f $1/$i ]]
		then		
			mv "$1/$i" "$1/old_$i"
	fi
done


# ================================
exit
# ================================

# this was the former script 
# it faces a problem when the sent directory has sub-directories which contain ".txt" filess

text_files_list=$(find $1 -name "*.txt" -type f | grep -Eioh "([[:alnum:]_.-]+?\.txt)")

for i in $text_files_list
do 
	mv "$1/$i" "$1/old_$i"
done
