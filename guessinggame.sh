#!/usr/bin/env bash
# File: guessinggame.sh
function check_input { 
re='^[0-9]+$'  # pattern to identify integers
tmp=$1
while ! [[ $tmp =~ $re ]]  # loop to check if input is integer
  do 
    echo "Enter an INTEGER!"
    read tmp 
    #read $1 
  done
  num_files=$tmp
}

echo 'Hi '$(whoami)'!'
echo 'Guess how many files are there in the current directory:' $(pwd)
echo 'IMPORTANT: We count all but dot files; directories are counted!'
echo 'To go back to the terminal press ctrl+d'
echo '------------------------------------------------------------------|'
true_num_files=$(ls -1 | wc -l)  # this one counts all but dot files in the directory (dirs are also files)
i=0  # num of iterations
#re='^[0-9]+$'  # regex to identify integers
num_files=$((true_num_files + 999))  # initialize with a wrong value so we enter the while loop
echo 'Enter a positive integer: '
while [ "$num_files" -ne "$true_num_files" ] # main loop 
do 
read num_files
check_input $num_files
if [ "$num_files" -lt "$true_num_files" ]
  then 
    echo 'Aim higher! Try a BIGGER number!'
elif [ "$num_files" -gt "$true_num_files" ]
  then
    echo 'Too much! Try a SMALLER number!'
fi
i=$((i + 1))
done
if [ $i -eq 1 ] 
  then
    echo 'That was fast! Congrats, you entered the right number!'
else
  echo "Congrats! You've nailed it with $i attempts!"
fi
