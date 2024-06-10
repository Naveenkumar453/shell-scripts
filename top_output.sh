#!/bin/bash
echo "printing output command in required format"
top -n 1 -b -c |awk -vOFS="\t" 'NR>=6 && NR<20 {print $1,$2,$9,$10,$NF}'

echo "printing in different format"
top -n 1 -b -c| awk -vOFS="\t" 'NR>6 && NR<18 {s=""; for (i=12;i<=NF;++i) s=s FS $i; print $1,$2,$9,$10,$11,s}'
