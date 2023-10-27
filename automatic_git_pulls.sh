#! /bin/bash

echo "pulling"
find . -name '.git'
echo "oof"
#go through all the directories in user's home
for i in $(find . -name '.git')
do
	echo $i
	#if[[i != *cache* ]]; 
	#then
		#echo i
		#cd 
		#git fetch
		#git pull
	#fi
done
