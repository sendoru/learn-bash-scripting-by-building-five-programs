#!/bin/bash
# Program that counts down to zero from a given argument

# echo $* prints all arguments given to the program
# echo $1 prints first argument given to the program
# bash uses 1-based index?? wtf

# 대괄호 2번은 왜박는거야
# 대괄호랑 안에 넣는 조건 사이에 띄어쓰기 꼭 넣어야 되는것도 꼴받네
echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]]
then
  : '
  for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done
  '
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I
    (( I-- ))
    sleep 1
  done
else
  echo "Include a positive integer as the first argument."
fi
