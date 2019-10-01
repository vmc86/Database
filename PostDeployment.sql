/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [Sklad]

INSERT INTO Categories (Title) VALUES 
(N'Пиво'), --слабо
(N'Вино'), --средний
(N'Водка'), --крепкий
(N'Слабоалкогольный напиток'), -- содержанием спирта не выше 8%
(N'Алкоголь средней крепости'), -- содержанием спирта в пределах 30%
(N'Крепкая алкогольная продукция'), -- содержанием спирта до 80%
(N'Брют'),
(N'Полусухое'),
(N'Сухое'),
(N'Полусладкое'),
(N'Сладкое'),
(N'Крепленое'),
(N'Белое'),
(N'Красное'),
(N'Шампанское'),--средний
(N'Текила'), --крепкий
(N'Виски'), --крепкий
(N'Коньяк'),--крепкий
(N'Вермут'),--средний
(N'Сидр'), --слабо
(N'Абсент'), --крепкий
(N'Портвейн');--средний

INSERT INTO Country(Title) VALUES 
(N'Украина'), 
(N'Россия'), 
(N'Бельгия'), 
(N'Германия'), 
(N'Беларусь'),
(N'Франция'),
(N'Грузия'),
(N'Мексика'),
(N'Англия'),
(N'Армения'),
(N'Кипр'),
(N'Шотландия'),
(N'Италия'),
(N'Ирландия'),
(N'Испания'),
(N'США');

INSERT INTO Buyer(Title, Adress, Phone, CountryId) VALUES 
(N'CM Londou Trading Ltd', N'POB42508', N'+35724661235', N'10'), --Пиво
(N'Creator Consulting SRL', N'Бухарест, Ул. Октавиана Гога, 12 Bl.M23', N'40741193107', N'11'), --водка
(N'ООО ГК Даймонд', N'Москва', N'+548844565', N'2'),
(N'ГУП РК ПАО Массандра', N'Крым, пгт. Массандра, ул. Винодела Егорова, д.9', N'70546870',  N'2'),
(N'ARTWINERY', N'ул. П. Лумумбы, 87, г. Бахмут, Донецкая обл., 84500', N'+38 (0627) 48-65-31', N'1'),
(N'Bacardi Martini', N'not adress', N'5939756204', N'13'),
(N'Belvingroup', N'not adress', N'2532214788', N'5'),
(N'Bosca Anniversary', N'not adress', N'4654309364', N'2'),
(N'Brandbar', N'г Киев, ул. Старосельская 1у', N'044 503-09-09', N'1'),
(N'Calvet', N'not adress', N'7082479028', N'6'),
(N'Chivas Brothers', N'not adress', N'4137075134', N'12'),
(N'Cinzano', N'not adress', N'5944887300', N'13'),
(N'David Sarajishvili and Eniseli', N'not adress', N'2200651348', N'7'),
(N'Doudet Naudin', N'not adress', N'8544357299', N'6'),
(N'Global Spirits', N'Украина, 03134, Киев, Пр-т Воздухофлотский, 100.', N'050-289-000-8', N'1'),
(N'Green Utopia', N'not adress', N'1626573573', N'6'),
(N'Hennessy', N'not adress', N'5714621599', N'6'),
(N'Inver House Distillers LTD', N'not adress', N'7515836831', N'12'),
(N'J. P. Chenet', N'not adress', N'3296692454', N'6'),
(N'Jack Daniels', N'not adress', N'2115690513', N'16'),
(N'Jameson', N'not adress', N'1787978266', N'14'),
(N'Kakhetian Traditional Winemaking', N'not adress', N'8490582955', N'7'),
(N'Les Grands Chais de France', N'not adress', N'9792021116', N'6'),
(N'Maison Ecusson', N'not adress', N'8754587120', N'6'),
(N'Perlino Optima', N'not adress', N'6213185376', N'13'),
(N'Royal Fruit Bel', N'not adress', N'9397777281', N'5'),
(N'Santo Stefano', N'not adress', N'3549225984', N'2'),
(N'Sidra Trabanco', N'not adress', N'1305843344', N'15'),
(N'Somersby', N'not adress', N'3592550559', N'2'),
(N'Stassen', N'not adress', N'2529066650', N'3'),
(N'Teichenne', N'not adress', N'3222331416', N'15'),
(N'Thatchers Cider', N'not adress', N'5377062311', N'9'),
(N'Torino Distillati S.r.l.', N'not adress', N'7847249930', N'13'),
(N'Алеф-Виналь', N'Украина, г. Днепр 49083, ул. Собинова, 1.', N'+38 (056) 732-22-62', N'1'),
(N'Арарат ЕКВВК', N'not adress', N'6730782669', N'10'),
(N'Баядера Групп', N'Украина, г.Киев, ул.Днепровская Набережная, 23В', N'+380 (44) 354 09 23', N'1'),
(N'Ереванский Коньячный Завод', N'not adress', N'8195299771', N'10'),
(N'Мексика, Халиско', N'not adress', N'6454483776', N'8'),
(N'Минский завод виноградных вин', N'not adress', N'8461126394', N'5'),
(N'Немирофф', N'Киевская область, Киев, 04070, ул. Братская 14, 3-й подъезд.', N'8188012443', N'1'),
(N'Русские оригинальные напитки (РОН)', N'not adress', N'6013266831', N'5'),
(N'Шабо ПТК', N'Одесса, 65009, Французский бульвар, 66/2', N'+380 48 7000 210', N'1')
;

