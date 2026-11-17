#!/bin/bash

# 리눅스 명령어 실행 함수
run_command() {
    "$@"
}

while true
do
    echo "======================"
    echo "1) 사용자 정보"
    echo "2) CPU 사용률"
    echo "3) 메모리 사용량"
    echo "4) 디스크 사용량"
    echo "5) ls 명령어 실행"
    echo "6) 종료"
    echo "======================"

    read -p "메뉴 선택: " menu

    case $menu in
        1)
            echo "사용자 정보:"
            whoami
            id
            ;;
        2)
            echo "CPU 사용률:"
            top -bn1 | head -n 5
            ;;
        3)
            echo "메모리 사용량:"
            free -h
            ;;
        4)
            echo "디스크 사용량:"
            df -h
            ;;
        5)
            read -p "ls 옵션 입력 (예: -l): " option
            echo "ls 실행 결과:"
            if [ -z "$option" ]; then
                run_command ls
            else
                run_command ls "$option"
            fi
            ;;
        6)
            echo "프로그램 종료"
            break
            ;;
        *)
            echo "잘못된 메뉴입니다."
            ;;
    esac

    echo ""
done
