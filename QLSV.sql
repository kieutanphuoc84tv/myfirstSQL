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
Insert INTO CT_Daotao VALUES ('2',N'Cao Đẳng')
Insert INTO CT_Daotao VALUES ('3',N'Trung Cấp')

SELECT * 
FROM Khoahoc

INSERT INTO KhoaHoc VALUES ('1','1',N'KHÓA 1 NĂM 2005')
INSERT INTO KhoaHoc VALUES ('2','1',N'KHÓA 2 NĂM 2006')
INSERT INTO KhoaHoc VALUES ('3','2',N'KHÓA 1 NĂM 2007')
INSERT INTO KhoaHoc VALUES ('4','3',N'KHÓA 1 NĂM 2008')
INSERT INTO KhoaHoc VALUES ('5','2',N'KHÓA 2 NĂM 2008')


select*
from Lop
insert INTO Lop values ('1','1','K1_1')
insert INTO Lop values	('2','1','K1_1')
insert INTO Lop values	('3','1','K1_1')
insert INTO Lop values	('4','2','K1_2')
select*
from MonHoc

INSERT INTO MonHoc VALUES ('TH101',N'TIN HỌC ĐẠI CƯƠNG')
INSERT INTO MonHoc VALUES ('TH110',N'TOÁN RỜI RẠC')
INSERT INTO MonHoc VALUES ('TH102',N'CƠ SỞ DỮ LIỆU')

SET DATEFORMAT DAY

SELECT * 
FROM CT_DAOTAO
SET DATEFORMAT DMY 
INSERT INTO SinhVien VALUES ('K116',N'ĐINH NGUYỄN VÂN ANH',N'Nữ','1985-12-18',N'BÌNH THUẬN ','1')
INSERT INTO SinhVien VALUES ('K117',N'TRẦN HOÀNG ANH',N'Nữ','1986-8-4',N'BÌNH DƯƠNG ','1')
INSERT INTO SinhVien VALUES ('K118',N'BÙI THANH BÌNH',N'NAM','1985-10-23',N'ĐỒNG NAI ','1')
INSERT INTO SinhVien VALUES ('K119',N'PHẠM NHẬT TÂN',N'NAM','1985-1-15',N'ĐỒNG THÁP ','2')
INSERT INTO SinhVien VALUES ('K120',N'ĐINH THIỆN HÒA',N'NAM','1985-12-8',N'VĨNH LONG ','3')
INSERT INTO SinhVien VALUES ('K121',N'NGUYỄN ANH KHOA',N'NAM','1985-11-14',N'VŨNG TÀO ','3')
INSERT INTO SinhVien VALUES ('K122',N'TRƯƠNG MỘNG THUÝ',N'Nử','1986-12-15',N'CẦN THƠ  ','2')
INSERT INTO SinhVien VALUES ('K123',N'VÕ ANH THI',N'Nữ','1986-5-23',N'BẾN TRE ','2')


Select *
from KetQuaThi

INSERT INTO KetQuaThi VALUES ('K116','TH101','1','8')
INSERT INTO KetQuaThi VALUES ('K117','TH101','1','4')
INSERT INTO KetQuaThi VALUES ('K118','TH101','1','6.5')
INSERT INTO KetQuaThi VALUES ('K119','TH102','1','5')
INSERT INTO KetQuaThi VALUES ('K120','TH102','1','7')
INSERT INTO KetQuaThi VALUES ('K116','TH110','1','7')
INSERT INTO KetQuaThi VALUES ('K118','TH102','1','9')
INSERT INTO KetQuaThi VALUES ('K119','TH101','1','6')
INSERT INTO KetQuaThi VALUES ('K116','TH102','1','7.5')



