#!/bin/bash
#------------------------------------------------------------------------------------------------------------------------------
clear
tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
sleep 0.1;tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m" | pv -qL 10
sleep 0.1;tput cup  4 2;read b
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m" | pv -qL 10
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m" | pv -qL 10
sleep 0.1;tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m" | pv -qL 10
sleep 0.1;tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m" | pv -qL 10
sleep 0.3;clear
exiftool ${b}.pdf;exiftool ${b}.pdf > ${b}.exif
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m" | pv -qL 10
sleep 0.1;tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m" | pv -qL 10
sleep 0.1;tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m" | pv -qL 10
sleep 0.3;clear
pdftoppm -progress -jpeg ${b}.pdf ${b}Im
ls *jpg
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m" | pv -qL 10
sleep 0.1;tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m" | pv -qL 10
sleep 0.1;tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m" | pv -qL 10
sleep 0.3;clear
rename 's/\-//g' *
ls *jpg
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m" | pv -qL 10
sleep 0.1;tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m" | pv -qL 10
sleep 0.1;tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m" | pv -qL 10
sleep 0.3;clear
for i in *.jpg; do tesseract "$i" "$i" -l deu+eng+ukr+rus; done;
ls *txt
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m"
          tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m"
          tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 23 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 24 2;echo -e "\e[36mЧастично переименуем файлы .txt Im/De утилитой rename\e[0m" | pv -qL 10
