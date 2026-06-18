#!/bin/bash

REPORT="rep.txt"

> $REPORT

for TARGET in "1.1.1.1" "vk.ru" "8.8.8.8" "ya.ru"
do
	echo "Запускаю проверку узлa $TARGET"
	ping -c 3 $TARGET >> $REPORT

	if [ $? -eq 0 ]
	then
		echo "Проверка узла $TARGET прошла успешно"
	else
		echo "Внимание,произошла ошибка при проверки узла $TARGET"
	fi
	echo "-------------------------------"

done
