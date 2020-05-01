all: readme.md

readme.md:guessinggame.sh 
	echo "## Guessing Game">>readme.md
	echo "Make executed at">>readme.md 
	date >> readme.md
	echo >> readme.md
	echo >> readme.md
	echo "Number of line of code in guessinggame.sh" >> readme.md
	cat guessinggame.sh|wc -l >> readme.md
clean:
	rm readme.md
