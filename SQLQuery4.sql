create table sinhvien (
	rollno int primary key,
	fullname nvarchar(100),
	age int,
	address nvarchar(200),
	email nvarchar(100),
	phoneNumber nvarchar(50),
	gender nvarchar(10)
)
go

create table monhoc(
	Mamonhoc int primary key identity(1,1),
	Tenmonhoc nvarchar(50)
)
go

create table diem(
	Diem float,
	rollno nvarchar(50),
	Mamonhoc nvarchar(50),
	primary key (rollno,Mamonhoc)
)
create table lophoc(
	Malophoc int primary key identity(1,1),
	Tenlophoc nvarchar(100)
)
go

create table phonghoc(
	Tenphonghoc nvarchar(100),
	Maphonghoc int primary key identity(1,1),
	Sobanhoc int,
	Soghehoc int,
	Diachi nvarchar(100)
)
go

insert into sinhvien values
	('Nguyen Van A',20,'12 street ha noi','a@gmail.com',0921063488,'nam'),
	('Nguyen Van B',20,'12 street ha noi','b@gmail.com',0921063488,'nam'),
	('Nguyen Van C',20,'12 street ha noi','c@gmail.com',0921063488,'nam'),
	('Nguyen Van D',20,'12 street ha noi','d@gmail.com',0921063488,'nam'),
	('Nguyen Van E',20,'12 street ha noi','e@gmail.com',0921063488,'nam')
go

insert into monhoc values
	('CNTT'),
	('QTDL'),
	('KTCT'),
	('QTKD'),
	('NNA')
go

insert into diem values
	(10,1),
	(7,1),
	(8,2),
	(9,3),
	(5,4)
go

insert into lophoc values
	('C2010L'),
	('C2011L'),
	('C2012L'),
	('C2013L'),
	('C2014L')
go

insert into phonghoc values
	('class1',7,20,'tang 5'),
	('class1',2,3,'tang 5'),
	('class1',10,30,'tang 5'),
	('class1',5,20,'tang 5'),
	('class1',6,18,'tang 5')
go

select * from sinhvien
go

select * from monhoc
go

select * from diem
go

select * from lophoc
go

select * from phonghoc
go

select * from phonghoc
where Sobanhoc > 5 and Soghehoc > 5
go

select * from phonghoc
where (Sobanhoc between 5 and 20) and (Soghehoc between 5 and 20)
go

drop table sinhvien
go
drop table monhoc
go
drop table diem
go
drop table lophoc
go
drop table phonghoc