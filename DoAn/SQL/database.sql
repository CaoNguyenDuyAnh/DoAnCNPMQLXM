USE [master]
GO
/****** Object:  Database [QLXEMAY]    Script Date: 08/01/2022 5:22:11 PM ******/
CREATE DATABASE [QLXEMAY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLXEMAY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BIGBOSS\MSSQL\DATA\QLXEMAY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLXEMAY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BIGBOSS\MSSQL\DATA\QLXEMAY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLXEMAY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLXEMAY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLXEMAY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLXEMAY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLXEMAY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLXEMAY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLXEMAY] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLXEMAY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLXEMAY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLXEMAY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLXEMAY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLXEMAY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLXEMAY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLXEMAY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLXEMAY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLXEMAY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLXEMAY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLXEMAY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLXEMAY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLXEMAY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLXEMAY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLXEMAY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLXEMAY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLXEMAY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLXEMAY] SET RECOVERY FULL 
GO
ALTER DATABASE [QLXEMAY] SET  MULTI_USER 
GO
ALTER DATABASE [QLXEMAY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLXEMAY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLXEMAY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLXEMAY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLXEMAY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLXEMAY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLXEMAY', N'ON'
GO
ALTER DATABASE [QLXEMAY] SET QUERY_STORE = OFF
GO
USE [QLXEMAY]
GO
/****** Object:  Table [dbo].[tb_CHITIETMAUXE]    Script Date: 08/01/2022 5:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CHITIETMAUXE](
	[MAXE] [nchar](5) NOT NULL,
	[IDMAU] [int] NOT NULL,
	[IDCHITIETXE] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tb_CHITIETMAUXE_1] PRIMARY KEY CLUSTERED 
(
	[IDCHITIETXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_CHITIETHOADON]    Script Date: 08/01/2022 5:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CHITIETHOADON](
	[MAHD] [char](5) NOT NULL,
	[IDCHITIETXE] [int] NOT NULL,
	[SOLUONG] [int] NULL,
	[TONGTIEN] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tb_CHITIETHOADON_1] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[IDCHITIETXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_XEMAY]    Script Date: 08/01/2022 5:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_XEMAY](
	[MAXE] [char](5) NOT NULL,
	[TENXE] [nvarchar](50) NULL,
	[MALOAI] [char](5) NOT NULL,
	[MANCC] [char](5) NOT NULL,
	[DUNGTICH] [nvarchar](5) NULL,
	[TINHTRANG] [nvarchar](3) NULL,
	[GIABAN] [money] NULL,
	[DISABLE] [bit] NULL,
 CONSTRAINT [PK_tb_XEMAY] PRIMARY KEY CLUSTERED 
(
	[MAXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[CHARTXE]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[CHARTXE]()
returns table as return 

SELECT  top 10   sum(a.SOLUONG) as SOLUONG,   c.TENXE
FROM tb_CHITIETHOADON a, tb_CHITIETMAUXE b, tb_XEMAY c 
WHERE a.IDCHITIETXE = b.IDCHITIETXE and b.MAXE = c.MAXE
GROUP by c.TENXE
GO
/****** Object:  Table [dbo].[tb_HOADON]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HOADON](
	[MAHD] [char](5) NOT NULL,
	[NGAYLAP] [datetime] NULL,
	[MAKH] [char](5) NOT NULL,
	[MANV] [char](4) NOT NULL,
 CONSTRAINT [PK_tb_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KHACHHANG]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KHACHHANG](
	[MAKH] [char](5) NOT NULL,
	[TENKH] [nvarchar](30) NULL,
	[SDT] [nvarchar](11) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[DISABLE] [bit] NULL,
 CONSTRAINT [PK_tb_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LOAIXE]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LOAIXE](
	[MALOAI] [char](5) NOT NULL,
	[TENLOAIXE] [nvarchar](15) NULL,
	[DISABLE] [bit] NULL,
 CONSTRAINT [PK_tb_LOAIXE] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_MAUSAC]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_MAUSAC](
	[IDMAU] [int] IDENTITY(1,1) NOT NULL,
	[TENMAU] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_MAUSAC] PRIMARY KEY CLUSTERED 
(
	[IDMAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NHACUNGCAP]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NHACUNGCAP](
	[MANCC] [char](5) NOT NULL,
	[TENNCC] [nvarchar](30) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [nvarchar](11) NULL,
	[DISABLE] [bit] NULL,
 CONSTRAINT [PK_tb_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NHANVIEN]    Script Date: 08/01/2022 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NHANVIEN](
	[MANV] [char](4) NOT NULL,
	[TENNV] [nvarchar](30) NULL,
	[GIOITINH] [nvarchar](3) NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[CMND] [nvarchar](15) NULL,
	[SDT] [nvarchar](11) NULL,
	[CHUCVU] [nvarchar](20) NULL,
	[USERNAME] [nvarchar](10) NULL,
	[PASSWORD] [nvarchar](10) NULL,
	[DISABLE] [bit] NULL,
 CONSTRAINT [PK_tb_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_CHITIETHOADON] ([MAHD], [IDCHITIETXE], [SOLUONG], [TONGTIEN]) VALUES (N'HD001', 1, 2, CAST(222420000 AS Numeric(18, 0)))
INSERT [dbo].[tb_CHITIETHOADON] ([MAHD], [IDCHITIETXE], [SOLUONG], [TONGTIEN]) VALUES (N'HD002', 2, 1, CAST(31570000 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[tb_CHITIETMAUXE] ON 

INSERT [dbo].[tb_CHITIETMAUXE] ([MAXE], [IDMAU], [IDCHITIETXE]) VALUES (N'XE009', 46, 1)
INSERT [dbo].[tb_CHITIETMAUXE] ([MAXE], [IDMAU], [IDCHITIETXE]) VALUES (N'XE019', 52, 2)
INSERT [dbo].[tb_CHITIETMAUXE] ([MAXE], [IDMAU], [IDCHITIETXE]) VALUES (N'XE009', 47, 3)
SET IDENTITY_INSERT [dbo].[tb_CHITIETMAUXE] OFF
GO
INSERT [dbo].[tb_HOADON] ([MAHD], [NGAYLAP], [MAKH], [MANV]) VALUES (N'HD001', CAST(N'2022-01-08T00:00:00.000' AS DateTime), N'KH004', N'NV04')
INSERT [dbo].[tb_HOADON] ([MAHD], [NGAYLAP], [MAKH], [MANV]) VALUES (N'HD002', CAST(N'2022-01-07T00:00:00.000' AS DateTime), N'KH004', N'NV04')
GO
INSERT [dbo].[tb_KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [DISABLE]) VALUES (N'KH001', N'Nguyễn Trần Vũ Đại Dương', N'0909999000', N'Thành phố Hồ Chí Minh', 0)
INSERT [dbo].[tb_KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [DISABLE]) VALUES (N'KH002', N'Trần Đức Trọng', N'0369963321', N'Bình Dương', 0)
INSERT [dbo].[tb_KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [DISABLE]) VALUES (N'KH003', N'Đoàn Công Sơn', N'0123321147', N'Bình Phước', 0)
INSERT [dbo].[tb_KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [DISABLE]) VALUES (N'KH004', N'Nguyễn Phú Đức', N'0000000009', N'Bình Dương', 0)
INSERT [dbo].[tb_KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [DISABLE]) VALUES (N'KH005', N'Nguyễn Tứ', N'0000000001', N'Khánh Hòa', 1)
GO
INSERT [dbo].[tb_LOAIXE] ([MALOAI], [TENLOAIXE], [DISABLE]) VALUES (N'ML001', N'Xe số', 0)
INSERT [dbo].[tb_LOAIXE] ([MALOAI], [TENLOAIXE], [DISABLE]) VALUES (N'ML002', N'Xe tay ga', 0)
INSERT [dbo].[tb_LOAIXE] ([MALOAI], [TENLOAIXE], [DISABLE]) VALUES (N'ML003', N'Xe côn', 0)
GO
SET IDENTITY_INSERT [dbo].[tb_MAUSAC] ON 

INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (46, N'Đen')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (47, N'Đỏ')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (48, N'Xanh Đen Bạc')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (49, N'Đen Bạc')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (50, N'Đen Mờ')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (51, N'Trắng Đen Bạc')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (52, N'Đỏ Đen')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (53, N'Đen Nhám')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (54, N'Xám Đen')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (55, N'Đen Trắng')
INSERT [dbo].[tb_MAUSAC] ([IDMAU], [TENMAU]) VALUES (56, N'Đen Đỏ')
SET IDENTITY_INSERT [dbo].[tb_MAUSAC] OFF
GO
INSERT [dbo].[tb_NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT], [DISABLE]) VALUES (N'NCC01', N'Công ty Yamaha', N'Thành phố Hồ Chí Minh', N'0123456789', 0)
INSERT [dbo].[tb_NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT], [DISABLE]) VALUES (N'NCC02', N'Công ty SYM', N'Quảng Nam', N'0147258369', 0)
INSERT [dbo].[tb_NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT], [DISABLE]) VALUES (N'NCC03', N'Công ty Honda', N'Quảng Ngãi', N'0987654321', 0)
INSERT [dbo].[tb_NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT], [DISABLE]) VALUES (N'NCC04', N'Công ty Suzuki', N'Quảng Trị', N'0369258147', 0)
GO
INSERT [dbo].[tb_NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [SDT], [CHUCVU], [USERNAME], [PASSWORD], [DISABLE]) VALUES (N'NV01', N'Bùi Lâm Viễn', N'Nam', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Quảng Nam', N'123456789', N'0909090909', N'Tư vấn', N'vien', N'1911065458', 0)
INSERT [dbo].[tb_NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [SDT], [CHUCVU], [USERNAME], [PASSWORD], [DISABLE]) VALUES (N'NV02', N'Đặng Duy Mạnh', N'Nam', CAST(N'2001-01-02T00:00:00.000' AS DateTime), N'Quảng Ngãi', N'321654987', N'0585858585', N'Quản lý', N'manh', N'1911066211', 0)
INSERT [dbo].[tb_NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [SDT], [CHUCVU], [USERNAME], [PASSWORD], [DISABLE]) VALUES (N'NV03', N'Cao Nguyễn Duy Anh', N'Nam', CAST(N'2001-01-03T00:00:00.000' AS DateTime), N'Thành Phố Hồ Chí Minh', N'987654321', N'0323232323', N'Tư vấn', N'anh', N'1911065968', 0)
INSERT [dbo].[tb_NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [SDT], [CHUCVU], [USERNAME], [PASSWORD], [DISABLE]) VALUES (N'NV04', N'Nguyễn Đức Hậu', N'Nam', CAST(N'2001-01-04T00:00:00.000' AS DateTime), N'Đồng Nai', N'147258369', N'0373737373', N'Bán hàng', N'hau', N'1911066071', 0)
INSERT [dbo].[tb_NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [SDT], [CHUCVU], [USERNAME], [PASSWORD], [DISABLE]) VALUES (N'NV05', N'Nguyễn Phú Đức', N'Nam', CAST(N'2001-07-30T00:00:00.000' AS DateTime), N'Bình Dương', N'987654321', N'0111111111', N'Thu ngân', NULL, NULL, 1)
GO
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE001', N'Sirius', N'ML001', N'NCC01', N'110', N'Mới', 20340000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE002', N'Wave Alpha', N'ML002', N'NCC03', N'110', N'Mới', 17890000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE003', N'Exciter', N'ML003', N'NCC01', N'150', N'Mới', 49290000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE004', N'Air Blade', N'ML002', N'NCC03', N'150', N'Mới', 55490000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE005', N'Winner X', N'ML003', N'NCC03', N'150', N'Mới', 46090000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE006', N'Vision', N'ML002', N'NCC03', N'110', N'Mới', 30290000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE007', N'Future', N'ML001', N'NCC03', N'125', N'Mới', 30290000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE008', N'Vario', N'ML002', N'NCC03', N'125', N'Mới', 54400000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE009', N'SH', N'ML002', N'NCC03', N'150', N'Mới', 101100000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE010', N'Dream', N'ML001', N'NCC03', N'125', N'Mới', 18990000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE011', N'Jupiter', N'ML001', N'NCC01', N'114', N'Mới', 30200000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE012', N'CBR', N'ML003', N'NCC03', N'150', N'Mới', 82000000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE013', N'Raider', N'ML003', N'NCC04', N'150', N'Mới', 49190000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE014', N'R15', N'ML003', N'NCC01', N'155', N'Mới', 70000000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE015', N'SYM Star SR 170', N'ML003', N'NCC02', N'175', N'Mới', 49900000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE016', N'Super Cup 125', N'ML001', N'NCC03', N'125', N'Mới', 86900000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE017', N'GSX-R150', N'ML003', N'NCC04', N'150', N'Mới', 71990000.0000, 1)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE018', N'Super Cub 50', N'ML001', N'NCC03', N'50', N'Cũ', 15000000.0000, 0)
INSERT [dbo].[tb_XEMAY] ([MAXE], [TENXE], [MALOAI], [MANCC], [DUNGTICH], [TINHTRANG], [GIABAN], [DISABLE]) VALUES (N'XE019', N'Star SR 125 EFI', N'ML003', N'NCC02', N'125', N'Mới', 28700000.0000, 0)
GO
USE [master]
GO
ALTER DATABASE [QLXEMAY] SET  READ_WRITE 
GO
