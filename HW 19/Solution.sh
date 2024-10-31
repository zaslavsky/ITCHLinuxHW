#!/bin/bash

dir_1="/opt/omg_dir_1";
dir_2="/opt/omg_dir_2";

### Punkt 1
mkdir -p "$dir_1"

#Создаем 100 файлов со случайными именами
for i in {1..100}
do
  touch $dir_1/$RANDOM
done

### Punkt 2
mkdir -p "$dir_2"

# Проходим по всем файлам в первой директории
for file in "$dir_1"/*
do
  # Получаем имя файла без пути
  filename=$(basename "$file")
  # Проверяем, является ли имя файла числом
  if [[ "$filename" =~ ^[0-9]+$ ]]; then
    # Проверяем четность числа
    if (( filename % 2 == 0 )); then
      mv "$file" "$dir_2"/
    fi
  fi
done