#!/bin/sh

if [ $# -eq 0 ]; then
 echo "Enter a name for the note"
 exit 1
fi

headdate=`date +"%d-%m-%y"`
shortname=$1
longname=$2
author=$(grep -m 1 AUTHOR Makefile | sed 's/^.*= //g')


if [ ! -d "notes" ]; then
    mkdir notes
fi

if [ -d "notes" ]; then
    echo "Adding new note : $shortname"
fi

filename=notes/$shortname.rmd

if [ -f "$filename" ]; then
    echo "A file called '$filename' already exists in diretory $year. Aborting addition of new entry."
    exit
fi

cp src/note.rmd $filename

sed -i "s/@date/$headdate/g" $filename
sed -i "s/@title/$shortname/g" $filename
sed -i "s/@author/$author/g" $filename
sed -i "s/@heading/$longname/g" $filename

echo "Added note $filename"
