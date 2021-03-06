use Lab4

DROP INDEX IndexNam ON Товар
CREATE INDEX IndexNam ON Товар([Вес товара])

DROP INDEX IndexNam2 ON Поставщик
CREATE INDEX IndexNam2 ON Поставщик(Наименование, Телефон)

DROP INDEX IndexNam3 ON Поставщик
CREATE CLUSTERED INDEX IndexNam3 ON Поставщик(Наименование, Телефон)

--Полное

BACKUP DATABASE Lab4
	TO DISK = 'D:\Complete.BAK'

RESTORE DATABASE Lab4
FROM DISK='D:\Complete.BAK'
WITH REPLACE

drop database Lab4
-- Разностное

BACKUP DATABASE Lab4
	TO DISK = 'D:\Difference.BAK'
WITH DIFFERENTIAL

RESTORE DATABASE Lab4
FROM  DISK = 'D:\Difference.BAK'
WITH  FILE = 1,  RECOVERY

-- Файловых групп 

BACKUP DATABASE Lab4
FILEGROUP = 'PRIMARY'
	TO DISK = 'D:\File.BAK'

RESTORE log Lab4 FILEGROUP = 'PRIMARY'
FROM DISK = 'D:\File.BAK'
WITH  PARTIAL, RECOVERY, REPLACE

-- Журнал транзакций 

BACKUP log Lab4
	TO DISK = 'D:\Magazine.BAK'

RESTORE log Lab4
FROM DISK='D:\Magazine.BAK' 	
WITH  FILE = 1,  NORECOVERY

---------------------------------------------------

Create type name1 from int null
Create table table1 (id int not null, adznaka1 name1)
Create rule rule1 as @name1 > 0 and @name1 <10
EXEC sp_bindrule 'rule1','table1.adznaka1'

Create type name2 from varchar(50)
Create table table2 (id int not null, adznaka2 name2)
Create rule rule2 as @name2 = 'Мяч'
EXEC sp_bindrule 'rule2','table2.adznaka2'

Create type name3 from DateTime
Create table table3 (id int not null, adznaka3 name3)
Create rule rule3 as @name3 = '2009.02.03'
EXEC sp_bindrule 'rule3','table3.adznaka3'
