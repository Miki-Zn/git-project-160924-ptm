#!/bin/bash

# 1. Запрос исходной и целевой директории у пользователя


# 2. Запрос расширения файлов, которые нужно скопировать

# 3. Проверка существования исходной директории

# 4. Проверка существования целевой директории

if [[ -d "$targetdir" ]]
then
    echo "Directory exist"
else
   echo "Directory does not exist"
   exit 1
fi


if [[ ! -r "$targetdir" ]]
then
    echo "Directory $targetdir does not have rights for reading"
else
    echo "Directory has rights for reading"
fi

if [[ ! -w "$targetdir" ]]
then
    echo "Directory $targetdir does not have rights for writing"
else
    echo "Directory has rights for writing"
fi

# 5.Проверить наличие файлов с указанным расширением в исходной директории

# 6. вывод общего количества найденных файлов в исходной диреткории

# 7. Копирование файлов с указанным расширением в целевую директорию


# 8 .Подсчет общего количества файлов в целевой директории

# 9.

echo "Готово."
