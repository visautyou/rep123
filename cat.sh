#!/bin/bash

# Задаем условие куда будут складываться данные после проверки

REPORT="cat.txt"

> $REPORT

for TRIGER in "1.1.1.1" "8.8.8.8" "ya.ru" "vk.ru"
do
	echo "Запсукаю сканирование узлов $TRIGER..."
	ping -c 2 $TRIGER >> $REPORT
	
	if [ $? -eq 0 ] 
	then
		echo "Узел $TARGET доступен"
	else
 		echo "Внимание! Узел $TARGET недоступен."
	fi
	echo "-------------------------"

done
