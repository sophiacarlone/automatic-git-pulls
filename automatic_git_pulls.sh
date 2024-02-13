#! /bin/bash

echo "pulling repos"
#could go through all the directories in user's home
for i in $(find . -name '.git')
do
	if [ $i != *cache* ] && [ $i != *yay* ]; then
		name=${i::-5}
		echo $name
		cd $name
		OUTPUT=$(git status)
		git fetch
		#this works for some reason
		if [ "$OUTPUT" == *"Your branch is behind"* ]; then
			git pull	
		# elif [ "$OUTPUT" == *"up to date with"* ] && [ "$OUTPUT" == *"Changes not staged for commit"* ]; then
		# 	echo "Possible commits"
		fi
		cd -
		echo " "
	fi
done
