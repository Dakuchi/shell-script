#!/usr/bin/env bash

guess() {
	local -i mynumber=$(( 1 + RANDOM % 10 ))
	read -rp "Please guess a number between 1 and 10! " theguess
	if (( theguess == mynumber )); then
		echo "You got it! Great job!"; echo
	else
		echo "Nope. The number I'm thinking is $mynumber. Try again!"; echo
	fi
	sleep 1
	choosegame
}

flip() {
	local -i mynumber=$(( 1 + RANDOM % 2 ))
	if (( $mynumber == 1 )); then
		local face="HEAD"
	else
		local face="TAILS"
	fi
	printf "I flipped the coin and it was: %s\n\n" $face
	sleep 1
	choosegame
}

dice() {
	local -i mynumber=$(( 1 + RANDOM % 6 ))
	local -i mynumber2=$(( 1 + RANDOM % 6 ))
	printf "I flipped tw0 dice and the results are: %s and %s.\n\n" $mynumber $mynumber2
	sleep 1
	choosegame
}

# the game chooser
choosegame() {
	select game in "Guessing Game" "Flip a coin" "Dice Roll" "Exit"; do
	case $game in
		"Guessing Game") guess;;
		"Flip a coin") flip;;
		"Dice Roll") dice;;
		"Exit") break;;
		*) echo "Please choose from the menu.";;
	esac
done
}

choosegame