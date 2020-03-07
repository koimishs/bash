#!/bin/bash 

#Note taking script


#get the date
date=$(date)


topic="$1"


filename="${HOME}/${topic}notes.txt"

# get the topic

read -p  "Your Note : " note

if [[ $note ]]; then
        echo "$(date): $note" >> "$filename"
        echo "Note '$note' saved to $filename"
else
        echo "No input; note was not saved"
fi
