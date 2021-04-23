#!/bin/bash

# get file name with path
FILEPATH=/home/ubuntu/Documents/documents/bash_script_dockerApp/lorem_ipsum.txt

# seperate file name from path
FILENAME=`basename "$FILEPATH"`

# directory
DIRNAME=`dirname "$FILEPATH"`

# get size of file using two different ways
#FILESIZE2=$(stat -c%s "$FILEPATH")
FILESIZE=$(wc -m < "$FILEPATH")

# count lines of file
LINES=$(wc -l < "$FILENAME")

# count words of file
WORDS=$(wc -w < "$FILENAME")

# read file from path
GETCHARS=$(cat "$FILEPATH")

# count all characters into the file
CHARCOUNTER=${#GETCHARS}

# count all files in same directory with file
COUNTFILES=$(ls | wc -l)

# call other script file
READFILE=/home/ubuntu/Documents/documents/bash_script_dockerApp/readfile.sh
CALLSCRIPT=$(bash "$READFILE")

echo "File name: $FILENAME"
echo "Directory: $DIRNAME"
echo "Size of $FILENAME: $FILESIZE bytes."
echo "Character Size: $CHARCOUNTER."
echo "Lines: $LINES."
echo "Words: $WORDS."
echo "All Files in the same directory: $COUNTFILES"
echo $CALLSCRIPT
