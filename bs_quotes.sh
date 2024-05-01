#!/bin/bash

SEARCH="https://www.google.com/search?q="

encoded=$(echo $1 | urlencode)
SEARCH+=$encoded

brave $SEARCH > /dev/null
