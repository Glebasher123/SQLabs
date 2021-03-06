USE Lab7

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Вес товара] = 200 AND [Название товара] = 'Зефир в шоколаде'

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Цена] = 7

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Цена] > 10 OR [Вес товара] > 1000

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Вес товара] BETWEEN 400 AND 700
ORDER BY [Название товара]

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Вес товара] NOT BETWEEN 500 AND 700

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Название товара] IN ('Зефир лимонный','Зефир розовый')

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
ORDER BY [Вес товара]

SELECT [Название товара], [Вес товара], [Цена]
FROM Товар
WHERE [Название товара] LIKE 'К%'
UNION
SELECT [Название товара], [Вес товара], [Цена]
FROM Товар 
WHERE [Название товара] LIKE 'Ш%'
