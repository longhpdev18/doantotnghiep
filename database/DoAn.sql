CREATE DATABASE DOAN;
go
USE DOAN

GO


CREATE TABLE nhanvien(
	manv int IDENTITY(1,1) primary key,
	tendangnhap varchar(50) not null,
	matkhau varchar(50) not null,
	chucvu bit not null,
	fullname nvarchar(100) not null,
	ngaysinh date not null,
	gioitinh bit not null,
	diachi nvarchar(250) not null,
	email varchar(100) not null,
	sodienthoai int not null,
	hinh varchar(50) not null
	)
GO

CREATE TABLE khachhang(
	makh int IDENTITY(1,1) primary key,
	tendangnhap varchar(50) not null,
	matkhau varchar(50) not null,
	fullname nvarchar(100) not null,
	ngaysinh date,
	gioitinh bit,
	diachi nvarchar(250) not null,
	sodienthoai int not null,
	email varchar(100),
	active bit,
	hinh varchar(50)
)
go
CREATE TABLE nhanhieu(
	manh int IDENTITY(1,1) primary key,
	tennh nvarchar(100) not null
)
go
CREATE TABLE loaihang(
	maloai int IDENTITY(1,1) primary key,
	tenloai nvarchar(100)  
)

go
CREATE TABLE sanpham(
	masp int IDENTITY(1,1) primary key,
	tensp nvarchar(100) not null,
	maloai int not null,
	manh int not null,
	gia decimal not null,
	mota nvarchar(4000) not null,
	tinhtrang bit not null,
	hinh nvarchar(100) not null,
	deal int null default 0
	/*
	out_price varchar(255) null,
	old_price varchar(255) null,
	new_price varchar(255) null, */
	FOREIGN KEY (maLoai) REFERENCES loaihang(maloai),
	FOREIGN KEY (manh) REFERENCES nhanhieu(manh)
)
go

CREATE TABLE hoadon(
	mahd int IDENTITY(1,1) primary key,
	makh int not null,
	ngaymua date not null DEFAULT getDATE(),
	trangthai nvarchar(250) not null DEFAULT N'Đang xác nhận!',
	tennguoinhan nvarchar(250) not null,
	diachinguoinhan nvarchar(250) not null,
	sdtnguoinhan int not null,
	tongtien float not null,
	FOREIGN KEY (makh) REFERENCES khachhang(makh)
)
go

CREATE TABLE hoadonchitiet(
	mahdct int IDENTITY(1,1) primary key,
	mahd int not null,
	masp int not null,
	soluong int not null,
	dongia decimal not null,
	FOREIGN KEY (mahd) REFERENCES hoadon(mahd),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)

/*
go
CREATE TABLE danhgia(
	madg int IDENTITY(1,1) primary key,
	makh int,
	masp int,
	noidung nvarchar(250) not null,
	FOREIGN KEY (makh) REFERENCES khachhang(makh),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)


create table laptop(
	masp int primary key,
	cpu nvarchar(250),
	ram nvarchar(250),
	gpu nvarchar(250),
	manhinh nvarchar(250),
	ocung nvarchar(250),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)

create table manhinh(
	masp int primary key,
	kichthuoc nvarchar(250),
	taitrong nvarchar(250),
	nguyenlieu nvarchar(250),
	ketnoi nvarchar(250),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)*/
