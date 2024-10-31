#!/bin/bash

# 1. Создать папку animals в /home
mkdir /home/animals 

# 2. Создать подпапки dogs, cats, fish в animals, созданной ранее папке
cd /home/animals ; mkdir dogs cats fish

# 3. Добавить файлы pluto, nemo и garfield в папках, созданных ранее (pluto goes to dogs, garfield goes to cats)
touch dogs/pluto cats/garfield

# 4. В /tmp создать файл adam
touch /tmp/adam

# 5. Копировать adam в /home/humans (создать директорию)
mkdir /home/humans ; cp /tmp/adam /home/humans/

# 6. Создать файл evA в /tmp
touch /tmp/evA 

# 7. Переместить с переименованием evA в /opt/eve
mv /tmp/evA /opt/eve

# 8. Переместить eve в humans ( /home/humans)
mv /opt/eve /home/humans/

# 9. Проверить, что adam и eve находятся в папке humans
ls /home/humans/








