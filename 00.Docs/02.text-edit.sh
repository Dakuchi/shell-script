#!/usr/bin/env bash

# curly brace bracket
echo {a..z}             # return a to z
echo {A..Z} 
echo {1..10}            # return from 1 to 10
echo {1..30..3}         # reutrn 1 to 30 with scale 3
touch file{1..3}{a..b}.txt

# command substitute
echo "The python version is: $(python3 -c 'print("Hello from Python!")' | tr [a-z] [A-Z])"

# working with text value
a="Hello World!"
echo ${a/World/there}   # replace 'world' with 'there'
echo ${a:6}             # get value from 6th character 
echo ${a:6:3}           # get 3 characters from 6th character 
echo ${a/l/s}           # replace FIRST 'l' character with 's'
echo ${a//l/s}          # replace ALL 'l' characterS with 's'

# pipe output of a command to another command
cat lorem.txt | less

# redirect stdout and stderr to file
ls &> result.txt ; ls nonexist 2&> error.txt

# redirect multiple lines to command
cat << sometext        # 'Endoftext' could be any text
this is
in the 
same file
sometext

# ouput formatting
echo -e "Name\t\tNumber"; echo -e "Jayce\t\t123"                    # seperate with tab
echo -e "This text\nbreack over\nthree lines"                        # seperate with newline
