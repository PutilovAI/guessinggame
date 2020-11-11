create_readme:
	echo '#Project guessinggame' > README.md
	echo '' >> README.md
	date >> README.md
	echo '' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
