#!/bin/bash

read -p "Введите адрес: " target

# Счетчик неудачных пингов
fail_count=0

while true
do
    # Выполняем пинг 1 раз с ожиданием ответа в 1 секунду и вытаскиваем время
    ping_output=$(ping -c 1 -W 1 $target 2>/dev/null)

    # Проверяем, был ли пинг успешным
    if echo "$ping_output" | grep -q "time="; then
        # Извлекаем время отклика
        ping_time=$(echo "$ping_output" | grep -oP '(?<=time=)[0-9.]+')


        # Если время отклика больше 100 мс
        # bc мощная утилита. По умолчанию может не быт в системе. (apt install bc)
        if (( $(echo "$ping_time > 100" | bc -l) )); then
            echo "Время пинга $ping_time мс превышает 100 мс."
        else
            echo "Время пинга $ping_time мс."
        fi

        # Сбрасываем счетчик, если пинг был успешным
        fail_count=0
    else
        # Если пинг не удался, увеличиваем счетчик неудач
        ((fail_count++))
        echo "Нет ответа от ${target}. Попытка №$fail_count"

        # Если 3 подряд пинга не удались, выводим сообщение
        if [ $fail_count -ge 3 ]; then
            echo "Нет ответа от ${target} после 3 попыток подряд"
            fail_count=0
        fi
    fi
    sleep 1
done