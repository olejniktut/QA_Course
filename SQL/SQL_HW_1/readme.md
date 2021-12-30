# Home work 1 SQL
```
Подключится к 
Host: 159.69.151.133
Port: 5056
User: user_25_x
Pass: 123
DB: qa_students_1
Table: students
```
 1. Вывести все поля и все строки.
```SQL
select * 
from students
```
 2. Вывести всех студентов в таблице
```SQL
select * 
from students

```
 3. Вывести только Id пользователей
```SQL
select id
from students 
```
 4. Вывести только имя пользователей
```SQL
select name
from students 
```
 5. Вывести только email пользователей
```SQL
select email
from students 
```
 6. Вывести имя и email пользователей
```SQL
select name, email
from students 
```
 7. Вывести id, имя, email и дату создания пользователей
```SQL
select name, email, created_on
from students 
```
 8. Вывести пользователей где password 12333
```SQL
select name, email, created_on
from students 
where password = '12333';
```
 9. Вывести пользователей которые были созданы 2021-03-26 00:0:00
 ```SQL
select name, email, created_on
from students 
where created_on = '2021-03-26 00:00:00';
 ```
10. Вывести пользователей где в имени есть слово Анна
```SQL
select *
from students 
where name like 'Anna%'
```
 11. Вывести пользователей где в имени в конце есть 8
```SQL
select *
from students 
where name like '%8'
```
 12. Вывести пользователей где в имени в есть буква а
```SQL
select *
from students 
where name like '%a%'
```
13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

```SQL
select *
from students 
where created_on = '2021-07-12 00:00:00';
```
14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
```SQL
select *
from students 
where created_on = '2021-07-12 00:00:00' and password = '1m313';
```
15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
```SQL
select *
from students 
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
```
16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
```SQL
select *
from students 
where created_on = '2021-07-12 00:00:00' and name like '%8%';
```
17. Вывести пользователя у которых id равен 110
```SQL
select *
from students 
where id = '110'
```
 18. Вывести пользователя у которых id равен 153
 ```SQL
select *
from students 
where id = '153'
```
19. Вывести пользователя у которых id больше 140
```SQL
select *
from students 
where id > '140'
```
 20. Вывести пользователя у которых id меньше 130
```SQL
select *
from students 
where id < '130'
```
 21. Вывести пользователя у которых id меньше 127 или больше 188
```SQL
select *
from students 
where id < '127' or id > '188';
```
 22. Вывести пользователя у которых id меньше либо равно 137
```SQL
select *
from students 
where id <= '137';
```
 23. Вывести пользователя у которых id больше либо равно 137
```SQL
select *
from students 
where id >= '137';
```
 24. Вывести пользователя у которых id больше 180 но меньше 190
```SQL
select *
from students 
where id > '180' and id < '190';
```
 25. Вывести пользователя у которых id между 180 и 190
```SQL
select *
from students 
where id between 180 and 190
```
 26. Вывести пользователей где password равен 12333, 1m313, 123313
```SQL
select *
from students 
where password in ('12333', '1m313', '123313')
```
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
```SQL
select *
from students 
where created_on in (' 2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
```
 28. Вывести минимальный id 
```SQL
select min(id) 
from students 
```
 29. Вывести максимальный.
```SQL
select max(id) 
from students 
```
 30. Вывести количество пользователей
 ```SQL
select count(id) 
from students 
```
31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
```SQL
select id, name, created_on 
from students 
order by created_on 
```
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
```SQL
select id, name, created_on 
from students 
order by created_on desc ;
```

