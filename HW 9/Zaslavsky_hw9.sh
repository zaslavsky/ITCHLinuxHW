

# Заведение новой переменной USER и присвоение ей значения
export USER="Zaslavsky" 


#!/bin/bash

# Написать текущую дату
echo "Текущая дата: $(date)"

# Поприветствовать пользователя
echo "Hello, $USER!"

# Написать, из какой директории работает скрипт
echo "Скрипт запущен из каталога: $(pwd)"

# Добавить количество процессов с именем bioset (не включая процесс grep)
process_count=$(ps aux | grep '[b]ioset' | wc -l)
echo "Количество процессов с именем bioset: $process_count"


# Вывести права на файл /etc/passwd в формате (-rw-r--r--)
permissions=$(ls -l /etc/passwd | awk '{print $1}')
echo "Права на файл /etc/passwd: $permissions"
