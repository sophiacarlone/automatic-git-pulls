#! /bin/bash

echo "pulling repos"
#go through all the directories in user's home
for i in $(find . -name '.git')
do
	if [[ $i != *cache* ]] && [[ $i != *yay* ]]; then
		echo $i
	fi

done
