Use Master
Create Database Supplier
SP_helpdb Supplier
Use Supplier
create table SupplierMaster
(
	SID		int		Not Null Primary Key,
	NAME	Varchar(40)	NOT NULL,
	CITY	Char(6)		NOT NULL,
	GRADE	Tinyint		NOT NULL check (GRADE >0 and GRADE<=4),
)
go

Drop Table SupplierMaster

Select * from SupplierMaster

create table PartMaster
(
	PID			TinyInt	 Not Null Primary Key,
	NAME		Varchar(40)	NOT NULL,
	PRICE		Money		NOT NULL,
	CATEGORY	Tinyint		NOT NULL, 
	QTYONHAND	Integer		NULL,

)
go

Drop table PartMaster

Select * from SupplierMaster

insert into SupplierMaster values (1, 'John', 'Hyd', 4)
insert into SupplierMaster values (2, 'Paul', 'Pune', 2)
insert into SupplierMaster values (3, 'Nimi', 'CICI', 3)
insert into SupplierMaster values (4, 'Kish', 'London', 1)
insert into SupplierMaster values (5, 'Zubi', 'DVK', 3)
insert into SupplierMaster values (6, 'Ram', 'NLG', 4)
insert into SupplierMaster values (7, 'Sam', 'Pok', 3)
insert into SupplierMaster values (8, 'Jam', 'Gutta', 2)
insert into SupplierMaster values (9, 'Pam', 'Kiwi', 1)
insert into SupplierMaster values (10, 'Lam', 'Kill', 3)


insert into SupplierMaster values (11, 'Alice', 'Mumbai', 2)
insert into SupplierMaster values (12, 'Bob', 'Delhi', 3)
insert into SupplierMaster values (13, 'Charlie', 'Tokyo', 4)
insert into SupplierMaster values (14, 'David', 'Paris', 1)
insert into SupplierMaster values (15, 'Eve', 'Berlin', 3)
insert into SupplierMaster values (16, 'Frank', 'Rome', 2)
insert into SupplierMaster values (17, 'Grace', 'Oslo', 1)
insert into SupplierMaster values (18, 'Heidi', 'Madrid', 4)
insert into SupplierMaster values (19, 'Ivan', 'Sydney', 3)
insert into SupplierMaster values (20, 'Judy', 'Toronto', 2)
insert into SupplierMaster values (21, 'Mallory', 'Dubai', 1)
insert into SupplierMaster values (22, 'Oscar', 'Beijing', 3)
insert into SupplierMaster values (23, 'Peggy', 'Moscow', 2)
insert into SupplierMaster values (24, 'Sybil', 'Seoul', 4)
insert into SupplierMaster values (25, 'Trent', 'Vienna', 1)
insert into SupplierMaster values (26, 'Victor', 'Zurich', 3)
insert into SupplierMaster values (27, 'Walter', 'Prague', 2)
insert into SupplierMaster values (28, 'Xander', 'Athens', 4)
insert into SupplierMaster values (29, 'Yolanda', 'Helsinki', 1)
insert into SupplierMaster values (30, 'Zane', 'Warsaw', 3)
Select * from PartMaster

insert into PartMaster values (1,'Seed',290, 1, 100)
insert into PartMaster values (2,'Tyre',300, 2, 200)
insert into PartMaster values (3,'Paint',240, 3, 300)
insert into PartMaster values (4,'Rods',400, 4, 400)
insert into PartMaster values (5,'Steel',456, 5, 500)
insert into PartMaster values (6,'Leather',456, 6, 600)
insert into PartMaster values (7,'Screws',560, 7, 700)

insert into PartMaster values (8, 'Bolts', 150, 1, 800)
insert into PartMaster values (9, 'Nuts', 100, 2, 900)
insert into PartMaster values (10, 'Wheels', 200, 3, 1000)
insert into PartMaster values (11, 'Brakes', 350, 4, 1100)
insert into PartMaster values (12, 'Chains', 500, 5, 1200)
insert into PartMaster values (13, 'Bearings', 600, 6, 1300)
insert into PartMaster values (14, 'Pistons', 700, 7, 1400)
insert into PartMaster values (15, 'Gears', 800, 1, 1500)
insert into PartMaster values (16, 'Axles', 900, 2, 1600)
insert into PartMaster values (17, 'Frames', 1000, 3, 1700)
insert into PartMaster values (18, 'Handles', 1100, 4, 1800)
insert into PartMaster values (19, 'Mirrors', 1200, 5, 1900)
insert into PartMaster values (20, 'Windows', 1300, 6, 2000)
insert into PartMaster values (21, 'Seats', 1400, 7, 2100)
insert into PartMaster values (22, 'Lights', 1500, 1, 2200)
insert into PartMaster values (23, 'Horn', 1600, 2, 2300)
insert into PartMaster values (24, 'Dashboard', 1700, 3, 2400)
insert into PartMaster values (25, 'Steering', 1800, 4, 2500)
insert into PartMaster values (26, 'Radiator', 1900, 5, 2600)
insert into PartMaster values (27, 'Battery', 2000, 6, 2700)
insert into PartMaster values (28, 'Exhaust', 2100, 7, 2800)
insert into PartMaster values (29, 'Fuel Tank', 2200, 1, 2900)
insert into PartMaster values (30, 'Air Filter', 2300, 2, 3000)

