#!/bin/bash
# WC report script with user input

# Ask user for filename
read -p "Enter the filename: " FILE

# Check if user entered something
if [ -z "$FILE" ]; then
    echo "Error: No filename entered!"
    exit 1
fi

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found!"
    exit 1
fi

# Generate report
printf "\n===== Word/Line/Character Report =====\n"
printf "Total lines      : %s\n" "$(wc -l < "$FILE")"
printf "Total words      : %s\n" "$(wc -w < "$FILE")"
printf "Total characters : %s\n" "$(wc -c < "$FILE")"
printf "Summary (L W C)  : %s\n" "$(wc "$FILE")"
printf "======================================\n"
