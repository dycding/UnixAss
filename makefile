README.md: guessinggame.sh
	touch README.md
	echo "Title: Guess the number of files in the current directory" > README.md
	echo "Date: " >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
