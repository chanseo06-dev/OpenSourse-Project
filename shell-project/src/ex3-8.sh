#!/bin/bash

DB="DB.txt"

echo "===================="
echo "1) 팀원 정보 추가"
echo "2) DB 새로 작성"
echo "===================="

read -p "메뉴 선택: " menu

case $menu in
    1)
        read -p "이름 입력: " name
        read -p "생일 입력: " birthday

        echo "$name $birthday" >> "$DB"
        echo "정보 추가 완료"
        ;;
    2)
        read -p "이름 입력: " name
        read -p "생일 입력: " birthday

        echo "$name $birthday" > "$DB"
        echo "DB 새로 작성 완료"
        ;;
    *)
        echo "잘못된 메뉴입니다."
        ;;
esac

echo "===================="
echo "현재 DB 내용:"
cat "$DB"
