#!/bin/bash

# Run the top command in batch mode to get the output
top -b -n 1 > top_output.txt

# Extract the top 5 processes by CPU usage
echo "Top 5 processes by CPU usage:"
echo "--------------------------------"
awk 'NR>7 {print $1, $9, $10, $12}' top_output.txt | sort -k2 -nr | head -5

# Extract the top 5 processes by memory usage
echo ""
echo "Top 5 processes by Memory usage:"
echo "--------------------------------"
awk 'NR>7 {print $1, $9, $10, $12}' top_output.txt | sort -k3 -nr | head -5

# Clean up the temporary file
rm top_output.txt
