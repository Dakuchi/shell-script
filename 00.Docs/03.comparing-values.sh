#!/usr/bin/env bash

# comparing values with 'test' []
help test | less                # see all the test options

[ -d ~ ]; echo $?               # exit code 0 folder exist
[ -d nonexit ]; echo $?         # exit code 1 folder not exist

[ "cat" = "dog" ]; echo $?      # comparing 2 strings
[ "cat" = "cat" ]; echo $?      # comparing 2 strings

[ 4 -lt 5 ]; echo $?            # comparing 2 numbers
[ 4 -lt 3 ]; echo $?            # comparing 2 numbers
[ ! 4 -lt 3 ]; echo $?          # comparing 2 numbers

# extended test "[[]]" support more Ex: multiple tests"
[[ 4 -lt 3 ]]; echo $?
[[ -d ~ && -a /bin/bash ]]; echo $?             # multiple tests with AND &&
[[ -d ~ && -a /bin/mash ]]; echo $?

[[ -d ~ || -a /bin/bash ]]; echo $?             # multiple tests with OR ||
[[ -d ~ || -a /bin/mash ]]; echo $?

[[ -d ~ ]] && echo ~ is dictionary              # && return exit code 0 if both cmd work
[[ -d nothing ]] && echo ~ is dictionary

true && echo 'success!'                         # true and false same with &&
false && echo 'success!'

# regular expresion
[[ "cat" =~ c.* ]]; echo $?                     # compare starting with letter 'c'
[[ "bat" =~ c.* ]]; echo $?