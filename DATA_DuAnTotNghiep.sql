-- Use Master
use master
go

-- XÓA DATABASE NẾU TỒN TẠI DATABASE DoAnTotNghiep TRONG HỆ THỐNG
IF  EXISTS (SELECT * FROM sysdatabases 	WHERE name = N'doantotnghiep' )
drop database doantotnghiep

-- TẠO DATABASE
create database doantotnghiep
go

-- SỬ DỤNG DATABASE
use doantotnghiep
go

-- Tạo Bảng lưu thông tin Tài Khoản
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Admin' )
drop table Admin

create table Admin
(
	username nvarchar(50) primary key NOT NULL,
	password nvarchar(50) NOT NULL,
	fullname nvarchar(50) NOT NULL,
	access int NOT NULL
)
go

-- Tạo Bảng lưu thông tin Phòng Ban
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Departments' )
drop table Departments

create table Departments
(
	id varchar(12) primary key NOT NULL,
	name nvarchar(50) NOT NULL
)
go

-- Tạo Bảng lưu thông tin Loại Nhân Viên
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Employeetypes' )
drop table Employeetypes 

create table Employeetypes 
(
	id varchar(12) primary key NOT NULL,
	name nvarchar(50) NOT NULL
)
go

-- Tạo Bảng lưu thông tin Nhân Viên
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Employees' )
drop table Employees  

create table Employees  
(
	id varchar(20) primary key NOT NULL,
	departId varchar(12) NOT NULL,
	employeetypeId varchar(12) NOT NULL,
	email nvarchar(50) NOT NULL,
	password nvarchar(50) NOT NULL,
	name nvarchar(50) NOT NULL,
	gender int NOT NULL,
	photo nvarchar (MAX) NULL,
	address nvarchar(50) NOT NULL,
	phone nvarchar(10) NOT NULL,
	birthday date NOT NULL,
	access int NOT NULL,
	activated bit NOT NULL,

	constraint FK_Employees_Departments foreign key (departId) references Departments(id),
	constraint FK_Employees_Employeetypes foreign key (employeetypeId) references Employeetypes(id)
)
go

-- Tạo Bảng lưu thông tin Khen thưởng
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Bonus' )
drop table Bonus

create table Bonus(
	id int identity(1,1) primary key NOT NULL,
	employeeId varchar(20) NOT NULL,
	type bit NOT NULL,
	amount float NOT NULL,
	reason nvarchar(50) NOT NULL,
	date datetime NOT NULL,

	constraint FK_Bonus_Employees foreign key(employeeId) references Employees(id)
)
go

-- Tạo Bảng lưu thông tin Hợp Đồng
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Contracts' )
drop table Contracts

create table Contracts(
	id varchar(20) primary key NOT NULL, --Mã nhân viên
	name nvarchar(50) NOT NULL,
	startTime datetime NOT NULL,
	endTime datetime NULL,
	subsidize int NOT NULL,
	insurrance float NOT NULL,
	salary float NOT NULL,
	status int NOT NULL,

	constraint FK_Contracts_Employees foreign key(id) references Employees(id)
)
go

-- Tạo Bảng lưu thông tin Danh Mục
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Categories' )
drop table Categories

create table Categories
(
	id int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	nameEN nvarchar(50) NOT NULL
)
go

-- Tạo Bảng lưu thông tin Nhà Sản Xuát
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Producers' )
drop table Producers

create table Producers
(
	id int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	logo nvarchar(MAX) NULL,
	address nvarchar(50) NOT NULL,
	email nvarchar(50) NOT NULL,
	phone nvarchar(10) NOT NULL
)
go

-- Tạo Bảng lưu thông tin Sản Phẩm
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Products' )
drop table Products

create table Products
(
	id int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	photo nvarchar(MAX) NULL,
	quantity int NOT NULL,
	date datetime NOT NULL,
	unitBrief nvarchar(50) NOT NULL,
	unitPrice float NOT NULL,
	discount float NULL,
	description nvarchar(1000) NULL,
	views int NULL,
	available bit NULL,
	special bit NULL,
	latest bit NULL,
	status bit NOT NULL,
	categoryId int NOT NULL,
	producerId int NOT NULL,

	constraint FK_Products_Categories foreign key(categoryId) references Categories(id),
	constraint FK_Products_Producers foreign key(producerId) references Producers(id)
)
go

-- Tạo Bảng lưu thông tin Khách Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Customers' )
drop table Customers

create table Customers
(
	id varchar(20) primary key NOT NULL,
	email nvarchar(50) NOT NULL,
	password nvarchar(50) NOT NULL,
	fullname nvarchar(50) NOT NULL,
	photo nvarchar(MAX) NULL,
	address nvarchar(50) NOT NULL,
	phone nvarchar(10) NOT NULL,
	birthday datetime NOT NULL,
	gender int NOT NULL,
	activated bit NOT NULL
)
go

-- Tạo Bảng lưu thông tin Đơn Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Orders' )
drop table Orders
--------------------------------------------------------------------------
create table Orders
(
	id int identity(1,1) primary key NOT NULL,
	orderDate datetime NOT NULL,
	requireDate datetime NOT NULL,
	amount float NOT NULL,
	receiver nvarchar(50) NOT NULL,
	address nvarchar(50) NOT NULL,
	description nvarchar(1000) NULL,
	status int NOT NULL,
	phone varchar(10) NOT NULL,
	customerId varchar(20)NULL,
	
	constraint FK_Orders_Customers foreign key(customerId) references Customers(id)
)
go

