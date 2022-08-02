--- 
-- Excersice- 1
-- 
create database Hotel_Management_system;

create table Customers
(Cust_ID int primary key,
 Cust_Name VARCHAR(25),
Cust_city VARCHAR(10),
Cust_RoomNo int,
CheckIn_time datetime);

insert customers values (1,'Parth', 'Vadodara', 100, '2010-10-5 08:08:08');
insert customers values (2,'Maitri', 'Aanand', 200, '2011-11-1 09:09:08');
insert customers values (3,'Mansi', 'Petlad', 300, '2012-12-2 10:08:08');
insert customers values (4,'Sagar', 'Raypur', 400, '2013-09-3 11:08:08');
insert customers values (5,'Pratik', 'Khambhat', 500, '2014-8-4 12:08:08');

select * from customers;

--- 
-- Excersice- 2
-- 
-- Download the Assignment database and selected that in schemas


--- 
-- Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.
---
select distinct city from customers;
select count(distinct city) from customers;

--- 
-- Write a SQL query to get the least number of quantities and the highest number of quantities bought by the user consider the Order Details Table.
-- 
select min(Quantity) as least_Quantity, max(Quantity) as highest_quantity from order_details;

--
-- Print the total and an average number of quantities ordered by users, consider the Order Details Table.
-- 
select sum(Quantity) as Total_Quantity, avg(Quantity) as Avg_Quantity from order_details;

--
-- Print name of the product which is present at the 5 th position till the 15 th position from Products table, use LIMIT keyword.
--
SELECT ProductName from products limit 4,11;

--
-- Write a SQL query for all the details of the supplier whose name consists of “ A” at the second position from the Suppliers table.
--
SELECT SupplierName from suppliers where SupplierName like '_A%';

--
-- Print the details of the customer who doesn’ t stay in the USA and Canada from the Customers table.
--

select * from customers where Country not in ('canada','usa');

--
-- Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order from the Order Details table.
--
select o.OrderID, o.CustomerID, o.EmployeeID, o.OrderDate, o.ShipperID from orders as o
inner join order_details as od on o.OrderDate between '2020-01-01' and '2021-12-31' order by od.OrderID desc;

--
-- Write a query to show the distinct city and their count from the Customers table.
--
select city, count(city) as count from customers group by city;

--
-- Write a query to fetch details of all employees excluding the employees with first names, “ Sanjay” and “ Sonia” from the Employees table.
--
select * from employees where FirstName not in ('Sanjay','Sonia');

--
-- Duplicate a table as similar to the Suppliers table and name it as Supplier Detail. 
--
Create table SupplierDetail AS select * from Suppliers;

--
-- Delete customer details whose country is Venezuela and print the rest of the Customer table
--
delete from customers WHERE Country = 'Venezuela';
select * from customers;