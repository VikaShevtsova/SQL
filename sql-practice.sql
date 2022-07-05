--Задание: 1 (Serge I: 2002-09-30)
--Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
Select model, speed, hd
from pc
where price < 500;

--Задание: 2 (Serge I: 2002-09-21)
--Найдите производителей принтеров. Вывести: maker
Select distinct maker
from product
where type = 'Printer';

--Задание: 3 (Serge I: 2002-09-30)
--Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
Select model, ram, screen
from Laptop
where price > 1000;

--Задание: 4 (Serge I: 2002-09-21)
--Найдите все записи таблицы Printer для цветных принтеров.
Select *
from printer
where color = 'y';

--Задание: 5 (Serge I: 2002-09-30)
--Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
Select model, speed, hd
from pc
where (cd = '12x' or cd = '24x') and price < 600

--Задание: 6 (Serge I: 2002-10-28)
--Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость
select product.maker, laptop.speed
from product
inner join laptop
on product.model=laptop.model
where  type = 'laptop' and hd >=10

--Задание: 7 (Serge I: 2002-11-02)
--Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
select product.model, laptop.price 
from product 
join laptop
on product.model=laptop.model
where product.maker='B'
union
select product.model, pc.price 
from product 
join pc
on product.model=pc.model
where product.maker='B'
union
select product.model, printer.price 
from product 
join printer
on product.model=printer.model
where product.maker='B'

--Задание: 8 (Serge I: 2003-02-03)
--Найдите производителя, выпускающего ПК, но не ПК-блокноты.
select distinct maker from product 
where type='pc'
EXCEPT
select distinct maker from product 
where type='laptop'

--Задание: 9 (Serge I: 2002-11-02)
--Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
Select distinct product.maker
from product
inner join pc
on product.model=pc.model
where pc.speed >=450 and product.type='pc'

--Задание: 10 (Serge I: 2002-09-23)
--Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
Select model, price
from printer
where price =(select max(price) from printer)


--Задание: 11 (Serge I: 2002-11-02)
--Найдите среднюю скорость ПК.

Select avg(speed) as 'average speed PC'
from pc

--Задание: 12 (Serge I: 2002-11-02)
--Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
Select avg(speed) as 'average speed Laptop'
from laptop
where price>1000


--Задание: 13 (Serge I: 2002-11-02)
--Найдите среднюю скорость ПК, выпущенных производителем A.
Select avg(pc.speed) as 'average speed PC'
from pc
inner join product
on pc.model=product.model
where maker='A'

--Задание: 14 (Serge I: 2002-11-05)
--Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
select classes.class, ships.name, classes.country
from classes
inner join ships 
on classes.class=ships.class
where classes.numguns >=10

--Задание: 15 (Serge I: 2003-02-03)
--Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
Select hd from pc
group by hd
having count(model)>=2

--Задание: 16 (Serge I: 2003-02-03)
--Найдите пары моделей PC, имеющих одинаковые скорость и RAM. 
--В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), 
--Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
Select distinct a.model as model, b.model as model, a.speed as speed, a.ram as ram
from pc as a, pc as b
where a.model>b.model and a.speed=b.speed and a.ram=b.ram

--Задание: 17 (Serge I: 2003-02-03)
--Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
--Вывести: type, model, speed

Select distinct product.type, laptop.model, laptop.speed
from laptop, product
where product.type='laptop' and laptop.speed < all (select speed from pc)

--Задание: 18 (Serge I: 2003-02-03)
--Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

select maker, price
from product
inner join printer
on product.model=printer.model
where color='y' and price=(select min(price) from printer where color='y')

--Задание: 19 (Serge I: 2003-02-13)
--Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
--Вывести: maker, средний размер экрана.

Select maker, avg(screen) as avg_screen
from product, laptop
where product.model=laptop.model
group by maker

--Задание: 20 (Serge I: 2003-02-13)
--Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

Select maker, count(type) as count_model
from product
where type='pc'
group by maker
having count(type)>=3

--Задание: 21 (Serge I: 2003-02-13)
--Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
--Вывести: maker, максимальная цена.

Select maker, max(price) as max_price
from product, pc
where product.model=pc.model
group by maker

--Задание: 22 (Serge I: 2003-02-13)
--Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.

Select speed, avg(price) as avg_price
from pc
where speed> '600'
group by speed

--Задание: 23 (Serge I: 2003-02-14)
--Найдите производителей, которые производили бы как ПК
--со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
--Вывести: Maker

select distinct maker
from product, pc
where pc.speed>='750' and product.model=pc.model
INTERSECT
select distinct maker
from product, laptop
where laptop.speed>='750' and product.model=laptop.model

--Задание: 24 (Serge I: 2003-02-03)
--Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

with table_cte (model, price)
as 
(select pc.model, pc.price
from pc
union
select laptop.model, laptop.price
from laptop 
union
select printer.model, printer.price
from printer)
select model
from table_cte
where price=(select max(price) from table_cte)






