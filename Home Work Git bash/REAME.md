# GitBush Homework

1.Посмотреть где я - `pwd`

2.Создать папку -` mkdir dir`

3.Зайти в папку -` cd dir`	

4.Создать 3 папки - `mkdir dir1 dir2 dir3`

5.Зайти в любоую папку - `cd dir2`

6.Создать 5 файлов (3 txt, 2 json) - `touch file{1..3}.txt file{1..2}.json`

7.Создать 3 папки - `mkdir dir1 dir2 dir3`

8.Вывести список содержимого папки - `ls -la`

9.Открыть любой txt файл - `nano file1.txt`

10.написать туда что-нибудь, любой текст - "Quality assurance is a way of preventing mistakes and defects in manufactured products and avoiding problems when delivering products or services to customers" 

11.сохранить и выйти. -` ^O, ^X`

12.Выйти из папки на уровень выше -` cd ..`

13.переместить любые 2 файла, которые вы создали, в любую другую папку.
`$ mv dir2/*.json dir1`

14.скопировать любые 2 файла, которые вы создали, в любую другую папку.
`$ cp file1.txt file2.txt ../dir3`

15.Найти файл по имени - `$ find  -name 'file1.txt'`

16.просмотреть содержимое в реальном времени (команда grep) изучите как она работает.
`$ grep -r Linux (слово во всех файлах и папках)`

`$ grep -i "Linux" File1.txt (слово в конкретном файле регистронезависимо)`

17.вывести несколько первых строк из текстового файла - `$ head -n2 File1.txt`

18.вывести несколько последних строк из текстового файла -` $ tail -n5 File1.txt`

19.просмотреть содержимое длинного файла (команда less) изучите как она работает.
`$ less -N File1.txt (вывод с нумерацией строк), :q - выход`

20.вывести дату и время - `$ date`

-------------------------------------------------------------------------------------------------------
Задание *
1.Отправить http запрос на сервер. - `$ curl http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000`
2.Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
```$ touch myscript
$ nano myscript
	#!/bin/bash
	mkdir dir
	cd dir
	mkdir dir1 dir2 dir3
	cd dir2
	touch file{1..3}.txt file{1..2}.json
	mkdir dir1 dir2 dir3
	ls
	mv *.json dir1
$ chmod +x ./myscript
$ ./myscript```
