#!/bin/bash

scores=()

while true
do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="

    read -p "메뉴 선택: " menu

    case $menu in
        1)
            read -p "점수 입력: " score

            if [[ "$score" =~ ^[0-9]+$ ]] &&
               (( 10#$score <= 100 )); then
                scores+=("$((10#$score))")
                echo "성적 추가 완료"
            else
                echo "0~100 사이의 정수를 입력하세요."
            fi
            ;;
        2)
            echo "입력된 점수: ${scores[*]}"
            ;;
        3)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                sum=0
                for score in "${scores[@]}"
                do
                    sum=$((sum + score))
                done
                avg=$((sum / ${#scores[@]}))
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                sum=0
                for score in "${scores[@]}"
                do
                    sum=$((sum + score))
                done

                avg=$((sum / ${#scores[@]}))

                if [ "$avg" -ge 90 ]; then
                    grade="A"
                else
                    grade="B"
                fi

                echo "평균 등급: $grade"
            fi
            ;;
        5)
            echo "프로그램 종료"
            break
            ;;
        *)
            echo "잘못된 메뉴입니다."
            ;;
    esac

    echo ""
done
