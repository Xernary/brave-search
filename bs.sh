#!/bin/bash

SEARCH="https://www.google.com/search?q="
string=""

count=0
for arg in "$@"
do
  count=$((count++))
  string+=$arg
  if [ $count -ne $# ]; then
    string+=" "
  fi
done

encoded=$(echo $string | urlencode)
SEARCH+=$encoded

brave $SEARCH > /dev/null
