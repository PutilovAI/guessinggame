date_now = $$(date)
count_lines = $$(wc -l guessinggame.sh | egrep -o "[0-9]+")

create_readme:
	echo '# Project guessinggame' > README.md
	echo '' >> README.md
	echo "Date: *$(date_now)*" >> README.md
	echo '' >> README.md
	echo "Count of lines of guessinggame.sh: *$(count_lines)*" >> README.md
