#!/bin/bash

echo 'export MYENV="Hello Shell"' >> ~/.bashrc

source ~/.bashrc

echo "환경변수 등록: $MYENV"
