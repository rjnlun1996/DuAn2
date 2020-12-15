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
	importPrice float NOT NULL,
	salePrice float NOT NULL,
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
		(N'Tablet','longpt'),
		(N'Laptop','longpt'),
		(N'PC-LCD','longpt'),
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
insert into Products (name, photo, categoryId, producerId, quantity, date, unitBrief, importPrice, salePrice, discount, description, views, available, special, latest, createdBy) 
values	(N'Điện thoại iPhone 12 Pro Max 512GB',N'iphone-12-pro-max-xanh-duong.jpg',1,1,5,'2020-10-17',N'Máy',37000990,40990000,0.02,'',200, 1, 1, 0,'longpt' ),
		(N'Điện thoại iPhone 12 Pro Max 256GB',N'iphone-12-pro-max-xam.jpg',1,1,2,'2020-10-17',N'Máy',32000990,35990000,0,'',290, 1, 1, 0,'longpt' ),
		(N'Samsung Galaxy Z Flip',N'samsung-galaxy-z-flip.jpg',1,2,5,'2020-10-17',N'Máy',35000990,36000000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Samsung Galaxy A51 Trắng(8GB/128GB)',N'samsung-galaxy-a51-8gb-xanh.jpg',1,2,3,'2020-10-17',N'Máy',7500990,8190000,0,'',100, 1, 1, 0,'longpt' ),
		(N'Điện thoại OPPO A93',N'oppo-a93-trang.jpg',1,3,5,'2020-10-17',N'Máy',7200990,7490000,0.1,N'Sản phẩm đã qua sử dụng',200, 1, 0, 1,'longpt' ),
		(N'Điện thoại Huawei Y6p',N'huawei-y6p-xanh-new.jpg',1,4,4,'2020-10-17',N'Máy',3040000,3340000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Điện thoại OPPO A31 (6GB/128GB)',N'oppo-a31-2020-128gb-den.jpg',1,3,7,'2020-10-17',N'Máy',4390000,4790000,0.02,N'Hàng tồn kho',200, 1, 1, 0,'longpt' ),
		(N'Điện thoại iPhone 11 64GB',N'iphone-11-red.jpg',1,1,5,'2020-10-17',N'Máy',15690000,16690000,0.01,'',200, 1, 1, 0,'longpt' ),
		(N'Samsung Galaxy Note 10+',N'samsung-galaxy-note-10-plus-silver-new.jpg',1,2,5,'2020-10-17',N'Máy',15490000,16490000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Điện thoại OPPO Reno3',N'oppo-reno3-den-new.jpg',1,3,2,'2020-10-17',N'Máy',5990000,6990000,0,'',200, 1, 1, 0,'longpt' )
go

-- LAPTOP --
insert into Products (name, photo, categoryId, producerId, quantity, date, unitBrief, importPrice, salePrice, discount, description, views, available, special, latest, createdBy) 
values	(N'Dell Inspiron 5593 i5 1035G1/8GB/256GB/2GB','dell-inspiron-5593-i5.jpg',3,5,2,'2020-10-17',N'Máy',16390000,17990000,0.01,'',200, 1, 1, 0,'longpt' ),
		(N'Dell Inspiron 7591 i5 9300H/8GB/256GB/3GB','dell-inspiron-7591-i5.jpg',3,5,2,'2020-10-17',N'Máy',23490000,24490000,0,N'Tặng chuột',200, 1, 1, 0,'longpt' ),
		(N'HP 15s fq1111TU i3 1005G1/4GB/256GB/Win10','hp-15s-fq1111tu-i3.jpg',3,6,2,'2020-10-17',N'Máy',11000000,11390000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Asus VivoBook X409JA i5 1035G1/8GB/512GB','asus-vivobook-x409ja.jpg',3,7,2,'2020-10-17',N'Máy',14490000,15490000,0.01,'',200, 1, 1, 0,'longpt' )
go

-- MÁY TÍNH BÀN PC-LCD --
insert into Products (name, photo, categoryId, producerId, quantity, date, unitBrief, importPrice, salePrice, discount, description, views, available, special, latest, createdBy) 
values	(N'LCD Samsung Gaming 24 inch Full HD','lcd-samsung-gaming-24-inch.jpg',4,2,1,'2020-10-17',N'Máy',4070000,4570000,0,'',200, 1, 1, 0,'longpt' ),
		(N'ASUS LCD Gaming 24 inch Full HD 0.5ms 165Hz','lcd-gaming-asus.jpg',4,7,2,'2020-10-17',N'Máy',5000000,5490000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Asus ZenScreen GO 15.6 inch Full HD 5ms','asus-zenscreen.jpg',4,7,2,'2020-10-17',N'Máy',7090000,7990000,0.01,'',200, 1, 1, 0,'longpt' ),
		(N'Dell OptiPlex 5060 Tower i5-8500','pc-dell.jpg',4,5,1,'2020-10-17',N'Máy',10990000,11990000,0.01,'Chính hãng',200, 1, 1, 0,'longpt' ),
		(N'ASUS AS XC-885 i5-9400/4GB/1TB/DVDRW/WIN 10/ĐEN','pc-acer.jpg',4,7,2,'2020-10-17',N'Máy',12090000,12490000,0,'',200, 1, 1, 0,'longpt' ),
		(N'Dell Inspiron 3670 MT','pc-dell-ins.jpg',4,5,2,'2020-10-17',N'Máy',14000000,15290000,0,'',200, 1, 1, 0,'longpt' )
go

-- PHỤ KIỆN --
insert into Products (name, photo, categoryId, producerId, quantity, date, unitBrief, importPrice, salePrice, discount, description, views, available, special, latest, createdBy) 
values	(N'Chuột Không Dây Rapoo 1620 Đen','chuot-khong-day-rapoo.jpg',5,5,10,'2020-10-17',N'Máy',150000,200000,0,'',200, 1, 1, 0,'longpt' ),
	(N'Chuột Bluetooth Silent Rapoo M500','chuot-bluetooth-silent.jpg',5,5,5,'2020-10-17',N'Máy',430000,500000,0,'',200, 1, 1, 0,'longpt' ),
	(N'Bàn Phím Cơ Có Dây Gaming Rapoo V500 Pro Đen','ban-phim-co-co-day-gaming-rapoo.jpg',5,5,7,'2020-10-17',N'Máy',890000,990000,0,'',200, 1, 1, 0,'longpt' ),
	(N'USB OTG 3.1 128GB Type C Sandisk SDDDC3 Đen','usb-otg-31-128gb.jpg',5,5,15,'2020-10-17',N'Máy',600000,690000,0,'',200, 1, 1, 0,'longpt' ),
	(N'Thẻ nhớ MicroSD 200 GB SanDisk Class 10','the-nho-microsd-200gb.jpg',5,5,5,'2020-10-17',N'Máy',1500000,1680000,0.02,'',200, 1, 1, 0,'longpt' ),
	(N'Loa bluetooth Sony Extra Bass SRS-XB43','loa-bluetooth-sony.jpg',5,6,5,'2020-10-17',N'Máy',4800000,4990000,0.02,'',200, 1, 1, 0,'longpt' )
go

-- Chèn dữ liệu Photos - Hình ảnh
insert into  Photos (link, productID, createdBy) 
values	(N'/hinhLaptop/dell-inspiron-5593-n5i5461w-i5-2.jpg', 11,'longpt'),
		(N'/hinhLaptop/dell-inspiron-7591-i5-2.jpg', 12,'longpt'),
		(N'/hinhLaptop/hp-15s-fq1111tu-i3-2.jpg', 13,'longpt'),
		(N'/hinhLaptop/asus-vivobook-x409ja-2.jpg', 14,'longpt'),
		(N'/hinhDienthoai/samsung-galaxy-a51-silver.jpg', 4,'longpt'),
		(N'/hinhDienthoai/iphone-12-trang-new.jpg', 1,'longpt'),
		(N'/hinhDienthoai/samsung-galaxy-z-lip-2.jpg', 3,'longpt'),
		(N'/hinhDienthoai/oppo-a93-2.jpg', 5,'longpt'),
		(N'/hinhDienthoai/oppo-A93-3.jpg', 5,'longpt'),
		(N'/hinhPhukien/chuot-khong-day-rapoo-2.jpg', 21,'longpt'),
		(N'/hinhPhukien/ban-phim-co-co-day-gaming-rapoo-2.jpg', 23,'longpt'),
		(N'/hinhPhukien/ban-phim-co-co-day-gaming-rapoo-3.jpg', 23,'longpt')
go

-- Chèn dữ liệu Order - Hóa đơn
insert into  Orders(username, requireDate, receiver, address, description, status, phone, total, createdBy ) 
values	('vittt', '2020-12-16', N'Vi', N'quận 3', N'giao tận cửa', N'Đã nhận', '0969381853', '25000000','longpt')

go

-- Chèn dữ liệu OrderDetails - Hóa đơn chi tiết
insert into  OrderDetails(orderId, productId, quantity, amount, discount,createdBy ) 
values	(1, 1, 2, 2000000, 0.02, 'longpt')

go