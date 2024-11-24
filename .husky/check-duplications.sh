#!/bin/bash
files="$(find . -name "*.txt" | grep -vE "collātiō\.txt|etc\.txt|collātiō-simplex\.txt")"
buffer=$RANDOM
bufferPlain=$RANDOM
dirRegEx="\./(\w*)/.*"
lineRegEx="^(.*) (- .*)$"

for filename in $files
do
  if [[ $filename =~ $dirRegEx ]]
  then
    dir="${BASH_REMATCH[1]}"

    while read line
    do
      if [[ $line =~ $lineRegEx ]]
      then
        plain="${BASH_REMATCH[1]//ā/a}"
        plain="${plain//ē/e}"
        plain="${plain//ī/i}"
        plain="${plain//ō/o}"
        plain="${plain//ū/u}"
        echo "${BASH_REMATCH[1]}" >> $buffer
        echo "$plain" >> $bufferPlain
      fi
    done < "$filename"
  fi
done

sort $buffer > "$buffer.tmp"
sort $bufferPlain > "$bufferPlain.tmp"
uniq -d "$buffer.tmp" > duplications.tmp
uniq -d "$bufferPlain.tmp" > duplications-plain.tmp
rm  $buffer $bufferPlain "$buffer.tmp" "$bufferPlain.tmp"