sleep 0.1;tput cup 25 2;echo -e "\e[31mrename 's/Im/De/' *.txt\e[0m" | pv -qL 10
sleep 0.1;tput cup 26 2;echo -e "\e[31mclear;ls *txt\e[0m" | pv -qL 10
sleep 0.3;clear
rename 's/Im/De/' *.txt
ls *txt
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[31mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m"
          tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m"
          tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 23 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 24 2;echo -e "\e[36mЧастично переименуем файлы .txt утилитой rename\e[0m"
          tput cup 25 2;echo -e "\e[31mrename 's/Im/De/' *.txt\e[0m"
          tput cup 26 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 27 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 28 2;echo -e "\e[36mУтилитой mv и циклом for удалим лишнее (.jpg) из файлов .txt\e[0m" | pv -qL 10
sleep 0.1;tput cup 29 2;echo -e "\e[31mfor c in *txt; do mv -- \"\$c\" \"\${c%.jpg.txt}.txt\";done\e[0m" | pv -qL 10
sleep 0.1;tput cup 30 2;echo -e "\e[31mclear;ls *txt\e[0m" | pv -qL 10
sleep 0.3;clear
for c in *txt; do mv -- "$c" "${c%.jpg.txt}.txt";done
ls *txt
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m"
          tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m"
          tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 23 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 24 2;echo -e "\e[36mЧастично переименуем файлы .txt утилитой rename\e[0m"
          tput cup 25 2;echo -e "\e[31mrename 's/Im/De/' *.txt\e[0m"
          tput cup 26 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 27 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 28 2;echo -e "\e[36mУтилитой mv и циклом for удалим лишнее (.jpg) из файлов .txt\e[0m"
          tput cup 29 2;echo -e "\e[31mfor c in *txt; do mv -- \"\$c\" \"\${c%.jpg.txt}.txt\";done\e[0m"
          tput cup 30 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 31 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 32 2;echo -e "\e[36mУтилитой trans и циклом for сделать перевод с немецкого на русский\e[0m" | pv -qL 10
sleep 0.1;tput cup 33 2;echo -e "\e[31mfor d in BescheidDe*.txt; do trans -b :ru -i \"\$d\" -o \"\${d}s\"; done;\e[0m" | pv -qL 10
sleep 0.1;tput cup 34 2;echo -e "\e[31mclear;ls *txts\e[0m" | pv -qL 10
sleep 0.3;clear
for d in *.txt; do trans -b :ru -i "$d" -o "${d}s"; done;
ls *txts
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup 40 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "${b}.pdf"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m ${b}.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в ${b}.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \${b}.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m"
          tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m"
          tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 23 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 24 2;echo -e "\e[36mЧастично переименуем файлы .txt утилитой rename\e[0m"
          tput cup 25 2;echo -e "\e[31mrename 's/Im/De/' *.txt\e[0m"
          tput cup 26 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 27 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 28 2;echo -e "\e[36mУтилитой mv и циклом for удалим лишнее (.jpg) из файлов .txt\e[0m"
          tput cup 29 2;echo -e "\e[31mfor c in *txt; do mv -- \"\$c\" \"\${c%.jpg.txt}.txt\";done\e[0m"
          tput cup 30 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 31 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 32 2;echo -e "\e[36mУтилитой trans и циклом for сделать перевод с немецкого на русский\e[0m"
          tput cup 33 2;echo -e "\e[31mfor b in BescheidDe*.txt; do trans -b :ru -i \"\$b\" -o \"\${b}s\"; done;\e[0m"
          tput cup 34 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 35 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 36 2;echo -e "\e[36mЧастично переименуем файлы .txts утилитой rename\e[0m" | pv -qL 10
sleep 0.1;tput cup 37 2;echo -e "\e[31mrename 's/De/Ru/' *.txts\e[0m" | pv -qL 10
sleep 0.1;tput cup 38 2;echo -e "\e[31mclear;ls *txts\e[0m" | pv -qL 10
sleep 0.3;clear
rename 's/De/Ru/' *.txts
ls *txts
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear
          tput cup  0 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
          tput cup  1 0
  for (( a=1; a<=39; a++ ))
    do
              echo -e "\e[32m|                                                                                |\e[0m"
    done
          tput cup  1 2;echo -e "\e[1;36m*** Извлечение данных из PDF файла ***\e[0m"
          tput cup  2 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  3 2;echo -e "\e[36mВведите название файла без расширения файла (.pdf):\e[0m"
          tput cup  4 2;echo -e "beschwerdevorentscheidung"
          tput cup  5 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  6 2;echo -e "\e[1;36mИзвлечение данных из PDF файла:\e[0m\e[36m beschwerdevorentscheidung.pdf\e[0m"
          tput cup  7 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup  8 2;echo -e "\e[36mCмотрим метаданные утилитой exiftool\e[0m"
          tput cup  9 2;echo -e "\e[36mи записываем их в beschwerdevorentscheidung.exif\e[0m"
          tput cup 10 2;echo -e "\e[31mexiftool \${b}.pdf;exiftool \${b}.pdf > \$b.exif\e[0m"
          tput cup 11 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 12 2;echo -e "\e[36mИзвлечём страницы в формате jpeg утилитой pdftoppm\e[0m"
          tput cup 13 2;echo -e "\e[31mpdftoppm -progress -jpeg \${b}.pdf \${b}Im\e[0m"
          tput cup 14 2;echo -e "\e[31mclear;ls -l *jpg\e[0m"
          tput cup 15 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 16 2;echo -e "\e[36mУдалим лишний символ (-) в именах файлов утилитой rename\e[0m"
          tput cup 17 2;echo -e "\e[31mrename 's/\-//g' *\e[0m"
          tput cup 18 2;echo -e "\e[31mclear;ls *jpg\e[0m"
          tput cup 19 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 20 2;echo -e "\e[36mПеречитаем файлы из jpg в txt утилитой tesseract-ocr, циклом for\e[0m"
          tput cup 21 2;echo -e "\e[31mfor i in \${b}Im*.jpg; do tesseract \"\$i\" \"\$i\" -l deu+eng+ukr+rus; done;\e[0m"
          tput cup 22 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 23 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 24 2;echo -e "\e[36mЧастично переименуем файлы .txt утилитой rename\e[0m"
          tput cup 25 2;echo -e "\e[31mrename 's/Im/De/' *.txt\e[0m"
          tput cup 26 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 27 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 28 2;echo -e "\e[36mУтилитой mv и циклом for удалим лишнее (.jpg) из файлов .txt\e[0m"
          tput cup 29 2;echo -e "\e[31mfor c in *txt; do mv -- \"\$c\" \"\${c%.jpg.txt}.txt\";done\e[0m"
          tput cup 30 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 31 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 32 2;echo -e "\e[36mУтилитой trans и циклом for сделать перевод с немецкого на русский\e[0m"
          tput cup 33 2;echo -e "\e[31mfor b in BescheidDe*.txt; do trans -b :ru -i \"\$b\" -o \"\${b}s\"; done;\e[0m"
          tput cup 34 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 35 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
          tput cup 36 2;echo -e "\e[36mЧастично переименуем файлы .txts утилитой rename\e[0m"
          tput cup 37 2;echo -e "\e[31mrename 's/De/Ru/' *.txts\e[0m"
          tput cup 38 2;echo -e "\e[31mclear;ls *txt\e[0m"
          tput cup 39 0;echo -e "\e[32m+--------------------------------------------------------------------------------+\e[0m"
sleep 0.1;tput cup 40 0;echo -en "\e[32m|\e[36m Восстановим расширение файла .txt" | pv -qL 10
                        echo -e "                                              \e[32m|\e[0m"
sleep 0.1;tput cup 41 0;echo -en "\e[32m|\e[31m rename 's/\\.txts\$/\\.txt/' *.txts" | pv -qL 10
                        echo -e "                                               \e[32m|\e[0m"
sleep 0.1;tput cup 42 0;echo -en "\e[32m|\e[31m clear;ls *txt" | pv -qL 10
                        echo -e "                                                                  \e[32m|\e[0m"
          tput cup 43 0;echo -e "\e[32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
sleep 0.3;clear
rename 's/\.txts$/\.txt/' *.txts
ls *txt
#------------------------------------------------------------------------------------------------------------------------------
sleep 0.9;clear;echo -e "
 ExtractDataFromPdf - Извлечение данных из PDF файла
 Asciinema  \e[36m https://asciinema.org/a/511211\e[0m
 Gitea      \e[36m https://try.gitea.io/Grannik/ExtractDataFromPdf\e[0m
 Framagit   \e[36m https://framagit.org/GrannikOleg/extractdatafrompdf\e[0m
 Bitbucket  \e[36m \e[0m
 Codeberg   \e[36m https://codeberg.org/Grannik/ExtractDataFromPdf\e[0m
 Notabug    \e[36m https://notabug.org/Grannikoleg/ExtractDataFromPdf\e[0m
 Sourceforge\e[36m https://sourceforge.net/projects/extractdatafrompdf/files/\e[0m
 Gitlab     \e[36m https://gitlab.com/grannik/extractdatafrompdf\e[0m
 Github     \e[36m https://github.com/GrannikOleg/ExtractDataFromPdf\e[0m
"
