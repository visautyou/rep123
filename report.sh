#!/bin/bash

REPORT="status.txt"

> $REPORT

for TARGET in "1.1.1.1" "ya.ru" "google.com" "vk.ru"
do
ping -c 3 $TARGET >> $REPORT
if [ $? -eq 0 ] 
then
echo "Сканирование узла $TARGET прошло успешно"
else
echo "Внимание! Произошал ошибка при сканирование узлов $TARGET"
fi
echo "------------------"
done
