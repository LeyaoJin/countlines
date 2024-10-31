#!/bin/bash

for file in "$@"; do
    if [[ ! -f "$file" ]]; then
        echo "File not found: $file"
        continue
    fi

    line_count=$(wc -l < "$file")

    if [[ "$line_count" -eq 0 ]]; then
        echo "The file '$file' is empty."
    elif [[ "$line_count" -eq 1 ]]; then
        echo "The file '$file' has one line."
    else
        echo "The file '$file' has $line_count lines."
    fi
done
