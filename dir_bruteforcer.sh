#!/bin/bash

# Simple Directory Brute Forcer

# Check if the target URL and wordlist file are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <target-url> <wordlist>"
    exit 1
fi

TARGET=$1
WORDLIST=$2

# Check if the wordlist file exists
if [ ! -f "$WORDLIST" ]; then
    echo "Wordlist file $WORDLIST does not exist."
    exit 1
fi

echo "Starting directory brute force on $TARGET..."

# Loop through each line in the wordlist
while read -r DIR; do
    URL="$TARGET/$DIR"
    STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

    # Check if the directory exists (HTTP status code 200)
    if [ "$STATUS" -eq 200 ]; then
        echo "Found: $URL - Status: $STATUS (Directory exists)"
    else
        echo "Not Found: $URL - Status: $STATUS (Directory does not exist)"
    fi
done < "$WORDLIST"

echo "Directory brute force completed."