INSERT INTO Saler(Title, Adress, Phone, CountryId) VALUES
(N'Сильпо', N'Мариуполь', '123456', 1), 
(N'АТБ', N'Мариуполь', '23457', 1),
(N'Щирый кум', N'Мариуполь', N'584652', N'1'),
(N'Зеркальный', N'Мариуполь', N'65843', N'1'),
(N'Метро', N'Мариуполь', N'584652', N'1'),
(N'Брусничка', N'Мариуполь', N'86544884', N'1'),
(N'Арсен', N'Львов', N'58745', N'1'),
(N'Велика кишеня', N'Запорожье', N'85548512', N'1'),
(N'Амстор', N'Запорожье', N'845648325', N'1'),
(N'Львовхолод', N'Львов', N'16587416', N'1')

INSERT INTO Manager (Post, FullName, DateOfBirth, Sex, Adress, Telephone, Pasport) VALUES
(N'Менеджер по продажам', N'Иванов Иван Иванович', N'10.06.1988', N'M', N'пр. Победы 108', N'12587441', N'СА58747'),
(N'Стажер', N'Петров Петр Петрович', N'10.03.1998', N'M', N'-', N'-', N'-'),
(N'Менеджер по продажам', N'Кирилов Иван Семенович', N'05.01.1976', N'M', N'пр. Мира 68', N'8487158', N'БР45887'),
(N'Старший менеджер по продажам', N'Яблонская Вера Семеновна', N'18.04.1996', N'W', N'пр. Мира 25', N'566544', N'CC785244')

