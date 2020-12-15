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


-- Tạo Bảng lưu thông tin Tài khoản
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Accounts' )
drop table Accounts  

create table Accounts  
(
	username varchar(20) primary key NOT NULL,
	email nvarchar(50) NOT NULL,
	password nvarchar(50) NOT NULL,
	name nvarchar(50) NOT NULL,
	gender bit NOT NULL,
	photo nvarchar (MAX) NULL,
	address nvarchar(50) NOT NULL,
	phone nvarchar(10) NOT NULL,
	birthday date NOT NULL,
	isAdmin bit default 0,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL
)
go


-- Tạo Bảng lưu thông tin Danh Mục
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Categories' )
drop table Categories

create table Categories
(
	id int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
)
go

-- Tạo Bảng lưu thông tin Nhà Sản Xuất
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Producers' )
drop table Producers

create table Producers
(
	id int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	logo nvarchar(MAX) NULL,
	address nvarchar(50) NOT NULL,
	email nvarchar(50) NOT NULL,
	phone nvarchar(10) NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
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
	categoryId int NOT NULL,
	producerId int NOT NULL,
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
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,

	constraint FK_Products_Categories foreign key(categoryId) references Categories(id),
	constraint FK_Products_Producers foreign key(producerId) references Producers(id)
)
go
 
-- Tạo Bảng lưu Hình ảnh
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Photos' )
drop table Photos

create table Photos
( 
	id int identity(1,1) primary key,
	link nvarchar(MAX),
	productId int,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,

	constraint FK_Photos_Products foreign key(productId) references Products(id)
)
go


-- Tạo Bảng lưu thông tin Đơn Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Orders' )
drop table Orders
--------------------------------------------------------------------------
create table Orders
(
	id int identity(1,1) primary key NOT NULL,
	username varchar(20)NULL,
	requireDate datetime NOT NULL,
	receiver nvarchar(50) NOT NULL,
	address nvarchar(50) NOT NULL,
	description nvarchar(1000) NULL,
	status nvarchar(50) NOT NULL,
	phone varchar(10) NOT NULL,
	total float NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
	
	constraint FK_Orders_Accounts foreign key(username) references Accounts(username)
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
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
	
	constraint FK_OrderDetails_Products foreign key(productId) references Products(id),
	constraint FK_OrderDetails_Orders foreign key(orderId) references Orders(id)
)
go

--------------------------------------------------------------------------
-- CHÈN DỮ LIỆU --
--------------------------------------------------------------------------


-- * QUẢN LÍ * --


-- Chèn dữ liệu Accounts - Tài khoản
insert into Accounts (username,email,password,name,gender,photo,address,phone,birthday,isAdmin,createdBy) 
values	('aquoc','aquoc@fpt.edu.vn','aquoc',N'Lê Anh Quốc',1,'hinh4.JPG',N'Vũng Tàu','0968994727','1996-10-17',1,'longpt'),
		('longpt','longpt@fpt.edu.vn','longpt',N'Phan Thành Long',1,'Long.JPG',N'Huế','0969381853','2000-07-09',1,'longpt'),
		('vittt','vittt@fpt.edu.vn','vittt',N'Trần Thị Tường Vi',0,'Vi.JPG',N'Bến Tre','0969381853','2000-08-28',0,'longpt'),
		('vangkt','vangkt@fpt.edu.vn','vangkt',N'Kha Thị Vàng',0,'Vang.PNG',N'Sóc Trăng','0372313826','2000-12-17',0,'longpt'),
		('hoangnd','hoangnd@fpt.edu.vn','hoangnd',N'Nguyễn Đình Hoàng',1,'hinh1.JPG',N'Nam Định','0356667891','2000-01-02',0,'hoangnd'),
		('vietnv','vietnv@fpt.edu.vn','vietnv',N'Nguyễn Văn Việt',1,'hinh2.JPG',N'Lâm Đồng','0909315661','2000-12-27',0,'vietnv'),
		('ngocth','ngocth@fpt.edu.vn','ngocth',N'Trần Hoàng Ngọc',1,'hinh3.JPG',N'Đà Nẵng','0918839939','1998-01-09',0,'ngocth'),
		('duyot','duyot@fpt.edu.vn','duyot',N'Ong Thanh Duy',1,'hinh4.JPG',N'Kiên Giang','0978356876','1998-09-26',0,'duyot'),
		('hanhlt','hanhlt@fpt.edu.vn','hanhlt',N'Lê Thị Hạnh',0,'hinh5.JPG',N'Đà Nẵng','0918839939','1998-01-09',0,'hanhlt')
go


-- * QUẢN LÍ * --

-- Chèn dữ liệu Categories - Danh Mục
insert into Categories (name,createdBy) 
values	(N'Điện Thoại','longpt'),
		(N'Máy tính bảng','longpt'),
		(N'Máy tính xách tay','longpt'),
		(N'Máy tính bàn','longpt'),
		(N'Phụ kiện','longpt')
go

-- Chèn dữ liệu Producer - Hãng Sản Xuất
--  
insert into  Producers (name,logo,address,email,phone) 
values	('APPLE','Apple.jpg',N'Hoa Kỳ', 'apple@gmail.com','18001127'),
		('SAMSUNG','Samsung.png',N'Hàn Quốc', 'samsung@gmail.com','1800588855'),
		('OPPO','Oppo.jpg',N'Trung Quốc', 'oppo@gmail.com','1800577776'),
		('HUAWEI','Huawei.jpg',N'Trung Quốc', 'huawei@gmail.com','18001085')
--
insert into  Producers (name,logo,address,email,phone) 
values	('DELL','Dell.jpg',N'Hoa Kỳ', 'dell@gmail.com','1800588855'),
		('HP','Hp.png',N'Nhật Bản', 'hp@gmail.com','1800577776'),
		('ASUS','Asus.jpg',N'Nhật Bản', 'asus@gmail.com','18001085')
--
go

-- Chèn dữ liệu Products - Sản phẩm
-- ĐIỆN THOẠI --
insert into Products (name, photo, categoryId, producerId, quantity, date, unitBrief, unitPrice, discount, description, views, available, special, latest, createdBy) 
values	('IP','Apple.jpg',1,1,5,'2020-10-17',N'Máy',100000,0.02,'',200, 1, 1, 0,'longpt' )
go



-- Chèn dữ liệu Photos - Hình ảnh
insert into  Photos (link, productID, createdBy) 
values	(N'/hinhAccount/Apple.jpg', 1,'longpt')
--
go

-- Chèn dữ liệu Order - Hóa đơn
insert into  Orders(username, requireDate, receiver, address, description, status, phone, total, createdBy ) 
values	('vittt', '2020-12-16', N'Vi', N'quận 3', N'giao tận cửa', N'Đã nhận', '0969381853', '25000000','longpt')

go

-- Chèn dữ liệu OrderDetails - Hóa đơn chi tiết
insert into  OrderDetails(orderId, productId, quantity, amount, discount,createdBy ) 
values	(1, 1, 2, 2000000, 0.02, 'longpt')

go