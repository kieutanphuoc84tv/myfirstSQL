Create Database QLSV
Use QLSV


Create table CT_Daotao
(
MaCTDT varchar(10) NOT NULL ,
TenCTDT nvarchar(50)
)

Create table Khoahoc
(
MaKH varchar(10) NOT NULL,
MaCTDT varchar(10) Not Null,
TenKH nvarchar(50)
)

Create table Lop
(
Malop varchar(10) NOT NULL,
MaKH varchar(10)not null,
TenLop nvarchar(50),
)


Create table MonHoc
(
MaMH varchar (10)NOT NULL,
TenMH nvarchar (50)
)

Create table SinhVien
(
MaSV varchar(10) NOT NULL,
Hoten nvarchar(50),
Gioitinh nvarchar(10),
NgaySinh datetime,
Noisinh nvarchar (50),
MaLop varchar (10) NOT NULL,
)

Create table KetQuaThi
(
MaSV varchar (10) NOT NULL,
MaMH varchar (10)NOT NULL,
LanThi int NOT NULL,
DiemThi float
)
alter table Khoahoc alter Column MaCTDT varchar(10)

Select *
From CT_Daotao
Select *
From Khoahoc
Select *
From Lop
Select *
From MonHoc
Select *
From SinhVien
Select *
From KetQuaThi

alter table CT_Daotao add constraint pk_CTDT primary key ( MaCTDT )

alter table Khoahoc add constraint pk_Khoahoc primary key ( MaKH )
alter table Khoahoc add constraint fk_Khoahoc_MaCTDT foreign key ( MaCTDT ) references CT_DaoTao (MaCTDT)

alter table Lop add constraint pk_Lop primary key(Malop)
alter table Lop add constraint fk_Lop_MaKH foreign key ( MaKH ) references Khoahoc (MaKH)

alter table MonHoc add constraint pk_MonHoc primary key ( MaMH )

alter table SinhVien add constraint pk_SinhVien primary key ( MaSV )
alter table SinhVien add constraint fk_SinhVien_Malop foreign key ( Malop ) references Lop (Malop)

alter table KetQuaThi add constraint pk_KetQuaThi primary key ( MaSV, MaMH, LanThi )
alter table KetQuaThi add constraint fk_KetQuaThi_MaSV foreign key ( MaSV ) references SinhVien (MaSV)
alter table KetQuaThi add constraint fk_KetQuaThi_MaMH foreign key ( MaMH ) references MonHoc (MaMH)


SP_pkeys CT_DaoTao
SP_pkeys Khoahoc
SP_pkeys Lop
SP_pkeys MonHoc
SP_pkeys SinhVien
SP_PKEYS KetQuaThi





