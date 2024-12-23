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

#============================================#
# basic condition script
declare -i a=3
if [[ $a -gt 4 ]]; then
  echo "$a is greater than 4!"
elif (( $a>2 )); then
  echo "$a is greater than 2!"
else
  echo "$a is not greater than 4!"
fi
#============================================#
# Loop
echo "While Loop"
declare -i n=0
while ((n<10)); do
  echo "n:$n"
  ((n++))
done
#============================================#
echo -e "\nUntil Loop"
declare -i m=0
until ((m==10)); do
  echo "m:$m"
  ((m++))
done
#============================================#
# for loop
#!/usr/bin/env bash
for i in 1 2 3; do
    echo $i
done
#============================================#
#!/usr/bin/env bash
for i in 1 2 3; do echo $i; done
#!/usr/bin/env bash
for i in {1..100}; do
    echo $i
done
#============================================#
#!/usr/bin/env bash
for (( i=1; i<=100; i++ )); do
    echo $i
done
#============================================#
#!/usr/bin/env bash
declare -a fruits=("apple" "banana" "cherry")
for i in ${fruits[@]};do
    echo $i
done
#============================================#
#!/usr/bin/env bash
declare -A arr
arr["name"]="scott"
arr["id"]="1234"
for i in "${!arr[@]}"; do
    echo $i: "${arr[$i]}"
done
#============================================#
#!/usr/bin/env bash
for i in $(ls); do
    echo "Found a file: $i"
done
#============================================#
#!/usr/bin/env bash
for i in *; do
    echo "Found a file: $i"
done
#============================================#
# case
animal="dog echo"
case $animal in
  bird) echo "Avian";;
  "dog echo"|puppy) echo "Canine";;
  *) echo "Not match!";;
esac
#============================================#
