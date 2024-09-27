#!/bin/bash
filename='collatiō.txt'
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
    # echo "${BASH_REMATCH[1]}" >> $buffer
    echo "$plain ${BASH_REMATCH[2]}" >> $buffer
  fi
  # echo "$p"
done < "$filename"

mv "$buffer" "$filename-simplex.txt"
