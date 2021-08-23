#!/bin/bash

set -e # Exit on any errors
if test -e $ISAACPATH/modpacks/$1.pack
then
(
  cd $ISAACPATH/mods/
  for dir in */; do
    (
      cd $dir; touch disable.it;
    )
  done
)
while read -r line
do
(
  cd $ISAACPATH/mods/
  cd "$line"
  if test -e disable.it
  then
    rm disable.it
  fi
)
done < $ISAACPATH/modpacks/$1.pack
cd $ISAACPATH
./isaac-ng.exe
fi
