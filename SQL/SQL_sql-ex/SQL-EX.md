# SQL-EX.RU

Задание: 1 Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

```SQL
SELECT model, speed, hd
FROM PC
WHERE price < 500
```
Задание: 2 Найдите производителей принтеров. Вывести: maker

```SQL
SELECT DISTINCT maker 
FROM Product
WHERE type = 'Printer'
```
Задание: 3 Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

```SQL
SELECT model, ram, screen
FROM Laptop
WHERE price > 1000
```
Задание: 4 Найдите все записи таблицы Printer для цветных принтеров.

```SQL
SELECT *
FROM Printer
WHERE color = 'y'
```
Задание: 5 Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

```SQL
SELECT model, speed, hd
FROM PC
WHERE (cd = '12x' OR cd = '24x') AND price < 600
```
Задание: 6 Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

```SQL
SELECT DISTINCT maker, speed
FROM Product LEFT JOIN 
	Laptop ON Laptop.model = Product.model
WHERE type = 'Laptop' AND hd >= 10
```
Задание: 7 Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

```SQL
select PC.model, price
from PC
JOIN  Product ON PC.model = Product.model
WHERE maker = 'B' 
UNION
select Laptop.model, price
from Laptop
JOIN   Product ON Laptop.model = Product.model
WHERE maker = 'B' 
UNION
select Printer.model, price
from Printer
JOIN Product ON Printer.model = Product.model
WHERE maker = 'B'
```
Задание: 8Найдите производителя, выпускающего ПК, но не ПК-блокноты.

```SQL
select maker
from Product
where type like 'PC'
EXCEPT 
select maker
from Product
WHERE type = 'Laptop'
```
Задание: 9 Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

```SQL
select DISTINCT maker
from Product
join PC on PC.model = Product.model
where speed >= 450
```

Задание: 10 Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

```SQL
select DISTINCT model, price
from printer
where price = (select max(price) from printer)
```
Задание: 11Найдите среднюю скорость ПК.

```SQL
select avg(speed)
from PC
```
Задание: 12 Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

```SQL
select avg(speed)
from laptop
where price > 1000
```
Задание: 13 Найдите среднюю скорость ПК, выпущенных производителем A.

```SQL
select avg(speed)
from pc
join product on product.model = pc.model
where maker like 'A'
```
Задание: 14 Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

```SQL
select classes.class, ships.name, classes.country
from classes
join ships on ships.class = classes.class
where numGuns >= 10
```
Задание: 15 Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

```SQL
select hd
from pc
group by hd
having count(*) > 1
```
Задание: 16 Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

```SQL
select distinct a.model, b.model, a.speed, a.ram
from pc a, pc b
where a.speed = b.speed and a.ram = b.ram and a.model > b.model
```
Задание: 17 Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed

```SQL
select DISTINCT product.type, laptop.model, speed
from laptop, product
where product.model = Laptop.model AND speed < ALL (SELECT speed FROM PC)
```