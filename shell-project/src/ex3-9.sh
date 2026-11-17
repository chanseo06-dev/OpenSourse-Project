#!/bin/bash

DB="DB.txt"

if [ ! -f "$DB" ]; then
    echo "DB.txt 파일이 없습니다."
    exit 1
fi

read -p "검색할 이름 입력: " name

result=$(awk -v n="$name" '$1 == n' "$DB")

if [ -n "$result" ]; then
    echo "검색 성공!"
    echo "===================="
    echo "$result"
else
    echo "검색 결과가 없습니다."
fi
