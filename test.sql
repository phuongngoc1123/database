drop database if exists ThucTap1;
create database if not exists ThucTap1;
use ThucTap1;
drop table if exists GiangVien;
create table GiangVien (
	magv	tinyint			primary key,
	hoten	nvarchar(20)	not null,
    luong	int
);

drop table if exists SinhVien;
create table SinhVien (
	masv	int				primary key,
	hoten	nvarchar(20)	not null,
    namsinh	int,
    quequan	nvarchar(50)
);
use ThucTap1;
drop table if exists DeTai;
create table DeTai(
	madt		int				primary key,
	tendt		nvarchar(20)	not null,
    kinhphi 	int,
    NoiThucTap	nvarchar(30)
);

drop table if exists HuongDan;
create table HuongDan (
	id		tinyint			primary key,
	masv	int,
    madt 	int,
    magv	int,
    ketqua	nvarchar(10)
);

insert into GiangVien(magv,hoten,luong) 
	values	(121,'Nguyen Thanh Long',5000000),
			(122,'Le Lan Nhi',4500000),
            (123,'Duong Thu Thuy', 6200000),
            (124,'Luong Quoc Viet',4800000);
            
insert into SinhVien(masv,hoten,namsinh,quequan)
	value	(20160001,'Nguyen Thu Hoa',1998,'Nam Dinh'),
			(20161212,'Nguyen Thu Thuy',1998,'Ha Noi'),
            (20182121,'Duong Van Kien',2000,'Thanh Hoa'),
            (20172341,'Le Trung Hieu',1999,'Thai Nguyen');

insert into DeTai(madt,tendt,kinhphi,NoiThucTap)
	value	(201,'Cong Nghe Sinh Hoc',500000,'Cong Ty TNHH Hai Ha'),
			(202,'Cong Nghe Thuc Pham',400000,'Cong Ty TNHH Hai Chau'),
            (203,'Cong Nghe Hoa hoc',200000, 'Cong Ty TNHH Hai Chau'),
            (204,'Cong Nghe Thong Tin',450000,'Tap Doan Viettel');

insert into HuongDan(id,masv,madt,magv,ketqua)
	value	(1,20160001,201,121,'Tot'),
			(2,20161212,202,123,'Tot'),
            (3,20172341,204,124,'Kha');
            
#Cau1: lay tat ca sv chua co de tai huong dan
select *from SinhVien 
	where not exists
(select madt from HuongDan
	where HuongDan.masv= SinhVien.masv);
    
#cau2: lay ra so sinh vien lam de tai "Cong Nghe Sinh Hoc"
select count(tendt) as so_sv from DeTai
	join 
HuongDan on HuongDan.madt = DeTai.madt
    join 
SinhVien on SinhVien.masv = HuongDan.masv
	where DeTai.tendt = 'Cong Nghe Sinh Hoc';
    
#Cau3: Tao view co ten SinhVienInfo lay thong tin sv masv, hoten, tendt
create view SinhVienInfo as
select SinhVien.masv, SinhVien.hoten,DeTai.tendt from SinhVien
	join
HuongDan on HuongDan.masv = SinhVien.masv
	join
DeTai on DeTai.madt = HuongDan.madt;

#Cau4: Tao trigger cho table SInhVien khi insert sinh vien co nam sinh <=1900 thi hien ra thong bao nam sinh phai >1900
-- delimiter //
-- create trigger check_namsinh 
-- before insert on SinhVien 
-- for each row
-- begin
-- 	if exists(select *from SinhVien where namsinh <=1900)
--     begin
-- 		set message_text = 'Nam sinh phai lon hon nam 1900';
--         end if;
-- end$$


