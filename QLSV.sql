Create Database QUANLYSV
Use QUANLYSV


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


Set Dateformat DMY

Insert into SinhVien Values ( 'K116', N'Đinh Nguyễn Vân Anh', N'Nữ', '18/12/1985', N'Bình Thuận','1')
Insert into SinhVien Values ( 'K117', N'Trần Hoàng Anh', N'Nữ', '04/08/1986', N'Bình Dương', '1')
Insert into SinhVien Values ( 'K118', N'Bùi Thanh Bình', N'Nam', '23/10/1985', N'Đồng Nai', '1')
Insert into SinhVien Values ( 'K119', N'Phạm Nhật Tân', N'Nam', '15/01/1985', N'Đồng Tháp', '2')
Insert into SinhVien Values ( 'K120', N'Định Thiện Hòa', N'Nam', '08/12/1985', N'Vĩnh Long', '3')
Insert into SinhVien Values ( 'K121', N'Nguyễn Anh Khoa', N'Nam', '14/11/1985', N'Vũng Tàu', '3')
Insert into SinhVien Values ( 'K122', N'Trương Mộng Thúy', N'Nữ', '12/05/1986', N'Cần Thơ', '2')
Insert into SinhVien Values ( 'K123', N'Võ Anh Thi', N'Nữ', '23/05/1986', N'Bến Tre', '2')
select*
From SinhVien


INSERT INTO KetQuaThi VALUES ('K116','TH101','1','8')
INSERT INTO KetQuaThi VALUES ('K117','TH101','1','4')
INSERT INTO KetQuaThi VALUES ('K118','TH101','1','6.5')
INSERT INTO KetQuaThi VALUES ('K119','TH102','1','5')
INSERT INTO KetQuaThi VALUES ('K120','TH102','1','7')
INSERT INTO KetQuaThi VALUES ('K116','TH110','1','7')
INSERT INTO KetQuaThi VALUES ('K118','TH102','1','9')
INSERT INTO KetQuaThi VALUES ('K119','TH101','1','6')
INSERT INTO KetQuaThi VALUES ('K116','TH102','1','7.5')
INSERT INTO KetQuaThi VALUES ('K120','TH101','1','5')
INSERT INTO KetQuaThi VALUES ('K117','TH101','2','7.5')

SELECT * 
FROM CT_Daotao
SELECT * 
FROM Khoahoc
select*
from MonHoc
select*
from Lop
select*
From SinhVien
select*
From KetQuaThi

--1.thêm dòng cột sinh viên cột ghi chú 
alter table SinhVien add GhiChu nvarchar (50)
--2. thêm bảng môn học bộ giá trị TH112,Kiến Trúc Máy TÍnh
insert into MonHoc values ('TH112',N'Kiến trúc máy tính')
--3. bảng kết quả thi, sửa điểm thi kết quả của môn học TH101 của sinh viên có mã số k116 thành 7.5
update KetQuaThi set DiemThi ='7.5' where MaSV='K116' and MaMH='TH101'
--4.liệt kê mã sinh viên ,họ tên của tất cả sinh viên
select MaSV, Hoten
from SinhVien
--5. Liệt Kê danh sách các môn học
select TenMH
from MonHoc
--6.in ra danh sách sinh viên lớp 'K1_1"
select *
from SinhVien,Lop
where SinhVien.MaLop=Lop.MaLop
and TenLop='K1_1'
--7. in ra danh sách sv năm 1985
select * 
from SinhVien 
Where year (NgaySinh)='1985'
--8. in ra dssv thuộc chương trình đào tạo "cử nhân'
select *
 from SinhVien p,Lop L,CT_Daotao ct,KhoaHoc kh
 where p.MaLop=L.MaLop and L.MaKH=kh.MaKH and kh.MaCTDT=ct.MaCTDT
 --9. Liệt kê mssv họ tên cùng với điểm thi của môn "Tin học đại cương"
 select  Hoten, DiemThi, kqt.MaSV
from Monhoc mh, KetQuaThi kqt, SinhVien sv
where sv.MaSV=kqt.MaSV
and kqt.MaMH=mh.MaMH
and TenMH = N'Tin học đại cương'
--10.cho biết số lượng sinh viên của lớp "K3_1"
select COUNT(MaSV) as Soluong_SV
from Lop l,SinhVien s
where s.MaLop=l.MaLop
and TenLop='K3_1'
--11.cho biết số lượng sinh viên từng lớp
select COUNT(MaSV) as Soluong_SV
from SinhVien s
group by Malop
--12.thống kê số lượng sinh viên theo giới tính
SELECT Gioitinh, COUNT(MaSV) as Soluong_SV
 from SinhVien s
group by GioiTinh
--13.Thống kê số lương sinh viên theo nơi sinh
SELECT Noisinh, COUNT(MaSV) as Soluong_SV
 from SinhVien s
group by Noisinh
--14.Thống kê số lượng sinh viên theo từng chương trình đào tạo
SELECT ct.TenCTDT, COUNT(MaSV) as Soluong_SV
 from Khoahoc k ,SinhVien sv ,Lop l ,CT_Daotao ct
 where SV.MaLop=L.Malop
 and l.MaKH = k.MaKH
 and k.MaCTDT=ct.MaCTDT
group by TenCTDT
--19.Liệt kê tên sinh viên cùng tên môn học học sinh viên phải thi 2 lần trở lên
 select  Hoten, TenMH, kqt.LanThi
from Monhoc mh, KetQuaThi kqt, SinhVien sv
where sv.MaSV=kqt.MaSV
and kqt.MaMH=mh.MaMH
and LanThi>=2
