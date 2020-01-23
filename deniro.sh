#!/bin/bash

# This is processing deniro file

# wget https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv

# Count the number of movies
# 87?
# grep "\w" deniro.csv | wc -l
cat deniro.csv | tail -n+2 | head -n-1 | wc -l

# Create a cleaned data only file
cat deniro.csv | tail -n+2 | head -n-1 > deniro-cleaned.csv


# Compute average rating
cat deniro-cleaned.csv | awk -F, 'BEGIN {count=0; total=0}; {total+=$2; count++ } ; END {print "Average Rating="total/count}'


