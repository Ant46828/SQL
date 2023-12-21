create table Customer (
	Cust_No int,
	Cust_Name nvarchar(100),
	Phone_No nvarchar(100)
)
go

create table Items (
	Item_No nvarchar(100),
	Description nvarchar(100),
	Price int
)
go

create table Order_Details (
	Ord_No int,
	Item_No nvarchar(100),
	Qty int
)
go

create table Order_August (
	Ord_No int,
	Ord_Date Datetime,
	Cust_No int
)
go

insert into Customer(Cust_No,Cust_Name,Phone_No)
values
(1,'David Gordon','0231-5466356'),
(2,'Prince Fernandes','0221-5762382'),
(3,'Charles Yale','0321-8734723'),
(4,'Ryan Ford','0241-2343444'),
(5,'Bruce Smith','0241-8472198')
go

insert into Items(Item_No,Description,Price)
values
('HW1','Power Supply',4000),
('HW2','Keyboard',2000),
('HW3','Mouse',800),
('SW1','Office Suite',15000)
go

insert into Order_Details(Ord_No,Item_No,Qty)
values
(101,'HW3',50),
(101,'SW1',150),
(102,'HW2',10),
(103,'HW3',50),
(104,'HW2',25),
(104,'HW3',100),
(105,'SW1',100)
go

insert into Order_August(Ord_No,Ord_Date,Cust_No)
values
(101,'2012-08-02',1),
(102,'2012-08-11',2),
(103,'2012-08-21',3),
(104,'2012-08-28',4),
(105,'2012-08-30',5)
go