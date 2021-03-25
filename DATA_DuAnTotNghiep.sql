-- Use Master
use master

-- XÓA DATABASE NẾU TỒN TẠI DATABASE DoAnTotNghiep TRONG HỆ THỐNG
IF  EXISTS (SELECT * FROM sysdatabases 	WHERE name = N'HopeOnline' )
drop database HopeOnline

-- TẠO DATABASE
create database HopeOnline

-- SỬ DỤNG DATABASE
use HopeOnline


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
	address nvarchar(100) NOT NULL,
	phone nvarchar(10) NOT NULL,
	birthday date NOT NULL,
	level int,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL
)

-- Tạo Bảng lưu thông tin Danh Mục
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Categories' )
drop table Categories

create table Categories
(
	categoryId int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
)
-- Tạo Bảng lưu thông tin Nhà Sản Xuất
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Producers' )
drop table Producers

create table Producers
(
	producerId nvarchar(50) primary key NOT NULL,
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

-- Tạo Bảng lưu thông tin Sản Phẩm
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Products' )
drop table Products

create table Products
(
	productId int identity(1,1) primary key NOT NULL,
	name nvarchar(50) NOT NULL,
	photo nvarchar(MAX) NULL,
	categoryId int NOT NULL,
	importPrice float NOT NULL,
	salePrice float NOT NULL,
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

	constraint FK_Products_Categories foreign key(categoryId) references Categories(categoryId)
)

-- Tạo Bảng lưu Hình ảnh
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Photos' )
drop table Photos

create table Photos
( 
	photoId int identity(1,1) primary key NOT NULL,
	link nvarchar(MAX) NOT NULL,
	productId int NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,

	constraint FK_Photos_Products foreign key(productId) references Products(productId)
)

-- Tạo Bảng lưu thông tin Trạng thái đơn hàng
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'Status' )
drop table Status  

create table Status  
(
	statusId nvarchar(100) primary key NOT NULL,
	name nvarchar(100) NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL
)


-- Tạo Bảng lưu thông tin Đơn Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Orders' )
drop table Orders
--------------------------------------------------------------------------
create table Orders
(
	orderId int identity(1,1) primary key NOT NULL,
	username varchar(20)NULL,
	requireDate datetime NOT NULL,
	receiver nvarchar(50) NOT NULL,
	address nvarchar(50) NOT NULL,
	description nvarchar(1000) NULL,
	phone varchar(10) NOT NULL,
	total float NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
	
	constraint FK_Orders_Accounts foreign key(username) references Accounts(username)
)


-- Tạo Bảng lưu thông tin Chi tiết trạng thái đơn hàng
IF  EXISTS (SELECT * FROM sysobjects WHERE name = N'StatusOrder' )
drop table StatusOrder 

create table StatusOrder  
(
	statusOrderId int identity(1,1) primary key NOT NULL,
	statusId nvarchar(100) NOT NULL,
	orderId int,
	isCurrent bit default 1,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL

	constraint FK_StatusOrder_Status foreign key(statusID) references Status(statusID),
	constraint FK_StatusOrder_Order foreign key(orderId) references Orders(orderId)
)
-- Tạo Bảng lưu thông tin Chi Tiết Đơn Hàng
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'OrderDetails' )
drop table OrderDetails

create table OrderDetails
(
	orderDetailId int identity(1,1) primary key NOT NULL,
	orderId int NOT NULL,
	productId int NOT NULL,
	quantity int NOT NULL,
	amount float NOT NULL,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,
	
	constraint FK_OrderDetails_Products foreign key(productId) references Products(productId),
	constraint FK_OrderDetails_Orders foreign key(orderId) references Orders(orderId)
)

 -- Tạo Bảng lưu thông tin Giảm giá sản phẩm
IF EXISTS (SELECT * FROM sysobjects WHERE name = N'Discount' )
drop table Discount

create table Discount
(
	discountId int identity(1,1) primary key NOT NULL,
	productId int NOT NULL,
	orderDetailId int NOT NULL,
	percents float NOT NULL, 
	description nvarchar(1000) NULL,
	isCurrent bit default 1,
	isEnabled bit default 1,
	createdAt date default GETDATE(),
	updatedAt date default GETDATE(),
	createdBy nvarchar(50) default NULL,
	updatedBy nvarchar(50) default NULL,

	constraint FK_Discount_Products foreign key(productId) references Products(productId),
	constraint FK_Discount_OrderDetails foreign key(orderDetailId) references OrderDetails(orderDetailId)
)
--------------------------------------------------------------------------
-- CHÈN DỮ LIỆU --
--------------------------------------------------------------------------


-- * QUẢN LÍ * --


