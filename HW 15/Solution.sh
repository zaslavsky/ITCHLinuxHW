#!/bin/bash

#10 раз с интервалом в 5 секунд пишем дату в формате HH:MM:SS и количество процессов одним числом.
for i in {1..10}
do
    echo "$(date +%H:%M:%S) - $(ps -e | wc -l) процессов"
    #sleep 5 
done

# Запись информации о процессоре в файл processor_info.txt
lscpu >> processor_info.txt

# Запись информации об операционной системе в файл os_info.txt
head -n1 /etc/os-release | cut -d\= -f2 > os_name.txt

# Создание 50 файлов с расширением .txt, от 50.txt до 100.txt
for i in $(seq 50 100)
do
    touch "$i.txt"
done