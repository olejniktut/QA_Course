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

