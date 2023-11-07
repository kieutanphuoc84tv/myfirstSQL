Create Database CT_DAOTAO
Use CT_DAOTAO


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


Insert INTO CT_DaoTao VALUES ('1',N'CỬ NHÂN')
Insert INTO CT_Daotao VALUES ('2','Cao Đẳng')
Insert INTO CT_Daotao VALUES ('3','Trung Cấp')

SELECT * 
FROM Khoahoc

Insert INTO Khoahoc VALUES ('1','1','Khóa 1 năm 2005')
Insert INTO Khoahoc Values ('2','1','Khóa 2 năm 2006')
Insert INTO Khoahoc values ('3','2','Khóa 1 năm 2007')
insert INTO Khoahoc values ('4','3','Khóa 1 năm 2008')
insert INTO Khoahoc values ('5','2','Khóa 2 năm 2008')


select*
from Lop
insert INTO Lop values ('1','1','K1_1')
insert INTO Lop values	('2','1','K1_1')
insert INTO Lop values	('3','1','K1_1')
insert INTO Lop values	('4','2','K1_2')
select*
from MonHoc

Insert INTO   MonHoc VALUES ('TH101','Tin học đại cương')
Insert INTO  MonHoc VALUES ('TH110','Toán rời rạc')
Insert INTO  MonHoc VALUES ('TH102','Cơ sở dữ liệu')

SET DATEFORMAT DAY

SELECT * 
FROM CT_DAOTAO
SET DATEFORMAT DMY 
Insert INTO  SinhVien VALUES ('K116','Đinh Nguyễn Vân Anh',N'Nữ','18/12/1985','Bình Thuận','1')
Insert INTO  SinhVien VALUES ('K117','Trần Hoàng Anh','Nữ','4/8/1986','Bình Dương','1')
Insert INTO  SinhVien VALUES ('K118','Bùi Thanh Bình','Nam','23/10/1985','Đồng Nai','1')
Insert INTO  SinhVien VALUES ('K119','Phạm Nhật Tân','Nam','15/1/1985','Bình Tháp','2')
Insert INTO  SinhVien VALUES ('K120','Định Thiện Hòa','Nam','8/12/1985','Vĩnh Long','3')
Insert INTO  SinhVien VALUES ('K121','Nguyễn Anh Khoa','Nam','14/11/1986','Vũng Tàu','3')
Insert INTO  SinhVien VALUES ('K122','Trương Mộng Thúy','Nữ','12/5/1986','Cần Thơ','2')
Insert INTO  SinhVien VALUES ('K123','Võ Anh Thi','Nữ','23/5/1986','Bến Tre','2')

Select *
from KetQuaThi

Insert INTO  KetQuaThi VALUES (' K116','TH101','1','8')
Insert INTO  KetQuaThi VALUES (' K117','TH101','1','4')
Insert INTO  KetQuaThi VALUES (' K118','TH101','1','6.5')
Insert INTO  KetQuaThi VALUES (' K119','TH102','1','5')
Insert INTO  KetQuaThi VALUES (' K120','TH102','1','7')
Insert INTO  KetQuaThi VALUES (' K121','TH110','1','7')
Insert INTO  KetQuaThi VALUES (' K122','TH102','1','9')
Insert INTO  KetQuaThi VALUES (' K119','TH101','1','6')
Insert INTO  KetQuaThi VALUES (' K120','TH101','1','5')
Insert INTO  KetQuaThi VALUES (' K102','TH102','1','7.5')
Insert INTO  KetQuaThi VALUES (' K11','TH101','1','7')