Create table SupplyDetails
(

	PID				TinyInt		Not Null Foreign Key references PartMaster(PID),
	SID				int			Not Null Foreign Key references SupplierMaster(SID),
	DATEOFSUPPLY	DateTime	NOT NULL,
	CITY			Varchar(40)	NOT NULL,
	QTYSUPPLIED		int			NOT NULL,

)
go

Select * from SupplyDetails

insert into SupplyDetails values (1,1,'1997/09/09','Hyd', 100)
insert into SupplyDetails values (2,2,'1997/08/09','Pune', 345)
insert into SupplyDetails values (3,3,'1997/06/09','DVK', 567)
insert into SupplyDetails values (4,4,'1997/09/07','NLG', 789)
insert into SupplyDetails values (5,5,'1997/09/06','Kiwi', 678)
insert into SupplyDetails values (6,6,'1996/09/05','Kill', 656)
insert into SupplyDetails values (7,7,'1996/07/09','Bill', 566)

insert into SupplyDetails values (8, 8, '1998/01/15', 'Mumbai', 800)
insert into SupplyDetails values (9, 9, '1998/02/20', 'Delhi', 900)
insert into SupplyDetails values (10, 10, '1998/03/25', 'Tokyo', 1000)
insert into SupplyDetails values (11, 11, '1998/04/30', 'Paris', 1100)
insert into SupplyDetails values (12, 12, '1998/05/05', 'Berlin', 1200)
insert into SupplyDetails values (13, 13, '1998/06/10', 'Rome', 1300)
insert into SupplyDetails values (14, 14, '1998/07/15', 'Oslo', 1400)
insert into SupplyDetails values (15, 15, '1998/08/20', 'Madrid', 1500)
insert into SupplyDetails values (16, 16, '1998/09/25', 'Sydney', 1600)
insert into SupplyDetails values (17, 17, '1998/10/30', 'Toronto', 1700)
insert into SupplyDetails values (18, 18, '1998/11/05', 'Dubai', 1800)
insert into SupplyDetails values (19, 19, '1998/12/10', 'Beijing', 1900)
insert into SupplyDetails values (20, 20, '1999/01/15', 'Moscow', 2000)
insert into SupplyDetails values (21, 21, '1999/02/20', 'Seoul', 2100)
insert into SupplyDetails values (22, 22, '1999/03/25', 'Vienna', 2200)
insert into SupplyDetails values (23, 23, '1999/04/30', 'Zurich', 2300)
insert into SupplyDetails values (24, 24, '1999/05/05', 'Prague', 2400)
insert into SupplyDetails values (25, 25, '1999/06/10', 'Athens', 2500)
insert into SupplyDetails values (26, 26, '1999/07/15', 'Helsinki', 2600)
insert into SupplyDetails values (27, 27, '1999/08/20', 'Warsaw', 2700)
insert into SupplyDetails values (28, 28, '1999/09/25', 'Hyd', 2800)
insert into SupplyDetails values (29, 29, '1999/10/30', 'Pune', 2900)
insert into SupplyDetails values (30, 30, '1999/11/05', 'DVK', 3000)

--1.List the month-wise average supply of parts supplied for all parts. 
--Provide the information only if the average is higher than 100.

	select * from SupplyDetails
	select * from PartMaster
	select * from SupplierMaster

	select AVG(QTYSUPPLIED), DATENAME(MM, DATEOFSUPPLY) as ByMonth
	from SupplyDetails
	group by DATENAME(MM, DATEOFSUPPLY)
	having AVG(QTYSUPPLIED) >100

-- 2.	List the names of the Suppliers who do not supply part with PID ‘1’.
	select * from SupplyDetails
	select * from PartMaster
	select * from SupplierMaster

	select SupplierMaster.NAME, PartMaster.PID
	from SupplyDetails join  SupplierMaster
	on SupplyDetails.SID = SupplierMaster.SID 
	join PartMaster on
	PartMaster.PID = SupplyDetails.PID
	where PartMaster.PID != (1)
	group  by SupplierMaster.NAME, PartMaster.PID

--3.List the part id, name, price and difference between price and average 
--price of all parts.
select * from SupplyDetails
select * from PartMaster
select * from SupplierMaster

	SELECT PID, 
       NAME, 
       PRICE, 
       (SELECT AVG(PRICE) FROM PartMaster) AS AvgPrice, 
       PRICE - (SELECT AVG(PRICE) FROM PartMaster) AS DifferenceAvgandPrice
