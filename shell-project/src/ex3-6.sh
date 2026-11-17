#!/bin/bash

read -p "폴더 이름 입력: " folder

if [ -z "$folder" ]; then
    echo "폴더 이름을 입력하세요."
    exit 1
fi

if [ -d "$folder" ]; then
    echo "이미 존재하는 폴더입니다."
else
    mkdir "$folder"
    echo "폴더 생성 완료: $folder"
fi

# 파일 5개 생성
for i in 1 2 3 4 5
do
    echo "File $i" > "$folder/file$i.txt"
done

echo "파일 5개 생성 완료"

# 파일 압축
tar -czf "$folder.tar.gz" -C "$folder" \
    file1.txt file2.txt file3.txt file4.txt file5.txt

echo "압축 완료: $folder.tar.gz"

# 압축 해제할 폴더 생성
mkdir -p "${folder}_extract"

# 압축 해제
tar -xzf "$folder.tar.gz" -C "${folder}_extract"

echo "압축 해제 완료"

# 결과 확인
echo "압축 해제된 파일 목록:"
ls "${folder}_extract"
