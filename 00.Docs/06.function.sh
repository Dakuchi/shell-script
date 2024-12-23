#!/usr/bin/env bash
greet() {
    echo "Hi there, $1. What a nice $2"
}

echo "And now, a greeting..."
greet Scott Morning
greet Everybody Evening

#============================================#

#!/usr/bin/env bash
numberthings(){
  i=1
  for f in "$@"; do         # $@ refer to every arguments passed into function
    echo "$i: $f"
    ((i++))
  done
  echo "This counting was brought by function $FUNCNAME!"   # $FUNCNAME is special variable refer to function name
}

numberthings /*
echo
numberthings pine apple banana

#============================================#

#!/usr/bin/env bash
var1="I'm variable 1"
myfunction() {
    var2="I'm variable 2"
    local var3="I'm variable 3"
}
myfunction
echo $var1
echo $var2
echo $var3

#============================================#