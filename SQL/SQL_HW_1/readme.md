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
`select * 
from students
`
 2. Вывести всех студентов в таблице
```
select * 
from students

```
select *
from students 
where name like 'Anna%'
```
select *
from students 
where name like '%8'

select *
from students 
where name like '%a%'

select *
from students 
where created_on = '2021-07-12 00:00:00';

select *
from students 
where created_on = '2021-07-12 00:00:00' and password = '1m313';

select *
from students 
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

select *
from students 
where created_on = '2021-07-12 00:00:00' and name like '%8%';

select *
from students 
where id = '110'

select *
from students 
where id = '153'

select *
from students 
where id > '140'

select *
from students 
where id < '130'

select *
from students 
where id < '127' or id > '188';

select *
from students 
where id <= '137';

select *
from students 
where id >= '137';

select *
from students 
where id > '180' and id < '190';

select *
from students 
where id between 180 and 190

select *
from students 
where password in ('12333', '1m313', '123313')

select *
from students 
where created_on in (' 2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')

select min(id) 
from students 


select max(id) 
from students 

select count(id) 
from students 

select id, name, created_on 
from students 
order by created_on 

select id, name, created_on 
from students 
order by created_on desc ;

