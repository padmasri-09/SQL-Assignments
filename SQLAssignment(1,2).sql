

insert into customer values(1,'Sri','lakshmi','vijayawada','India',9787906412);

insert into customer values(2,'SUPRIYA','ALJANGI','VISAKHAPATNAM','India',9878675432);

insert into customer values(3,'Divya','Chokkakula','Guntur','India',9445678990);

insert into customer values(4,'Ravali','Kolati','Tuni','India',8987654678);

insert into customer values(5,'Venkatesh','Telu','Rajmaundry','India',6789065431);

insert into customer values(6,'Phani','Srinivas','Hyderabad','India',7878907654);

insert into customer values(7,'Loki','Lokeshwari','Kadapa','India',7678909645);

insert into customer values(8,'Aswini','Nakkaraju','Nellore','India',8987654321);

insert into customer values(9,'Sai','lakshmi','Amaravathi','India',6785432109);

insert into customer values(10,'Roja','Ratnam','Anakpalli','India',8765432190);
update customer set country='America' where ID=9;

select * from customer;

insert into [order] values (1,'2022-03-29 02:32:42',6869,1,9090.57);

insert into [order] values (2,'2022-04-09 03:20:52',7869,2,1234.58);

insert into [order] values (3,'2022-05-30 04:35:34',1259,3,7876.55);

insert into [order] values (4,'2022-08-31 08:45:47',8976,4,7654.34);

insert into [order] values (5,'2022-07-21 06:43:12',6543,5,7643.12);

insert into [order] values (6,'2022-09-12 12:15:00',5432,6,6543.67);

insert into [order] values (7,'2022-06-09 14:23:22',2135,7,7865.70);

insert into [order] values (8,'2022-03-29 15:23:43',2345,8,3456.67);

insert into [order] values (9,'2022-09-14 16:30:35',2767,9,9876.45);

insert into [order] values (10,'2022-05-19 13:15:00',2789,10,3896.07);

select * from [order]
select * from orderitem	

insert into orderitem values (1,1,3,56.76,30);

insert into orderitem values (2,3,4,65.76,76);

insert into orderitem values (3,2,5,78.60,69);

insert into orderitem values (4,6,8,56.76,90);

insert into orderitem values (5,5,7,55.89,67);

insert into orderitem values (6,9,5,78.06,78);

insert into orderitem values (7,10,4,89.75,65);

insert into orderitem values (8,7,9,64.96,86);

insert into orderitem values (9,4,6,98.79,87);

insert into orderitem values (10,8,10,95.96,56);

alter table product add IsDiscontinueBit int;

insert into product values (1,'AC',4000.96,1,1);

update product set package='Foil' where productname='AC';

select * from product

insert into product values (2,'Chairs',2000.76,'Bag',0);

insert into product values (3,'Fridge',35000.96,'AirBag',0);

insert into product values (4,'Washingmachine',55000.95,'Liqid',1);

insert into product values (5,'Mobile',65000.56,'Charger',0);

insert into product values (6,'TV',40000.86,'Pendrive',1);

insert into product values (7,'Tablemate',4500.80,'polybags',1);

insert into product values (8,'Bluetooth',5000.76,'Paperbag',0);

insert into product values (9,'Smartwatch',4000.96,'charger',1);

insert into product values (10,'Laptop',40000.16,'Mouse',0);


drop index indexcustomername on customer
--In Customer table FirstName Attribute should not accept null value

alter table customer alter column FirstName nvarchar(40) NOT NULL;

--In Order table OrderDate should not accept null value
 
alter table [order] alter column OrderDate datetime NOT NULL

drop index IndexOrderOrderDate on [order]
--Display all customer details

select * from customer
--write a query to display Country whose name starts with A or I

select country from customer where country like 'A%' or country like 'I%' 

--write a query to display whose name of customer whose third character is i

select FirstName from customer where FirstName like '__I%'

--Display the details from Customer table who is from country Germany

update customer set country='Germany' where ID=5;

select * from customer where country='Germany'

--Display the  full name of the employee  

select concat(C.FirstName,' ',C.LastName) as FullName from customer C 

--Display the  customer details  who has Fax number

alter table customer add FaxNumber int;

update customer set FaxNumber=1555678 where id=6;

update customer set FaxNumber=1990876 where id=2;

SELECT * FROM customer WHERE FaxNumber LIKE '%[0-9]%';

--display the customer details whose name holds second letter as a

select concat (C.FirstName,' ',C.LastName) as FullName from customer C where C.FirstName like '_a%' 

--select order Details where unit price is greater than 10 and less than 20

select * from [order] O right join orderitem OI on OI.id=O.id where unitprice between 2000 and 4000;

select * from orderitem

update orderitem set unitprice=2000 where id=5

update orderitem set unitprice=2000 where id=7

update orderitem set unitprice=4000 where id=1

update orderitem set unitprice=4000 where id=2

update orderitem set unitprice=2500 where id=3

update orderitem set unitprice=3000 where id=4

update orderitem set unitprice=4400 where id=6

update orderitem set unitprice=4400 where id=8

update orderitem set unitprice=2400 where id=9

update orderitem set unitprice=1000 where id=10

-- Display order detials which contains orderdate and arrange the order by date */

select * from [order] order by OrderDate

-- Print the orders shipped by ship name 'La corne'd abondance' between 2 dates (choose dates of your choice) */
alter table [order] add shipped nvarchar(40);

update [order] set shipped='La cornedabondance' where id=1
update [order] set shipped='La cornedabondance' where id=3
update [order] set shipped='La cornedabondance' where id=8




select (shipped) as ShipName from [order]  where OrderDate between '2022/03/29' and '2022/05/30'  order by OrderDate

-- Print the products supplied by 'Exotic Liquids'*/

update product set package='Exotic Liquids' where id=5

select * from product where package='Exotic Liquids' 

--Print the average quantity ordered for every product */

select avg(quantity) as qauntity from orderitem 

-- Print all the shipping company name and the ship names if they are operational */

--  Print all Employees with Manager Name*/
create table employee
(
empid int NOT NULL primary key,
empname nvarchar(40),
managername nvarchar(40),
empemail nvarchar(40),
);

insert into employee values(101,'Harsha','Ravi','harsha@gamil.com');

insert into employee values(102,'Venkatesh','Rekha','venkatesh@gamil.com');

insert into employee values(103,'Ravali','Indu','ravali@gamil.com');

insert into employee values(104,'Supriya','Siva','supriya@gamil.com');

insert into employee values(105,'Mouli','Harika','mouli@gamil.com');

insert into employee values(106,'Sowmya','srinivas','sowmya@gamil.com');

select * from employee

select empname,managername from employee

-- Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount*/

select * from product

select distinct productname,package as CategoryName,unitprice as price from product
where unitprice < (select avg(unitprice) from product)
order by unitprice























































































