#!/usr/bin/env bash
set -euxo pipefail

for i in "$@"; do  						# Use double quotes "" to make sure the value preserved
	echo $i
done

echo "There were $# arguments"			# Use $# to return the arguments total

#=============================================#
#!/usr/bin/env bash

while getopts :u:p:ab option; do 						# use ":" at the begin of options to store the non defined option to $OPTARG				
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "got the 'a' flag";;
		b) echo "got the 'b' flag";;
		?) echo "I don't know what $OPTARG is!"
	esac
done

echo "user: $user / pass: $pass"

#=====================================================#
#!/usr/bin/env bash

echo "what is your name?"
read name

echo "What is your pass?"
read -s pass	# not show user input on the screen

read -p "What is your favorite animal? " animal  	# user input in the same line with text

echo name: $name, pass: $pass, animal: $animal

#=====================================================#
#!/usr/bin/env bash

select animal in "bird" "dog" "fish" "quit"; do
	case $animal in
		bird) echo "The bird is fly";;
		dog) echo "The dog is bark";;
		fish) echo "The fish is swim";;
		quit) break;;
		*) echo "I don't know what this is!"
	esac
done

#=====================================================#
#!/usr/bin/env bash

read -ep "Favorite color? " -i "Blue" favcolor   	# option -i to store the value "Blue" by default
echo $favcolor

#=====================================================#
#!/usr/bin/env bash
if (($#<3)); then  								# make sure user execute script with 3 arguments  								
	echo "This command requires three arguments:"
	echo "username, userid and favorite number"
else
	echo "username: $1"
	echo "userid: $2"
	echo "favorite number: $3"
fi

#=====================================================#
#!/usr/bin/env bash

read -p "Favorite animal? " fav
while [[ -z $fav ]]; do   					# loop for user input
	read -p "Please answer: " fav
done
echo "Favorite animal was selected: $fav"

#=====================================================#
#!/usr/bin/env bash

read -p "Favorite animal? [cat] " fav  		# default value for user input
if [[ -z $fav ]]; then
	fav="cat"
fi
echo "Favorite $fav was selected"

#=====================================================#
#!/usr/bin/env bash

read -p "What year? [nnnn] " year			# use regular expression to input valid year
until [[ $year =~ [0-9]{4} ]]; do
	read -p "A four digit eyar, pelase! [nnnn] " year
done
echo "Selected year: $year"