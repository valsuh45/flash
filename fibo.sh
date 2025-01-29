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

while true; do
    read -p "Enter the number of Fibonacci numbers to display (0-500); " n
    if [[ $n =~ ^[0-9]+$ && $n -ge 0 && $n -le 500 ]]; then
        break
    else
        echo "Invalid input. Please enter a number between 0 and 500."
    fi
done

generate_fibonaci "$n"
