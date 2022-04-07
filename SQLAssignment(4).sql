--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name*/
select * from product

select sum(unitprice) as total,companyname from product 
group by companyname 
having productsupplied='exoticliqid' and unitprice<50 /*we will get error for this because in our table there is no companyname and productsupplied*/

--Display the employee details whose joined at first*/

alter table employee add DOJ datetime

select * from employee

select * from employee where DOJ<('2022-05-30') order by DOJ

--Display the employee details whose joined at recently*/

select * from employee where DOJ<('2022-05-30') order by DOJ

select * from employee group by DOJ having max (DOJ)

--Write a query to get most expense and least expensive Product list (name and unit price).*/

select productname,max(unitprice) as mostexpense,min(unitprice) as leastexpense from product group by productname,unitprice having count(unitprice)<4000

--.Display the list of products that are out of stock*/

select * from product where outofstock='yes'

--Display the list of products whose unitinstock is less than unitonorder*/

select * from product where instock<unitsorder

--Display list of categories and suppliers who supply products within those categories

select  unitprice as categories,package as suppliers from product group by unitprice,package having count(unitprice)<=2001

--Write  query that determines the customer who has placed the maximum number of orders

SELECT * FROM customer
where id=1
(SELECT id FROM [order]
GROUP BY id
HAVING MAX(id)>0);

--Display the customerid whose name has substring ‘RA’

SELECT SUBSTRING (empname,1, 6) as firstname from employee where empname like '%RA_%';







