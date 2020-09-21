README.md: guessinggame.sh
	touch README.md
	echo "\nTitle: Guess the number of files in the current directory" > README.md
	echo "\nDate: " >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