-- Tạo Bảng lưu thông tin Chi Tiết Đơn Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'OrderDetails' )
drop table OrderDetails

create table OrderDetails
(
	id int identity(1,1) primary key NOT NULL,
	orderId int NOT NULL,
	productId int NOT NULL,
	quantity int NOT NULL,
	amount float NOT NULL,
	discount float NOT NULL,
	
	constraint FK_OrderDetails_Products foreign key(productId) references Products(id),
	constraint FK_OrderDetails_Orders foreign key(orderId) references Orders(id)
)
go

--------------------------------------------------------------------------
-- CHÈN DỮ LIỆU --
--------------------------------------------------------------------------


-- * QUẢN LÍ * --


-- Chèn dữ liệu Admin - Tài khoản
insert into Admin (username,password,fullname,access)
values (N'longpt@fpt.edu.vn', 'longpt', N'Phan Thành Long', 1)
go

-- Chèn dữ liệu Departments - Phòng ban
insert into Departments (id,name) 
values	('PB1',N'Phòng IT'),
		('PB2',N'Phòng Kế Toán'),
		('PB3',N'Phòng Nhân Sự'),
		('PB4',N'Phòng Marketting')
go

-- Chèn dữ liệu Employeetypes - Loại nhân viên
insert into Employeetypes (id,name) 
values  ('LNV1','FullTime'),
		('LNV2','PartTime')
go

-- Chèn dữ liệu Employees - Nhân Viên
insert into Employees (id,departId,employeetypeId,email,password,name,gender,photo,address,phone,birthday, access,activated) 
values	('vittt','PB1','LNV1','vittt@fpt.edu.vn','vittt',N'Trần Thị Tường Vi',1,'Vi.JPG',N'Bến Tre','0969381853','2000-08-28',1,1),
		('vangkt','PB2','LNV1','vangkt@fpt.edu.vn','vangkt',N'Kha Thị Vàng',1,'Vi.JPG',N'Sóc Trăng','0372313826','2000-12-17',1,1),
		('hoangnd','PB3','LNV1','hoangnd@fpt.edu.vn','hoangnd',N'Nguyễn Đình Hoàng',0,'Vi.JPG',N'Nam Định','0356667891','2000-01-02',1,1),
		('vietnv','PB4','LNV2','vietnv@fpt.edu.vn','vietnv',N'Nguyễn Văn Việt',0,'Vi.JPG',N'Lâm Đồng','0909315661','2000-12-27',1,1),
		('ngocth','PB3','LNV2','ngocth@fpt.edu.vn','ngocth',N'Trần Hoàng Ngọc',1,'Vi.JPG',N'Đà Nẵng','0918839939','1998-01-09',1,1)
go

-- Chèn dữ liệu Contract - Hợp Đồng
insert into Contracts (id,name,startTime,endTime,subsidize,insurrance,salary,status)
values ('vittt',N'Hợp đồng không xác định thời hạn',CAST(0x0000A8CE00000000 AS DateTime),CAST(0x0000B9ED00000000 AS DateTime),500000,0.08,5000000,1),
		('hoangnd',N'Hợp đồng xác định thời hạn',CAST(0x0000A8CE00000000 AS DateTime),CAST(0x0000B9ED00000000 AS DateTime),500000,0.18,5000000,1)
go

-- Chèn dữ liệu Bonus - Khen thưởng
insert into Bonus (employeeId,type,amount,reason,date)
values ('vittt',1,80000,N'Thực hiện đúng quy định',CAST(0x0000B9ED00000000 AS DateTime))
go


-- * QUẢN LÍ * --

-- Chèn dữ liệu Categories - Danh Mục
insert into Categories (name, nameEN) 
values	(N'Điện Thoại','Phone'),
		(N'Máy tính bảng','Tablet'),
		(N'Máy tính xách tay','Laptop'),
		(N'Máy tính bàn','PC-LCD'),
		(N'Phụ kiện','Computer Components')
go

-- Chèn dữ liệu Producer - Hãng Sản Xuất
insert into  Producers (name,logo,address,email,phone) 
values	('APPLE','Apple.png',N'Hoa Kỳ', 'apple@gmail.com','113'),
		('SAMSUNG','Samsung.jpg',N'Hàn Quốc', 'samsung@gmail.com','113'),
		('OPPO','Oppo.jpg',N'Hàn Quốc', 'oppo@gmail.com','113'),
		('HUAWEI','Huawei.jpg',N'Trung Quốc', 'nokia@gmail.com','113')
--
insert into  Producers (name,logo,address,email,phone) 
values ('Dell','Dell.png',N'Hoa Kỳ', 'dell@gmail.com','113'),
		('Acer','Acer.png',N'Nhật Bản', 'acer@gmail.com','113'),
('Asus','Asus.png',N'Đài Loan', 'asus@gmail.com','113'),
('Msi','Msi.jpg',N'Nhật Bản', 'msi@gmail.com','113')
--
insert into  Producers (name,logo,address,email,phone) 
values ('Canon','Canon.png',N'Nhật Bản', 'canon@gmail.com','113'),
('Sony ','Sony.jpg',N'Hoa Kỳ', 'sony@gmail.com','113'),
('Nikon  ','Nikon.png',N'Nhật Bản', 'nikon@gmail.com','113')
--

