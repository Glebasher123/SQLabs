CREATE DATABASE Ozera_Var4

use Ozera_Var4

Create table ����
(
[ID �����] int not null identity PRIMARY KEY,
[�������� �����] varchar(20) not null default '�� �������',
����� varchar(50) not null default '�� �������',
������� int not null default 0,
[���������� �������] float not null default 0,
[������� �������] float not null default 0
)

insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('������', '����������', 80 , 24.8, 9.0)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('���������', '��������������', 53 , 7.5, 2.0)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('�������', '������������', 44 , 4.0, 1.5)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('���������', '����������', 37 , 11.5, 6.6)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('������', '�����������', 17 , 2.5, 1.3)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('������', '����������', 15 , 24.6, 6.3)
insert into ���� ([�������� �����], �����, �������, [���������� �������], [������� �������]) values ('���������', '�����������', 13 , 23.0, 7.3)

Select * FROM ���� 

SELECT[�������� �����], �����, [���������� �������] FROM ���� WHERE[���������� �������] = (SELECT  MAX([���������� �������]) FROM ����)

SELECT [�������� �����], �����, ������� FROM ���� WHERE ����� = '����������'

SELECT [�������� �����], �������, [������� �������] FROM ���� WHERE ������� BETWEEN 10 AND 20