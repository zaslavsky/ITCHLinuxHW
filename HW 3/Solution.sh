#1: Создание директории и текстового файла
mkdir -p /home/user/start
echo "Start" > /home/user/start/1.txt

#2: Добавление текущей даты в текстовый документ
date >> /home/user/start/1.txt

#3: Создание директории и копирование файла в /opt/task/start.txt
mkdir -p /opt/task
cp /home/user/start/1.txt /opt/task/start.txt

#4: Добавление последних 4 строк из списка всех объектов в корневой директории
ls -a / | tail -n 4 >> /opt/task/start.txt