INSERT INTO Products (Title, Sku, Alk, Volume, DateExpiration) VALUES
--ПИВО
(N'Балтика 9', '123000001', '4.5', '0.5', '12.12.2019'), --Россия
(N'Львовское', '123000002', '4.5', '0.5', '10.10.2019'),--Украина
(N'Stella Artois', '123000003', '4.5', '0.5', '10.09.2020'),--Бельгия
(N'Белый медведь', '123000004', '4.5', '0.5', '10.06.2020'),--Россия
(N'Славутич', '123000005', '4.5', '0.5', '15.08.2020'),--Украина
(N'Corona', '123000006', '4.5', '0.5', '10.06.2020'), --Мексика
(N'Roggenbier', '123000007', '4.5', '0.5', '01.08.2020'),--Германия
(N'Pilsner', '123000008', '4.5', '0.5', '09.05.2020'),--Германия
(N'Сармат', '123000009', '4.5', '0.5', '14.04.2020'),--Украина
(N'Оболонь', '1230000010', '4.5', '0.5', '16.09.2019'),--Украина
(N'Бочкове', '1230000011', '4.5', '0.5', '12.11.2019'),--Украина
(N'Бочкове', '1230000012', '4.5', '0.5', '12.11.2019'),--Украина
--ВИНО
(N'МУСКАТ БЕЛЫЙ КРАСНОГО КАМНЯ', '1230000013', '13', '0.7', '10.06.2021'), --Россия
(N'СЕДЬМОЕ НЕБО КНЯЗЯ ГОЛИЦЫНА', '1230000014', '16', '0.7', '10.05.2025'), --Россия
(N'БАСТАРДО', '1230000015', '16', '0.7', '10.09.2019'), --Россия
(N'МАДЕРА', '1230000016', '19.5', '0.7', '10.08.2028'), --Россия
(N'ХЕРЕС', '1230000017', '19.5', '0.7', '10.06.2024'), --Россия
(N'КАГОР ЮЖНОБЕРЕЖНЫЙ', '1230000018', '16', '0.7', '05.12.2023'), --Россия
(N'МУСКАТЕЛЬ МАССАНДРА ЧЕРНЫЙ', '1230000019', '16', '0.7', '05.12.2023'), --Россия
(N'БАСТАРДО', '1230000020', '9.5', '0.7', '05.12.2023'), --Россия
(N'КАБЕРНЕ МАССАНДРА', '1230000021', '9.5', '0.7', '05.12.2023'), --Россия
(N'АЛИГОТЕ МАССАНДРА', '1230000022', '10', '0.7', '05.12.2023'), --Россия
(N'ЧЕРНЫЙ ДОКТОР МАССАНДРА', '1230000023', '16', '0.7', '05.12.2023'), --Россия
(N'Жемчужина Массандры', '1230000024', '9.5', '0.7', '05.12.2023'), --Россия
(N'КОКУР МАССАНДРА', '1230000025', '9.5', '0.7', '05.12.2023'), --Россия
(N'Cabernet-Syrah, Pays d-Oc IGP', '1230000026', '12.5', '0.7', '05.12.2023'), --Франция
(N'Medium Sweet Vin de Pays', '1230000027', '12', '0.7', '05.12.2023'), --Франция
(N'Pinot Noir, Vin de France', '1230000028', '12', '0.7', '05.12.2023'), --Франция
(N'Shiraz, Pays d-Oc IGP', '1230000029', '13.5', '0.7', '05.12.2023'), --Франция
(N'Cotes du Rhone AOP Reserve', '1230000030', '13.5', '0.7', '05.12.2023'), --Франция
(N'Colombard-Sauvignon, Vin de France', '1230000031', '11', '0.7', '05.12.2023'), --Франция
(N'Chateauneuf-du-Pape AOC', '1230000032', '15', '0.7', '05.12.2023'), --Франция
(N'Cotes du Rhone AOC Rouge', '1230000033', '13', '0.7', '05.12.2023'), --Франция
--ПОРТВЕЙН
(N'ПОРТВЕЙН КРАСНЫЙ МАССАНДРА', '1230000034', '18.5', '0.7', '10.05.2025'), --Россия
(N'ПОРТВЕЙН КРАСНЫЙ ЛИВАДИЯ', '1230000035', '18.5', '0.7', '10.05.2025'), --Россия
--ВОДКА
(N'Лекс Ультра', '1230000036', '40', '0.7', '05.12.2023'), --Украина
(N'Мороша Премиум', '1230000037', '40', '0.75', '05.12.2023'), --Украина
(N'Мороша На воде озера Синевир', '1230000038', '40', '0.5', '05.12.2023'), --Украина
(N'Мороша Заповедная', '1230000039', '40', '0.5', '05.12.2023'), --Украина
(N'Цельсий Классик', '1230000040', '40', '0.7', '05.12.2023'), --Украина
(N'First Guild Povazhna', '1230000041', '40', '0.7', '05.12.2023'), --Украина
(N'Shabo Proba №2, grape vodka', '1230000042', '40', '0.5', '05.12.2023'), --Украина
(N'Хортиця Премиум', '1230000043', '40', '0.7', '05.12.2023'), --Украина
(N'Добрый Фермер" Самогон ржаной, 0.5 л', '1230000044', '40', '0.5', '05.12.2023'), --Беларусь
(N'Деревенский Самогон Традиционный', '1230000045', '42', '0.5', '05.12.2023'), --Беларусь
(N'Сябры На березовых почках', '1230000046', '40', '0.5', '05.12.2023'), --Беларусь
(N'Первогон" Ячменный, 0.5 л', '1230000047', '40', '0.5', '05.12.2023'), --Беларусь
--ШАМПАНСКОЕ
(N'Артемовское белое брют', '1230000048', '8', '0.75', '10.06.2021'), --Украина
(N'Артемовское белое полусухое', '1230000049', '8', '0.75', '10.06.2021'), --Украина
(N'Артемовское красное полусладкое', '1230000050', '8', '0.75', '10.06.2021'), --Украина
(N'Артемовское белое полусладкое', '1230000051', '8', '0.75', '10.06.2021'), --Украина
(N'Matrimonio Siciliano', '1230000052', '8', '0.75', '10.06.2021'), --Россия
(N'Bosca Anniversary', '1230000053', '7.5', '0.75', '10.06.2021'), --Россия
--ТЕКИЛА
(N'Olmeca Blanco', '1230000054', '38', '0.75', ''), --Мексика
(N'Espolon Blanco', '1230000055', '40', '0.7', ''), --Мексика
(N'Olmeca Altos Plata', '1230000056', '38', '0.7', ''), --Мексика
(N'Olmeca Gold', '1230000057', '38', '0.7', ''), --Мексика
(N'Sierra Reposado', '1230000058', '38', '0.7', ''), --Мексика
--ВИСКИ
(N'Jameson', '1230000059', '40', '0.7', ''), --Ирландия
(N'Jack Daniels', '1230000060', '40', '0.7', ''), --США
(N'Chivas Regal 18 years old', '1230000061', '40', '0.7', ''), --Шотландия
(N'Hankey Bannister', '1230000062', '40', '0.7', ''), --Шотландия
--КОНЬЯК
(N'Hennessy', '1230000063', '40', '0.7', ''), --Франция
(N'Арарат 5 звезд', '1230000064', '40', '0.7', ''), --Армения
(N'Сараджишвили ХО', '1230000065', '40', '0.7', ''), --Грузия
(N'Старый Кахети 5-летний', '1230000066', '40', '0.5', ''), --Грузия
(N'Ной Классик 20-летний', '1230000067', '40', '0.7', ''), --Армения
(N'Сараджишвили 3 звезды', '1230000068', '40', '0.5', ''), --Грузия
(N'Klinkov VS Superior', '1230000069', '40', '0.5', ''), --Украина
--ВЕРМУТ
(N'Filipetti Bianco Vermouth', '1230000070', '14.8', '1', ''), --Италия
(N'Filipetti Rosso Vermouth', '1230000071', '14.8', '1', ''), --Италия
(N'Cinzano Extra Dry', '1230000072', '18', '1', ''), --Италия
(N'Martini Royale Bianco', '1230000073', '8', '0.75', ''), --Италия
(N'Martini Rosso', '1230000074', '14.4', '1', ''), --Италия
(N'Маренго Бьянко Спешл', '1230000075', '15', '1', ''), --Украина
--СИДР
(N'Trabanco" Natural, 0.7 л', '1230000076', '6', '0.7', '15.08.2021'), --Испания
(N'Ecusson Brut', '1230000077', '5', '0.75', '15.08.2022'), --Франция
(N'Thatchers, Green Goblin', '1230000078', '5', '0.5', '15.08.2023'), --Англия
(N'Stassen Apple', '1230000079', '5.4', '0.33', '15.08.2024'), --Бельгия
(N'Cidre Royal', '1230000080', '5', '0.75', '15.08.2025'), --Беларусь
(N'Somersby Apple', '1230000081', '4.7', '0.44', '15.08.2026'), --Россия
--АБСЕНТ
(N'Винсент Премиум', '1230000082', '70', '0.7', ''), --Украина
(N'Xenta', '1230000083', '70', '0.7', ''), --Италия
(N'Teichenne, Jacques Senaux Blue', '1230000084', '80', '0.7', ''), --Испания
(N'La Fee Absinthe Parisienne, with absinthe spoon', '1230000085', '68', '0.75', '') --Франция
;

