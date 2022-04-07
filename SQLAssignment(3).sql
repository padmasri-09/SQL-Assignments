-- write a query to display the orders placed by customer with phone number 7878907654*/

select * from customer where phone=7878907654

--  fetching all the products which are available under Category ‘Seafood'*/
select * from product
alter table product add category nvarchar(40)

update product set category='Seafood' where id=1

update product set category='Seafood' where id=2

select * from product where category='Seafood'

-- Display the orders placed by customers not in London*/

select * from customer where city not in('london')

-- selects all the order which are placed for the product Chai.*/
update product set productname='chai' where id=5

select * from product where productname='chai'

--Write a query to display the name , department name and rating  of any given employee*/
alter table employee add deptname nvarchar(40)

alter table employee add rating int

select * from employee

select empname,deptname,rating from employee where empid=106












