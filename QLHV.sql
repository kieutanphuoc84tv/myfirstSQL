create database QLHV
use QLHV

create table KhoaHoc
(
	MaKH varchar(10) NOT NULL,
	TenKH nvarchar(50),
	BD datetime,
	KT datetime
)

create table Giaovien
(
	MaGV varchar(10) NOT NULL,
	Hoten nvarchar(50),
	Ngaysinh datetime,
	Diachi nvarchar(50)
)

create table HocVien
(
	MaHV varchar(10) NOT NULL,
	Ho nvarchar(50),
	Ten nvarchar(50),
	NgaySinh datetime,
	DiaChi nvarchar(50),
	NgheNghiep nvarchar(50)
)

create table LopHoc
(
	MaLop varchar(10) NOT NULL,
	TenLop nvarchar(50),
	MaKH varchar(10) NOT NULL,
	MaGV varchar(10) NOT NULL,
	SiSoDK int,
	LopTRG int,
	PhongHoc int
)

create table BienLai
(
	MaLop varchar(10) NOT NULL,
	MaHV varchar(10) NOT NULL,
	SoBL int,
	Diem float,
	KetQua nvarchar(50),
	Xeploai nvarchar(50),
	TienNop float
)

alter table KhoaHoc add constraint pk_KhoaHoc primary key (MaKH)
alter table Giaovien add constraint pk_Giaovien primary key (MaGV)
alter table HocVien add constraint pk_HocVien primary key (MaHV)
alter table LopHoc add constraint pk_LopHoc primary key (MaLop)
alter table BienLai add constraint pk_BienLai primary key (MaLop, MaHV)

alter table LopHoc add constraint fk_LopHoc_MaKH foreign key (MaKH) references KhoaHoc(MaKH)
alter table LopHoc add constraint fk_LopHoc_MaGV foreign key (MaGV) references Giaovien(MaGV)

alter table BienLai add constraint fk_BienLai_MaLop foreign key (MaLop) references LopHoc(MaLop)
alter table BienLai add constraint fk_BienLai_MaHV foreign key (MaHV) references HocVien(MaHV)

SP_pkeys KhoaHoc
SP_pkeys Giaovien
SP_pkeys HocVien
SP_pkeys LopHoc
SP_pkeys BienLai

set dateformat DMY

Select*
From KhoaHoc
insert into KhoaHoc values ('PT107','Tieng Phap Pho Thong khoa 1 nam 2007','15/02/2007','15/05/2007')
insert into KhoaHoc values ('PT207','Tieng Phap Pho Thong khoa 2 nam 2007','30/05/2007','30/08/2007')
insert into KhoaHoc values ('CT207','Tieng Phap Chuyen tu khoa 2 nam 2007','30/05/2007','30/08/2007')
insert into KhoaHoc values ('CT108','Tieng Phap Chuyen tu khoa 1 nam 2008','01/03/2008','30/05/2008')
insert into KhoaHoc values ('PT108','Tieng Phap Pho Thong khoa 1 nam 2008','15/03/2008','01/05/2008')

Select*
From Giaovien
insert into Giaovien values ('1','Nguyen Thanh Trung','02/01/1969','Tran Binh Trong, Q1 TPHCM')
insert into Giaovien values ('2','Nguyen Truong Son','05/08/1970','Tan Binh TPHCM')
insert into Giaovien values ('3','Le Thi Nhan','04/03/1978','Q5 TPHCM')
insert into Giaovien values ('4','Nguyen Thuy Mai','09/08/1976',N'Vĩnh Long')
insert into Giaovien values ('5','Lam Huynh Nhu','07/05/1981','Ben Tre')

Select*
From LopHoc
insert into LopHoc values ('1','Tieng Phap Pho thong 1.1','PT107','1','10','9','101')
insert into LopHoc values ('2','Tieng Phap Pho thong 2.1','PT207','2','10','6','201')
insert into LopHoc values ('3','Tieng Phap Pho thong 1.2','PT207','3','20','17','202')
insert into LopHoc values ('4','Tieng Phap Chuyen tu A','CT207','4','15','8','203')


