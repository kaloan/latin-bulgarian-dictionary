#!/bin/bash
files="$(find . -name "*.txt" | grep -vE "collatiō\.txt|etc\.txt|collatiō-simplex\.txt")"
buffer=$RANDOM
bufferPlain=$RANDOM
touch "$buffer"
dirRegEx="\./(\w*)/.*"
lineRegEx="^(.*) (- .*)$"
for filename in $files
do
  if [[ $filename =~ $dirRegEx ]]
  then
    dir="${BASH_REMATCH[1]}"
    case $dir in
      "nōmina")
        partOfSpeech="съществително" ;;
      "prōnōmina")
        partOfSpeech="местоимение" ;;
      "adiectiva")
        partOfSpeech="прилагателно" ;;
      "verba")
        partOfSpeech="глагол" ;;
      "adverbia")
        partOfSpeech="наречие" ;;
      "praepositiōnēs")
        partOfSpeech="предлог" ;;
      "interiectiōnēs")
        partOfSpeech="вметнат израз" ;;
      "coniūctiōnēs")
        partOfSpeech="съюз" ;;
      *)
        echo "Unkown directory name $dir" ;;
    esac

    while read line
    do
      if [[ $line =~ $lineRegEx ]]
      then
        plain="${BASH_REMATCH[1]//ā/a}"
        plain="${plain//ē/e}"
        plain="${plain//ī/i}"
        plain="${plain//ō/o}"
        plain="${plain//ū/u}"
        echo "${BASH_REMATCH[1]} ($partOfSpeech) ${BASH_REMATCH[2]}" >> $buffer
        # echo $line >> $buffer
        echo "$plain ($partOfSpeech) ${BASH_REMATCH[2]}" >> $bufferPlain
      fi
    done < "$filename"
  fi
done

sort $buffer > "$buffer.tmp"
sort $bufferPlain > "$bufferPlain.tmp"
mv "$buffer.tmp" collatiō2.txt
mv "$bufferPlain.tmp" collatiō2Plain.txt
rm  $buffer $bufferPlain
