#!/bin/bash

read -p "폴더 이름 입력: " folder

if [ -z "$folder" ]; then
    echo "폴더 이름을 입력하세요."
    exit 1
fi

mkdir -p "$folder"

for i in 1 2 3 4 5
do
    filename="file$i.txt"

    # 파일 생성
    echo "This is file $i" > "$folder/$filename"

    # 파일 이름으로 하위 폴더 생성
    mkdir -p "$folder/${filename}_dir"

    # 심볼릭 링크 생성
    ln -s "../$filename" "$folder/${filename}_dir/link"

    echo "$filename 생성 및 링크 완료"
done

echo "모든 작업 완료"
