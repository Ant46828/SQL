create table BaiDoXe (
	Ten_bai nvarchar(50),
	Ma_bai int primary key identity(1,1),
	Dia_chi nvarchar(200)
)
go

create table ThongTinGui (
	id int primary key identity(1,1),
	Ten_xe nvarchar(50),
	Bien_so_xe nvarchar(20),
	Ma_bai int foreign key (Ma_bai) references BaiDoXe(Ma_bai),
	id_chu int foreign key (id_chu) references ChuSoHuu(id_chu), 
)
go

create table ChuSoHuu (
	id_chu int primary key identity(1,1),
	Ten_chu nvarchar(50),
	So_CMTND nvarchar(20),
	Dia_chi nvarchar(200)
)
go