#!/bin/bash

echo "첫 번째 과목 점수:"
read a

echo "두 번째 과목 점수:"
read b

if [ "$a" -lt 0 ] || [ "$a" -gt 100 ] ||
   [ "$b" -lt 0 ] || [ "$b" -gt 100 ]; then
    echo "점수는 0~100 사이여야 합니다."
    exit 1
fi

if [ "$a" -ge 90 ]; then
    grade1="A"
else
    grade1="B"
fi

if [ "$b" -ge 90 ]; then
    grade2="A"
else
    grade2="B"
fi

avg=$(( (a + b) / 2 ))

if [ "$avg" -ge 90 ]; then
    avg_grade="A"
else
    avg_grade="B"
fi

echo "첫 번째 과목: $grade1"
echo "두 번째 과목: $grade2"
echo "평균 점수: $avg"
echo "평균 등급: $avg_grade"
