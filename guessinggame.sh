#! usr/bin/env bash
#File:  guessinggame.sh

echo "Hi there.  Can you guess the number of files in the current working directory?  Please enter your guess (numbers only): " 
read guess
source number_of_files.sh
numfiles=$(number_of_files$@)


while [[ $guess -ne $numfiles ]]
do
        if [[ $guess =~ [^0123456789] ]] 
        then
                while [[ $guess =~ [^0123456789] ]]
                do
                echo "Numbers only please. Please enter a new guess ."
                read guess_wasnt_digit
                guess=$guess_wasnt_digit
                done

        elif [[ $guess -lt $numfiles ]]
        then
                echo " Your guess is too low. Please guess a new number."
                read newguess
                guess=$newguess

        elif [[ $guess -gt $numfiles ]]
        then
                echo " Your guess is too high.  Please guess a new number."
                read newguess
                guess=$newguess
        fi
done

echo "Wow! You're a good guesser.  Great job! " $guess " was the correct number."
echo "Thank you for playing.  Good bye."

