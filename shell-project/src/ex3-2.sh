#!/bin/bash

echo "첫 번째 실수를 입력하세요:"
read x1

echo "두 번째 실수를 입력하세요:"
read x2

y1=$(awk -v x="$x1" 'BEGIN {print 0.5*x*x}')
y2=$(awk -v x="$x2" 'BEGIN {print 0.5*x*x}')

echo "x = $x1, y = $y1"
echo "x = $x2, y = $y2"
