#!/usr/bin/env bash

if [ -z "$1" ]; then
  theme=$(ls src/main/resources | grep xml | sed 's/.xml//g' | fzf)
else
  theme="$1"
fi

if [ -z "$2" ]; then
  echo 'Which color do you want to be replaced? '
  read replace_from
else
  replace_from="$2"
fi

if [ -z "$3" ]; then
  echo 'What is the new color? '
  read replace_to
else
  replace_to="$3"
fi

sed --in-place='' "s/$replace_from/$replace_to/gI" "src/main/resources/$theme.xml"
sed --in-place='' "s/$replace_from/$replace_to/gI" "src/main/resources/$theme.theme.json"
