Работаем в JSLinux 

Создайте файл myfirstbashscript.sh где угодно.
Сделайте его исполняемым.
Заведите новую переменную USER и присвойте ей ваше имя в качестве значения
Добавьте в скрипт все необходимое, чтобы он :
Написал дату
Поприветствовал Вас по имени ( hello $USER!)
Написал, из какой директории он работает
Добавил количество процессов с именем bioset одним числом (не учитывая процесс grep)
Вывел права на файл /etc/passwd в формате (-rw-r--r--) - и только эту часть (потребуется awk)

Экспортируйте и пришлите результирующий файл, желательно в формате txt

Что вам понадобится:
echo, pwd, ps -ef, date, grep (и флаг -v не забываем! ), wc -l, awk '{print $НОМЕР СТОЛБЦА}' , export_file