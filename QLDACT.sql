
-- tạo cơ sở dữ liệu
create database QLDACT
use QLDACT
--dùng cơ sở dữ liệu

--bản nhân viên
Create table NhanVien
(
MaNV varchar(10) NOT NULL ,
HoNV nvarchar(20),
TenLot nvarchar(20),
TenNV nvarchar(20),
NgSinh datetime,
Phai nvarchar(10),
DiaChi nvarchar(50),
MaNQL varchar(10),
Phong varchar(10) NOT NULL,
Luong int
)
Create table PhongBan
(
MaPB varchar(10) NOT NULL ,
TenPB nvarchar(50),
TrPHG nvarchar(50),
NgayNhanChuc datetime
)
Create table DeAn
(
MaDA varchar(10) NOT NULL ,
TenDA nvarchar(50),
DiaDiemDA nvarchar(50),
Phong varchar(10),
NgayBD_DK datetime,
NgayKT_DK datetime
)


Create table ThanNhan
(
MaNV varchar(10) NOT NULL ,
MaTN varchar(10)NOT NULL,
HotenTN nvarchar(50),
Phai nvarchar(10),
NgSinh datetime,
QuanHe nvarchar(50)
)

Create table PhanCong
(
MaNV varchar(10) NOT NULL ,
MaDA varchar(10) NOT NULL ,
ThoiGian float
)

alter table NhanVien add constraint pk_NV primary key ( MaNV )
alter table NhanVien add constraint fk_NhanVien_Phong foreign key ( Phong ) references PhongBan (MaPB)

alter table PhongBan add constraint pk_PB primary key ( MaPB )

alter table DeAn add constraint pk_DA primary key ( MaDA )
alter table DeAn add constraint fk_DeAn_Phong foreign key ( Phong ) references PhongBan (MaPB)


alter table ThanNhan add constraint pk_TN primary key ( MaNV, MaTN )
alter table ThanNhan add constraint fk_ThanNhan_MaNV foreign key ( MaNV ) references NhanVien (MaNV)

alter table PhanCong add constraint pk_PC primary key ( MaNV, MaDA )
alter table PhanCong add constraint fk_PhanCong_MaNV foreign key ( MaNV ) references NhanVien (MaNV)
alter table PhanCong add constraint fk_PhanCong_MaDA foreign key ( MaDA ) references DeAn (MaDA)

Select *
From NhanVien
Select *
From PhongBan
Select *
From DeAn
Select *
From ThanNhan
Select *
From PhanCong

SP_pkeys NhanVien
SP_pkeys PhongBan
SP_pkeys DeAn
SP_pkeys ThanNhan
SP_pkeys PhanCong


--thêm nội dung vào bản nhân viên
Set Dateformat DMY
insert into PhongBan values ('QL',N'Quản Lý','001','22/5/2000')
insert into PhongBan values ('DH',N'ĐIÈU HÀNH','003','10/10/2002')
insert into PhongBan values ('NC',N'Nghiên cứu','002','15/3/2002')

Insert INTO NhanVien VALUES ('001',N'Vương', N'Ngọc', N'Quyên','22/10/1957',N'Nữ', N'Hà Nội',' ','QL','3000000' )
Insert INTO NhanVien  VALUES ('002',N'Nguyễn',N'Thanh',N'Tùng','9/1/1955',N'Nam',N'TPHCM','001','NC','2500000') 
Insert INTO NhanVien VALUES  ('003',N'Lê',N'Thị',N'Nhãn','18/12/1960',N'Nữ',N'TPHCM','001','DH','2500000') 
Insert INTO NhanVien VALUES  ('004',N'Dinh',N'Ba',N'Tiên','9/1/1968',N'Nam',N'DongThap','002','NC','2200000')
Insert INTO NhanVien VALUES  ('005',N'Bùi',N'Thúy',N'Vũ','8/6/1973',N'Nữ',N'Trà Vinh','003','DH','2200000')
Insert INTO NhanVien VALUES  ('006',N'Nguyễn',N'Mạnh',N'Hùng','30/8/1981',N'Nam',N'Đồng Nai','002','Nc','200000') 


Insert Into DeAn values ('TH001',N'Tin học hóa 1',N'Hà Nội','NC','1/2/2003','1/2/2004')
Insert Into DeAn values ('TH002',N'Tin học hóa 2',N'TPHCM','NC','4/6/2003','4/2/2004')
Insert Into DeAn values ('DT001',N'ĐÀO TẠO 1',N'Nha Trang','DH','4/2/2002','4/2/2006')
Insert Into DeAn values ('DT002',N'ĐÀO TẠO 2',N'ĐÀ NẴNG','DH','1/2/2006','12/12/2006')



Insert into ThanNhan Values ( '003', '1', N'Trần Minh Tiến', N'Nam', '11/12/1990', N'Con')
Insert into ThanNhan Values ( '003', '2', N'Trần Ngọc Linh', N'Nữ', '10/03/1993', N'Con')
Insert into ThanNhan Values ( '003', '3', N'Trần Minh Long', N'Nam', '10/10/1957', N'Vợ Chồng')
Insert into ThanNhan Values ( '001', '1', N'Lê Nhật Minh', N'Nam', '27/04/1955', N'Vợ Chồng')
Insert into ThanNhan Values ( '002', '1', N'Lê Hoài Thương', N'Nữ', '05/12/1960', N'Vợ Chồng')
Insert into ThanNhan Values ( '004', '1', N'Lê Phi Phụng', N'Nữ', '24/12/1960', N'Vợ Chồng')
Insert into ThanNhan Values ( '005', '1', N'Trần Thu Hồng', N'Nữ', '11/04/1978', N'Vợ Chồng')
Insert into ThanNhan Values ( '005', '2', N'Nguyễn Mạnh Tâm', N'Nam', '12/03/2003', N'Con')





Insert into PhanCong Values ( '001', 'TH001', '30')
Insert into PhanCong Values ( '001', 'TH002', '12.5')
Insert into PhanCong Values ( '002', 'TH001', '10')
Insert into PhanCong Values ( '002', 'TH002', '10')
Insert into PhanCong Values ( '002', 'DT001', '10')
Insert into PhanCong Values ( '002', 'DT002', '10')
Insert into PhanCong Values ( '003', 'TH001', '37.5')
Insert into PhanCong Values ( '004', 'DT001', '22.5')
Insert into PhanCong Values ( '004', 'TH001', '30')
Insert into PhanCong Values ( '006', 'TH001', '30')
Insert into PhanCong Values ( '007', 'TH001', '30')
Insert into PhanCong Values ( '007', 'TH001', '30')