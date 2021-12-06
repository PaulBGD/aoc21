#!/usr/bin/env bash
cd "$(dirname "$0")" || exit

echo "Part 1:"
xargs ruby part1.rb < input.txt

echo "Part 2:"
xargs ruby part2.rb < input.txt
