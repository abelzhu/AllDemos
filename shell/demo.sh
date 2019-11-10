#!/bin/bash
# https://www.runoob.com/linux/linux-shell-echo.html

echo "hello"
echo the command is: $0
# echo the first parameter is: $1
# echo the second parameter is: $2
# echo the first parameter is: $$
# echo the first parameter is: $*
# echo the first parameter is: $@
for i in $@; do
    echo $i
done

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 