FROM PartMaster;


--4.	List the names of the suppliers who have supplied at least one part where the 
--quantity supplied is lower than 100.
select * from SupplyDetails
select * from PartMaster
select * from SupplierMaster

	Select supplierMaster.Name, QTYSUPPLIed
	from SupplyDetails join  SupplierMaster
	on SupplyDetails.SID = SupplierMaster.SID 
	join PartMaster on
	PartMaster.PID = SupplyDetails.PID
	where QTYSUPPLIed > 200

--5.	List the names of the suppliers who live in a city where no supply has been made.

	Select supplierMaster.Name, QTYSUPPLIed
	from SupplyDetails join  SupplierMaster
	on SupplyDetails.SID = SupplierMaster.SID 
	join PartMaster on
	PartMaster.PID = SupplyDetails.PID
	where QTYSUPPLIed = 0
	

--6.	List the names of the parts which have not been supplied in the month of May 2019.
	select Name
	from PartMaster where PID not in
		(		select PID from SupplyDetails
				where DATEPART(MM, Dateofsupply) = 5
				And
				DATEPART(YY, Dateofsupply) = 2019
		)
--7.List name and Price category for all parts. Price category has to be displayed as 
--“Cheap” if price is less than 100, “Medium” if the price is greater than or equal to 100 
--and less than 500, and “Costly” if the price is greater than or equal to 500.
		SELECT NAME, 
			   PRICE,
			   CASE 
				   WHEN PRICE < 100 THEN 'Cheap'
				   WHEN PRICE >= 100 AND PRICE < 500 THEN 'Medium'
				   WHEN PRICE >= 500 THEN 'Costly'
			   END AS PriceCategory
		FROM PartMaster;

--8.	List the most recent supply details with information on Product name, price and
--no. of days elapsed since the latest supply.
SELECT 
    PartMaster.NAME AS ProductName, 
    PartMaster.PRICE, 
    DATEDIFF(DAY, SupplyDetails.DATEOFSUPPLY, GETDATE()) AS DaysElapsed
FROM SupplyDetails
JOIN PartMaster ON SupplyDetails.PID = PartMaster.PID
WHERE SupplyDetails.DATEOFSUPPLY = (SELECT MAX(DATEOFSUPPLY) FROM SupplyDetails)

--9.	List the names of the suppliers who have supplied exactly 100 units of part P1.

select Name from
SupplyDetails join
PartMaster   ON PartMaster.PID = SupplyDetails.PID
where QTYSUPPLIED = 100

select * from SupplyDetails
select * from PartMaster
select * from SupplierMaster

--10.	List the names of the parts supplied by more than one supplier.
	SELECT PartMaster.NAME
	FROM SupplyDetails
	JOIN PartMaster ON SupplyDetails.PID = PartMaster.PID
	GROUP BY PartMaster.NAME
	HAVING COUNT(DISTINCT SupplyDetails.SID) > 1;

--11.	List the names of the parts whose price is less than the average price of parts.
	Select name , price
	from PartMaster where price<

	(
	select AVG(price) from PartMaster
	)

-- 12.	List the category-wise number of parts; exclude those where the sum is > 100 and 
--less than 500. List in the descending order of sum.

	SELECT CATEGORY, COUNT(*) AS NumberOfParts
	FROM PartMaster
	GROUP BY CATEGORY
	HAVING SUM(QTYONHAND) <= 100 OR SUM(QTYONHAND) >= 500
	ORDER BY SUM(QTYONHAND) DESC

--13.List the supplier name, part name and supplied quantity for all 
--supplies made between 1st and 15th of June 2020.
SELECT SupplierMaster.NAME AS SupplierName, 
       PartMaster.NAME AS PartName, 
       SupplyDetails.QTYSUPPLIED
FROM SupplyDetails
JOIN SupplierMaster ON SupplyDetails.SID = SupplierMaster.SID
JOIN PartMaster ON SupplyDetails.PID = PartMaster.PID
WHERE SupplyDetails.DATEOFSUPPLY BETWEEN '2020-06-01' AND '2020-06-15'

--14.	For all products supplied by Supplier S1, List the part name and total quantity.
SELECT PartMaster.NAME AS PartName, SUM(SupplyDetails.QTYSUPPLIED) AS TotalQuantity
FROM SupplyDetails
JOIN PartMaster ON SupplyDetails.PID = PartMaster.PID
JOIN SupplierMaster ON SupplyDetails.SID = SupplierMaster.SID
WHERE SupplierMaster.NAME = 'John'
GROUP BY PartMaster.NAME

--15.	For the part with the minimum price, List the latest supply details
--(Supplier Name, Part id, Date of supply, Quantity Supplied).



