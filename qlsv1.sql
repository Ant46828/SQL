create table sinhvien(
	rollno int primary key,
	fullname nvarchar(100),
	age int,
	address nvarchar(100),
	email nvarchar(100),
	phoneNumber nvarchar(100),
	gender nvarchar (100)
)
go

create table monhoc(
	mamonhoc nvarchar(100),
	tenmonhoc nvarchar(100)
)
go

create table diem(
	diem nvarchar(100),
	rollno int,
	mamonhoc nvarchar(100)
)

alter table diem
add foreign key (rollno) references sinhvien(rollno);
go

alter table diem
add foreign key (mamonhoc) references monhoc(mamonhoc);
go

create table lophoc(
	malophoc int primary key,
	tenlophoc nvarchar(100)
)
go

create table quanly(
	malophoc int foreign key references lophoc(malophoc),
	rollno int foreign key references sinhvien(rollno),
	primary key(malophoc,rollno)
)
go

create table phonghoc (
	tenphonghoc nvarchar(100),
	maphonghoc int primary key,
	sobanhoc int,
	soghehoc int,
	diachilophoc nvarchar(100)
)
go

create table gioday (
	mamonhoc int,
	malophoc int,
	giobatdau nvarchar(100),
	giotralop nvarchar(100),
	maphonghoc int foreign key references phonghoc(maphonghoc)
)