#!/bin/bash
buffer=$$RANDOM
touch "$buffer"
regEx="^(.*) (- .*)$"
while read p
do
  if [[ $p =~ $regEx ]]
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