INSERT INTO ProductCategories (ProductId, CategoryId) VALUES
(
(SELECT Id FROM Products WHERE Sku = '123000001'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000001'), 
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000002'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000002'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000003'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000003'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000004'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000004'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000005'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000005'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000006'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000006'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000007'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000007'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000008'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000008'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '123000009'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '123000009'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000010'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000010'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000011'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000011'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000012'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000012'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000013'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000013'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000013'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000013'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000014'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000014'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000014'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000014'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000015'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000015'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000015'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000015'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000016'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000016'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000016'),
(SELECT Id FROM Categories WHERE Title = N'Крепленое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000016'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000017'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000017'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000017'),
(SELECT Id FROM Categories WHERE Title = N'Крепленое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000017'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000018'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000018'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000018'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000018'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000019'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000019'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000019'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000019'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000020'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000020'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000020'),
(SELECT Id FROM Categories WHERE Title = N'Сухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000020'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000021'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000021'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000021'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000021'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000022'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000022'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000022'),
(SELECT Id FROM Categories WHERE Title = N'Сухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000022'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000023'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000023'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000023'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000023'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000024'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000024'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000024'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000024'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000025'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000025'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000025'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000025'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000026'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000026'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000026'),
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000026'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000027'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000027'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000027'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000027'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000028'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000028'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000028'),
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000028'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000029'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000029'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000029'),
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000029'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000030'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000030'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000030'),
(SELECT Id FROM Categories WHERE Title = N'Сухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000030'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000031'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000031'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000031'),
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000031'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000032'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000032'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000032'),
(SELECT Id FROM Categories WHERE Title = N'Сухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000032'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000033'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000033'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000033'),
(SELECT Id FROM Categories WHERE Title = N'Сухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000033'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000034'), 
(SELECT Id FROM Categories WHERE Title = N'Портвейн')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000034'),
(SELECT Id FROM Categories WHERE Title = N'Крепленое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000035'), 
(SELECT Id FROM Categories WHERE Title = N'Портвейн')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000035'),
(SELECT Id FROM Categories WHERE Title = N'Крепленое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000036'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000036'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000037'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000037'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000038'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000038'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000039'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000039'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000040'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000040'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000041'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000041'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000042'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000042'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000043'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000043'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000044'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000044'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000045'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000045'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000046'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000046'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000047'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000047'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000048'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000048'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000048'),
(SELECT Id FROM Categories WHERE Title = N'Брют')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000048'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000049'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000049'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000049'), 
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000049'), 
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000050'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000050'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000050'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000050'),
(SELECT Id FROM Categories WHERE Title = N'Красное')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000051'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000051'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000051'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000051'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000052'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000052'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000052'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000052'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000053'), 
(SELECT Id FROM Categories WHERE Title = N'Шампанское')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000053'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000053'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000053'),
(SELECT Id FROM Categories WHERE Title = N'Белое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000054'), 
(SELECT Id FROM Categories WHERE Title = N'Текила')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000054'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000055'), 
(SELECT Id FROM Categories WHERE Title = N'Текила')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000055'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000056'), 
(SELECT Id FROM Categories WHERE Title = N'Текила')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000056'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000057'), 
(SELECT Id FROM Categories WHERE Title = N'Текила')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000057'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000058'), 
(SELECT Id FROM Categories WHERE Title = N'Текила')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000058'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000059'), 
(SELECT Id FROM Categories WHERE Title = N'Виски')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000059'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000060'), 
(SELECT Id FROM Categories WHERE Title = N'Виски')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000060'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000061'), 
(SELECT Id FROM Categories WHERE Title = N'Виски')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000061'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000062'), 
(SELECT Id FROM Categories WHERE Title = N'Виски')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000062'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000063'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000063'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000064'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000064'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000065'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000065'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000066'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000066'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000067'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000067'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000068'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000068'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000069'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000069'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000070'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000070'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000070'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000071'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000071'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000071'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000072'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000072'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000072'),
(SELECT Id FROM Categories WHERE Title = N'Полусухое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000073'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000073'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000073'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000074'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000074'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000074'),
(SELECT Id FROM Categories WHERE Title = N'Полусладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000075'), 
(SELECT Id FROM Categories WHERE Title = N'Вермут')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000075'),
(SELECT Id FROM Categories WHERE Title = N'Алкоголь средней крепости')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000075'),
(SELECT Id FROM Categories WHERE Title = N'Сладкое')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000076'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000076'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000077'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000077'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000078'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000078'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000079'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000079'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000080'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000080'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000081'), 
(SELECT Id FROM Categories WHERE Title = N'Сидр')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000081'),
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольный напиток')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000082'), 
(SELECT Id FROM Categories WHERE Title = N'Абсент')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000081'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000083'), 
(SELECT Id FROM Categories WHERE Title = N'Абсент')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000083'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000084'), 
(SELECT Id FROM Categories WHERE Title = N'Абсент')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000084'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000085'), 
(SELECT Id FROM Categories WHERE Title = N'Абсент')
),
(
(SELECT Id FROM Products WHERE Sku = '1230000085'),
(SELECT Id FROM Categories WHERE Title = N'Крепкая алкогольная продукция')
)
;

/*
INSERT INTO Sectors (Title, Phone) 
VALUES
(N'Sales',N'555-091'),
(N'HR', N'555-092'),
(N'Managment', N'555-093');

INSERT INTO Employers(FirstName, LastName, MiddleName, SectorId) 
VALUES
(N'Иванов',N'Иван',N'Иванович', (SELECT Id FROM Sectors WHERE Title = N'Managment')),
(N'Петров',N'Петр',N'Петрович', (SELECT Id FROM Sectors WHERE Title = N'HR')),
(N'Сидоров',N'Сидор',N'Сидорыч', (SELECT Id FROM Sectors WHERE Title = N'HR')),
(N'Пупкин',N'Пупка',N'Пупыч', NULL);
*/