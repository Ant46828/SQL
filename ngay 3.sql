create table product (
	id int identity(1,1) primary key,
	title nvarchar(100),
	thumbnail nvarchar(100),
	context text
)
go

create table danhmuc(
	id int identity(1,1) primary key,
	name nvarchar(100)
)
go

create table sanpham(
	price int,
	num int,
	created_at datetime,
	updated_at datetime,
	id_cat int
)
go