Select*
From HocVien
insert into HocVien values ('1','Ho Thanh','Son','01/01/1968','TPHCM','Bac Si')
insert into HocVien values ('2','La Thanh','Dung','04/11/1960','TPHCM','Giao vien')
insert into HocVien values ('3','Nguyen Thai','Thanh','08/07/1973','TPHCM','Duoc Si')
insert into HocVien values ('4','Huynh Hong','Trinh','23/10/1983','TPCT','Ky Su')
insert into HocVien values ('5','Lam Phuoc','Hai','08/06/1980','Dong Thap','Cong Nhan')
insert into HocVien values ('6','Truong Hoai','Mong','09/09/1977','Vinh Long','Tho May')
insert into HocVien values ('7','Vo Anh','Thi','06/09/1980','Tra Vinh','Noi Tro')
insert into HocVien values ('8','Nguyen','Hoang','16/09/1956','Can Tho','Tho May')
insert into HocVien values ('9','Tran Hoang','Nghiep','05/09/1983','Dong Thap','Cong Nhan')
insert into HocVien values ('10','Ly Minh','Viet','03/02/1963','Dong Thap','Ke Toan')
insert into HocVien values ('11','Vo Hong','Ngoc','09/08/1956','Dong Nai','Ban Hang')
insert into HocVien values ('12','Luong','Thanh','14/09/1988','Binh Duong','Ban Hang')
insert into HocVien values ('13','Nguyen Ngoc','Hieu','08/02/1983','Tien Giang','Tho Uon Toc')
insert into HocVien values ('14','Ha Thi','Kieu','08/09/1982','Long An','Giao Dich Vien')
insert into HocVien values ('15','Tran Thi','Lai','09/09/1979','Soc Trang','Lap Trinh Vien')
insert into HocVien values ('16','Mai','Thanh','08/07/1966','Can Tho','Giao Vien')
insert into HocVien values ('17','Huynh','Mai','08/04/1974','Vinh Long','Nguoi Mau')
insert into HocVien values ('18','Nguyen Duy','Tung','22/09/1981','Vung Tau','Ky Su')
insert into HocVien values ('19','Trinh Hoai','Duc','06/03/1980','Vung Tau','Cong Nhan')
insert into HocVien values ('20','Ha Minh','Duc','08/09/1962','Long An','Dien Vien')
insert into HocVien values ('21','Lai Van','Minh','03/01/1958','Ca Mau','Dien Vien')
insert into HocVien values ('22','Nguyen Thi Kim','Ngan','08/05/1980','Vung Tau','Kien Truc Su')
insert into HocVien values ('23','Phung Thi','Anh','08/09/1979','Tra Vinh','Luat Su')

Select*
From BienLai
insert into BienLai values ('1','1','1','6','Dau','Kha','100000')
insert into BienLai values ('1','2','2','4','Hong','Yeu','100000')
insert into BienLai values ('1','3','3','4','Hong','Yeu','100000')
insert into BienLai values ('1','4','4','3','Hong','Yeu','100000')
insert into BienLai values ('1','5','5','4','Hong','Yeu','100000')
insert into BienLai values ('1','6','6','9','Dau','Gioi','100000')
insert into BienLai values ('1','7','7','6.5','Dau','TB',' ')
insert into BienLai values ('1','8','8','5','Dau','TB','100000')
insert into BienLai values ('1','9','9','7','Dau','Kha','100000')
insert into BienLai values ('1','10','10','8','Dau','Kha','100000')
insert into BienLai values ('1','11','11','6','Dau','TB','100000')
insert into BienLai values ('1','12','12','9','Dau','Gioi','100000')
insert into BienLai values ('2','1','34','3','Hong','Yeu',' ')
insert into BienLai values ('2','13','13','4','Hong','Yeu','100000')
insert into BienLai values ('2','3','15','2','Hong','Yeu','100000')
insert into BienLai values ('2','15','17','6','Dau','TB','100000')
insert into BienLai values ('2','6','18','9.5','Dau','Gioi','100000')
insert into BienLai values ('2','7','19','6.5','Dau','TB','100000')
insert into BienLai values ('2','8','20','4.5','Hong','Yeu','100000')
insert into BienLai values ('2','9','21','8','Dau','Kha','100000')
insert into BienLai values ('2','10','22','9.8','Dau','Gioi','100000')
insert into BienLai values ('3','16','24','5','Dau','TB','100000')
insert into BienLai values ('3','17','25','9','Dau','Gioi','100000')
insert into BienLai values ('3','18','26','7.5','Dau','Kha','100000')
insert into BienLai values ('3','19','17','8.6','Dau','Gioi','100000')


