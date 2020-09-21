#!/usr/bin/env bash
# File: guessinggame.sh

function nfiles {
	# Count the total number of lines, except for the line starts with total
	num=$(ls -al $1 | grep -v "^total" | wc -l)
	# Substrat the lines for . and ..
	let num=$num-2
	echo $num
}

guess=-1
n_files=$(nfiles .)
# Set the maximum number of trials to 10
n_trials=10
# Regex for integer numbers
re='^[0-9]+$'
while [[ n_trials -gt 0 && $guess != $n_files ]]
do
	echo "Guess the number of files in the current directory. You have $n_trials chances:"
	read guess
	if [[ $guess =~ $re ]]
	then
		if [[ $guess -gt $n_files ]]
		then
			echo "Your guess was too high."
		elif [[ $guess -lt $n_files ]]
		then
			echo "Your guess was too low."
		else
			echo "Congratulations, your guess was correct!"
		fi
	else
		echo "Your input was not valid."
	fi
	let n_trials=$n_trials-1
done

if [[ n_trials -eq 0 ]]
then
	echo "Sorry, you failed after 10 guesses. Try next time."
fi
