all: README.md

readme.txt: guessinggame.sh
	touch readme.txt

	echo "# Title" > readme.txt

	echo "### This is the Guessing Game" >> readme.txt

	echo "### Date and time make was run" >> readme.txt

	date -u >> readme.txt

	echo "### Number of lines of code on guessinggame.sh" >> readme.txt

	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt

	echo "Here is the link to [GitHubPage](ikaikamute1.github.io/my-unixworkbenchproject-repo)" >> readme.txt

README.md: readme.txt
	cp readme.txt README.md
	rm readme.txt
clean:
	rm README.md
