#!/bin/sh

buffer=$$RANDOM
touch "$buffer"
lineRegEx="^(.+?) (- .*)$" # BASH HAS NO LAZY MATCHING!!!
# lineRegEx="^([^-]*) (- .*)$"

while read p
do
  if [[ $p =~ $lineRegEx ]]
  then
    plain="${BASH_REMATCH[1]//ā/a}"
    plain="${plain//ē/e}"
    plain="${plain//ī/i}"
    plain="${plain//ō/o}"
    plain="${plain//ū/u}"
    plain="${plain//ȳ/y}"
    # echo "${BASH_REMATCH[1]}" >> $buffer
    echo "$plain ${BASH_REMATCH[2]}" >> $buffer
  fi
  # echo "$p"
done < collātiō.txt

mv "$buffer" "collātiō-simplex.txt"
