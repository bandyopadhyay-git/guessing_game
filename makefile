README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "Makefile was run at:" >> README.md
	date +"Date %D | Time %H:%M  " >> README.md
	echo "The script guessinggame.sh contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md
