function get_files_count {
	local files_count=0
	#files_count=`ls -l|grep ^[-]|wc -l`(DOUBT!!! should we consider only files or both files as well as directories ,assuming  directories to be files and proceeding)
	files_count=`ls|wc -l`
	return $files_count
}

get_files_count
file_count=$?
read guess
try=1
while [ $guess -ne $file_count ]
do
	if [[ $file_count -gt $guess ]]
	then
		echo "Too small guess,please guess a larger number"
		read guess
	elif [[ $file_count -lt $guess ]]
	then
        	echo "Too large guess,please guess a smaller number"
		read guess
        fi
	let "try+=1"   
done
if [[ $try -eq 1 ]]
then
	echo "Congrats you have guessed correctly in first try,amazing!! "
else
	echo "Congrats you have guessed correctly in $try tries"
fi