-- Chèn dữ liệu Accounts - Tài khoản
insert into Accounts (username,email,password,name,gender,photo,address,phone,birthday,level,createdBy) 
values	('aquoc','aquoc@fpt.edu.vn','aquoc',N'Lê Anh Quốc',1,'hinh4.JPG',N'Vũng Tàu','0968994727','1996-10-17',0,'aquoc'),
		('longpt','longpt@fpt.edu.vn','longpt',N'Phan Thành Long',1,'Long.JPG',N'Huế','0969381853','2000-07-09',1,'aquoc'),
		('vittt','vittt@fpt.edu.vn','vittt',N'Trần Thị Tường Vi',0,'Vi.JPG',N'Bến Tre','0969381853','2000-08-28',2,'longpt'),
		('vangkt','vangkt@fpt.edu.vn','vangkt',N'Kha Thị Vàng',0,'Vang.PNG',N'Sóc Trăng','0372313826','2000-12-17',2,'longpt'),
		('hoangnd','hoangnd@fpt.edu.vn','hoangnd',N'Nguyễn Đình Hoàng',1,'hinh1.JPG',N'Nam Định','0356667891','2000-01-02',2,'hoangnd'),
		('vietnv','vietnv@fpt.edu.vn','vietnv',N'Nguyễn Văn Việt',1,'hinh2.JPG',N'Lâm Đồng','0909315661','2000-12-27',2,'vietnv'),
		('ngocth','ngocth@fpt.edu.vn','ngocth',N'Trần Hoàng Ngọc',1,'hinh3.JPG',N'Đà Nẵng','0918839939','1998-01-09',2,'ngocth'),
		('duyot','duyot@fpt.edu.vn','duyot',N'Ong Thanh Duy',1,'hinh4.JPG',N'Kiên Giang','0978356876','1998-09-26',2,'duyot'),
		('hanhlt','hanhlt@fpt.edu.vn','hanhlt',N'Lê Thị Hạnh',0,'hinh5.JPG',N'Đà Nẵng','0918839939','1998-01-09',2,'hanhlt')

-- * QUẢN LÍ * --

-- Chèn dữ liệu Categories - Danh Mục
insert into Categories (name,createdBy) 
values	(N'Iphone','longpt')

-- Chèn dữ liệu Producer - Hãng Sản Xuất
--  
insert into  Producers (name,logo,address,email,phone) 
values	('APPLE','Apple.jpg',N'Hoa Kỳ', 'apple@gmail.com','18001127'),
		('SAMSUNG','Samsung.png',N'Hàn Quốc', 'samsung@gmail.com','1800588855'),
		('OPPO','Oppo.jpg',N'Trung Quốc', 'oppo@gmail.com','1800577776'),
		('HUAWEI','Huawei.jpg',N'Trung Quốc', 'huawei@gmail.com','18001085')

-- Chèn dữ liệu Products - Sản phẩm
-- ĐIỆN THOẠI --
insert into Products (name, photo, categoryId, producerId, importPrice, salePrice, description, views, available, special, latest, createdBy) 
values	(N'iphone-7-den-new','Apple.jpg',1,1,10000000,12000000,'',200, 1, 1, 0,'longpt' )



-- Chèn dữ liệu Photos - Hình ảnh
insert into  Photos (link, productID, createdBy) 
values	(N'/Iphone/iphone-11-red.jpg', 1,'longpt')
--


-- Chèn dữ liệu Status - Trạng thái đơn hàng
insert into  Status (statusId, name, createdBy) 
values	('DDH', N'Đã đặt hàng','aquoc'),
		('DXL', N'Đang xử lí','aquoc'),
		('CXL', N'Đã xử lí','aquoc'),
		('DGH', N'Đang giao hàng','aquoc'),
		('DHT', N'Đã hoàn thành', 'aquoc'),
		('DH', N'Đã hủy', 'aquoc')
--


-- Chèn dữ liệu Order - Hóa đơn
insert into  Orders(username, requireDate, receiver, address, description, phone, total, createdBy ) 
values	('vittt', '2020-12-16', N'Vi', N'quận 3', N'giao tận cửa', '0969381853', '25000000','longpt')



-- Chèn dữ liệu StatusOrder - Trạng thái đơn hàng
insert into  StatusOrder (statusId, orderId, createdBy) 
values	('DDH', 1,'longpt')
--


-- Chèn dữ liệu OrderDetails - Hóa đơn chi tiết
insert into  OrderDetails(orderId, productId, quantity, amount,createdBy ) 
values	(1, 1, 2, 12000000,'longpt')




-- Chèn dữ liệu Discounts -  Giảm giá sản phẩm 
insert into Discount(productId, orderDetailId, percents, description, createdBy) 
values	(1, 1, 0.2, N'', 'longpt' )

ALTER TABLE Discount
DROP CONSTRAINT FK_Discount_OrderDetails;

ALTER TABLE Discount
DROP COLUMN orderDetailId;

ALTER TABLE OrderDetails
ADD discountId int NOT NULL DEFAULT 1;

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_Discount_OrderDetails
FOREIGN KEY (discountId) REFERENCES Discount(discountId);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_Discount_OrderDetails
FOREIGN KEY (discountId) REFERENCES Discount(discountId);

ALTER TABLE Category
ADD CONSTRAINT FK_Category_Producer
FOREIGN KEY (producerId) REFERENCES Producers(producerId);

ALTER TABLE StatusOrder
ADD descriptions nvarchar(255);
