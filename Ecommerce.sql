create database Ecommerce
use Ecommerce
create table Categories(
Category_id int primary key,
Category_Name varchar(50) not null,
Description_ text)
----
create table Vendors(
Vendor_id smallint primary key,
Vendor_name varchar(50) not null,
Contact_number int,
Address_ text)
----
create table Products(
Product_id int primary key,
Product_name varchar(50) not null,
Description_ text,
Price smallint,
StockQuantity smallint,
Category_id int foreign key references Categories (Category_id)
)
----
create table Customers(
Customer_id int primary key,
Customer_Name varchar(50) not null,
Registration_Date date,
Phone char(11),
DateOfBirth datetime,
Address_ text,
Vendor_id smallint foreign key references Vendors(Vendor_id)
)
----
create table Orders(
Order_id int primary key,
Order_date date,
Status_ varchar(50),
Shipping_Date date,
TotalAmount int,
Customer_id int foreign key references Customers(Customer_id),
Product_id int foreign key references Products(Product_id),
Vendor_id smallint foreign key references Vendors(Vendor_id)
)
----
Create table Order_lifecycle(
Lifecycle_id int primary key not null,
Product_id int foreign key references Products(Product_id),
Customer_id int foreign key references Customers(Customer_id),
Vendor_id smallint foreign key references Vendors(Vendor_id),
Order_id int foreign key references Orders(Order_id))