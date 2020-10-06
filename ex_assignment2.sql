#Tao table va them data cho table
-- CREATE DATABASE IF NOT EXISTS ThucTap;
USE ThucTap;

CREATE TABLE Khoa(
	ma_khoa 		CHAR(10) PRIMARY KEY,
    ten_khoa		CHAR(30),
    dienthoai		CHAR(20)
);

-- CREATE TABLE SinhVien(
-- 	ma_sv			INT,
--     hoten_sv		CHAR(30),
--     ma_khoa			CHAR(10),
--     nam_sinh		INT,
--     que_quan		CHAR(30)
-- );

-- CREATE TABLE HuongDan (
-- 	ma_sv			INT,
--     ma_dt			CHAR(10),
-- 	ma_gv			INT,
--     ket_qua			DECIMAL(5,2)
-- );
--  


USE ThucTap;
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH1','Vien CNTT&TT' , '024 38 692 46'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH2','Khoa Giao Duc QPAN' , ' 024 3868 0473'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH3','Khoa Giao Duc The Chat' , '024 3868 4922'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH4','Khoa Ly Luan Chinh Tri' , '024 3869 2105'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH5','Vien Co Khi' , '024 38 680585'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH6','Vien Cong Nghe SInh Hoc' , ' 024 3868 2470'); 
INSERT INTO Khoa (ma_khoa,ten_khoa,dienthoai) VALUES ('KH7','Vien Det May' , ' 024 38 692 401'); 

INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20162525,'Nguyen Thi Hanh' ,'K61', 1998, 'Ha Noi'); 
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20162542,'Nguyen Thi Lan' ,'K60', 1997, 'Ha Noi'); 
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20162112,'Nguyen Van Anh' ,'K61', 1998, 'Nam Dinh'); 
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20166789,'Vu Van Linh' ,'K58', 1995, 'Hai Duong'); 
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20123421,'Duong Trung Thanh' ,'K59', 1996, 'Da Nang'); 
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20154323,'Phan Quoc Toan' ,'K60', 1997, 'Vinh Phuc');
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20175645,'Duong Hai Nguyen' ,'K62', 1999, 'Nam Dinh');  
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20182311,'Nguyen Quang Anh' ,'K63', 2000, 'Nghe An');
INSERT INTO SinhVien(ma_sv,hoten_sv,ma_khoa,nam_sinh,que_quan) VALUES (20184432,'Nguyen Ngoc Quang' ,'K63', 2000, 'Son La');  


INSERT INTO HuongDan(ma_sv,ma_dt,ma_gv,ket_qua) VALUES (20162525,'A020','005',8.75);
INSERT INTO HuongDan(ma_sv,ma_dt,ma_gv,ket_qua) VALUES (20162112,'B111','001',9.5);
INSERT INTO HuongDan(ma_sv,ma_dt,ma_gv,ket_qua) VALUES (20123421,'A011','003',8.5);
INSERT INTO HuongDan(ma_sv,ma_dt,ma_gv,ket_qua) VALUES (20184432,'A014','004',7.25);

CREATE TABLE DeTai(
	ma_dt			CHAR(10),
	ten_dt			CHAR(30),
    kinh_phi		INT,
    Noi_thuc_tap	CHAR(30)
);
INSERT INTO DeTai(ma_dt,ten_dt,kinh_phi,Noi_thuc_tap) VALUES ('A012','Xu ly o nhiem', 5000, 'Vinh Phuc');
INSERT INTO DeTai(ma_dt,ten_dt,kinh_phi,Noi_thuc_tap) VALUES ('A020','Xu ly tieng on', 10000, 'Ha Noi');
INSERT INTO DeTai(ma_dt,ten_dt,kinh_phi,Noi_thuc_tap) VALUES ('A011','Xu ly giong noi', 7500, 'TP HCM');
INSERT INTO DeTai(ma_dt,ten_dt,kinh_phi,Noi_thuc_tap) VALUES ('A014','Robot don khach', 12000, 'Ha Noi');
INSERT INTO DeTai(ma_dt,ten_dt,kinh_phi,Noi_thuc_tap) VALUES ('B111','Thiet ke giay da', 3000, 'Nam Dinh');

drop table GiangVien;

CREATE TABLE GiangVien(
	ma_gv			INT PRIMARY KEY,
    hoten_gv		CHAR(30),
    luong			DECIMAL(5,2),
    ma_khoa			CHAR(10)
);

INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (001,'Do Van Uy' ,12, 'K58'); 
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (002,'nguyen Thanh Hung' ,14, 'K61'); 
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (003,'Vu Thi Huong Giang' ,11, 'K60'); 
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (004,'Le Ngan Hanh' ,9.5, 'K58'); 
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (005,'Nguyen Khanh Van' ,15.6, 'K60'); 
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (006,'Nguyen Hai Anh' ,9.4, 'K62');
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (007,'Dang Tuan Linh' ,10.2, 'K62');  
INSERT INTO GiangVien(ma_gv,hoten_gv,luong,ma_khoa) VALUES (008,'Ngo Thi Quynh Thu' ,14.1, 'K63'); 

#Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
SELECT * FROM GiangVien;
-- SELECT * FROM GiangVien EXCEPT SELECT luong from GiangVien;
