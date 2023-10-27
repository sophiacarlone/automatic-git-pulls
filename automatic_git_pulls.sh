#! /bin/bash

echo "pulling repos"
#could go through all the directories in user's home
for i in $(find . -name '.git')
do
	if [[ $i != *cache* ]] && [[ $i != *yay* ]]; then
		#echo $i
		name=${i::-5}
		echo $name
		cd $name
		git fetch
		git pull
		cd -
	fi
done
