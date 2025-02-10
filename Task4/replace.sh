#!/bin/bash

input_file="input.txt"
output_file="output.txt"

line_number=1

while IFS= read -r line; do
  if [ $line_number -ge 5 ] && [[ "$line" == *"welcome"* ]]; then
    line="${line//give/learning}"
  fi

  echo "$line" >> "$output_file"
  
  ((line_number++))
done < "$input_file"

echo "Processing completed. Output saved to $output_file"

