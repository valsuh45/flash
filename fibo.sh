#!/bin/bash

generate_fibonaci() {

      a=0
      b=1

      echo "Fibonacci numbers up to term $n:"
      for ((i=0; i<=$n; i++)) ; do
          echo "$i = $a"
          temp=$a
          a=$b
          b=$(echo "$temp + $b" | bc)
      done
}

attempts=0
max_attempts=1   # Allows only one invalid imput in CI mode

while true; do
    read -p "Enter the number of Fibonacci numbers to display (0-500); " n
    if [[ $n =~ ^[0-9]+$ && $n -ge 0 && $n -le 500 ]]; then
        break
    else
        echo "Invalid input. Please enter a number between 0 and 500."
        ((attempts++))

        # Prevent infinite loops in non-interactive mode
        if [[ -t 0 ]]; then  # -t 0 checks if input is from a terminal
            continue  # If interactive, allow retry
        elif [[ $attempts -ge $max_attempts ]]; then
            exit 1  # Exit after 1 failed attempt in CI
        fi 
    fi
done

generate_fibonaci "$n"
