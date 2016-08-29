#!/bin/bash

for i in DB[\ -]*.zip
do
    unzip -d `echo "$i" | sed -e 's/^DB[ -]\+\(.*\)\.zip$/\1/' -e 's/[[:punct:][:space:]]//g'` "$i" \
        && rm "$i"
done
