#!/bin/bash


# 1. Запрос исходной и целевой директории у пользователя

set -e

read -p "Введите путь исходной директории: " sourcedir

if [[ ! -d "$sourcedir" ]]; then
    echo "Исходная директория $sourcedir не существует"
    exit 1
fi

read -p "Введите путь целевой директории: " targetdir

if [[ ! -d "targetdir" ]]; then
    echo "Целевая директория '$targetdir' не существует."
    echo "Создаю директорию"
    mkdir -p "$targetdir"
fi

# 2. Запрос расширения файлов, которые нужно скопировать
read -p "Введите расширение файлов: " file_ext

if [[ -z "$file_ext" ]]; then
    echo "Вы не указали расширение файлов"
    exit 1
fi

echo "Копируем файлы с расширением $file_ext из '$sourcedir'"


# 3. Проверка существования исходной директории


if [ -d "$sourcedir" ]; then
    echo "Директория существует."
else
    echo "Директория не существует."
fi


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
shopt -s nullglob
files=("$sourcedir"/*."$file_ext")

if [[ ${#files[@]} -eq 0 ]]; then
    echo "В директории '$sourcedir' нет файлов с расширением .$file_ext"
    exit 1
fi
# 6. вывод общего количества найденных файлов в исходной диреткории

# 7. Копирование файлов с указанным расширением в целевую директорию


# 8 .Подсчет общего количества файлов в целевой директории

# 9.

echo "Готово."
