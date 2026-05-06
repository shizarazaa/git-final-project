#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Input:
# p, principal amount
# r, annual rate of interest
# t, time period in years

# Output:
# simple interest = p*r*t

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

# Formula: SI = (P * R * T) / 100
# Using 'bc' for decimal support if available, or basic expr for integers
s=$(echo "scale=2; $p * $t * $r / 100" | bc 2>/dev/null || expr $p \* $t \* $r / 100)

echo "The simple interest is: $s"
