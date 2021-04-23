#!/bin/bash

filepath="/home/ubuntu/Documents/documents/bash_script_dockerApp/lorem_ipsum.txt"

while FSTREAM= read -r line
do
	printf '%s\n' "$line"
	echo "$line" >> targetfile.txt

done < "$filepath"

# seperate file name from path
FILENAME=`basename "$filepath"`

# directory
DIRNAME=`dirname "$filepath"`

# get size of file using two different ways
#FILESIZE2=$(stat -c%s "$FILEPATH")
FILESIZE=$(wc -m < "$filepath")

# count lines of file
LINES=$(wc -l < "$FILENAME")

# count words of file
WORDS=$(wc -w < "$FILENAME")

# read file from path
GETCHARS=$(cat "$filepath")

# count all characters into the file
CHARCOUNTER=${#GETCHARS}

# count all files in same directory with file
COUNTFILES=$(ls | wc -l)

echo "File Name: $FILENAME" >> targetfile.txt
echo "Directory: $DIRNAME" >> targetfile.txt
echo "Size of $FILENAME: $FILESIZE bytes." >> targetfile.txt
echo "Character Size: $CHARCOUNTER." >> targetfile.txt
echo "Lines: $LINES." >> targetfile.txt
echo "Words: $WORDS." >> targetfile.txt
echo "All Files in the same directory: $COUNTFILES" >> targetfile.txt

