USE [master]
GO
/****** Object:  Database [BTLCSDLWEB]    Script Date: 08/11/2019 09:31:23 ******/
CREATE DATABASE [BTLCSDLWEB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTLCSDLWEB_nhom8_dat', FILENAME = N'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_dat.mdf' , SIZE = 5120KB , MAXSIZE = 20480KB , FILEGROWTH = 20%)
 LOG ON 
( NAME = N'BTLCSDLWEB_nhom8_log', FILENAME = N'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_log.ldf' , SIZE = 1024KB , MAXSIZE = 10240KB , FILEGROWTH = 20%)
GO
ALTER DATABASE [BTLCSDLWEB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTLCSDLWEB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTLCSDLWEB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BTLCSDLWEB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BTLCSDLWEB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTLCSDLWEB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTLCSDLWEB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BTLCSDLWEB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTLCSDLWEB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BTLCSDLWEB] SET  MULTI_USER 
GO
ALTER DATABASE [BTLCSDLWEB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTLCSDLWEB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTLCSDLWEB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTLCSDLWEB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BTLCSDLWEB]
GO
/****** Object:  Table [dbo].[tblChitietDH]    Script Date: 08/11/2019 09:31:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChitietDH](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaTP] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[Soluongmua] [int] NOT NULL,
 CONSTRAINT [PK_CTDH] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC,
	[MaTP] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDonhang]    Script Date: 08/11/2019 09:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDonhang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NOT NULL,
	[Diachinhanhang] [nvarchar](100) NOT NULL,
	[Yeucaukhac] [nvarchar](100) NULL,
	[Tongtien] [varchar](20) NOT NULL,
	[Ngaymua] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoaiTP]    Script Date: 08/11/2019 09:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiTP](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaikhoan]    Script Date: 08/11/2019 09:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaikhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Ngaysinh] [date] NULL,
	[Diachi] [nvarchar](50) NOT NULL,
	[Sodienthoai] [varchar](15) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[Matkhau] [varchar](30) NOT NULL,
	[Quyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThucpham]    Script Date: 08/11/2019 09:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblThucpham](
	[MaTP] [int] IDENTITY(1,1) NOT NULL,
	[Maloai] [int] NOT NULL,
	[TenTP] [nvarchar](50) NOT NULL,
	[Dongia] [varchar](20) NOT NULL,
	[Soluongco] [int] NULL,
	[Mota] [nvarchar](500) NULL,
	[urlAnh] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblChitietDH] ON 

GO
INSERT [dbo].[tblChitietDH] ([MaCTDH], [MaTP], [MaDH], [Soluongmua]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[tblChitietDH] ([MaCTDH], [MaTP], [MaDH], [Soluongmua]) VALUES (2, 1, 2, 1)
GO
INSERT [dbo].[tblChitietDH] ([MaCTDH], [MaTP], [MaDH], [Soluongmua]) VALUES (3, 2, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[tblChitietDH] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDonhang] ON 

GO
INSERT [dbo].[tblDonhang] ([MaDH], [MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua]) VALUES (1, 2, N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 2h', N'10000', CAST(0x0000AACD00000000 AS DateTime))
GO
INSERT [dbo].[tblDonhang] ([MaDH], [MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua]) VALUES (2, 3, N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 3h', N'22000', CAST(0x0000AACD00000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblDonhang] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLoaiTP] ON 

GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (1, N'Rau An Toàn')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (2, N'Thủy Hải Sản')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (3, N'Lương Thực')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (4, N'Đặc Sản Vùng Miền')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (5, N'Tạp Hóa')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (6, N'Hoa Quả')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (7, N'Đường Sữa Bánh Kẹo')
GO
INSERT [dbo].[tblLoaiTP] ([Maloai], [TenLoai]) VALUES (8, N'Trứng, Đậu Phụ')
GO
SET IDENTITY_INSERT [dbo].[tblLoaiTP] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTaikhoan] ON 

GO
INSERT [dbo].[tblTaikhoan] ([MaTK], [Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau], [Quyen]) VALUES (1, N'Mạnh Quang', CAST(0x90220B00 AS Date), N'Hà Nội', N'0123456789', N'quang@gmail.com', N'123456', 1)
GO
INSERT [dbo].[tblTaikhoan] ([MaTK], [Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau], [Quyen]) VALUES (2, N'Bá Hải', CAST(0x8F220B00 AS Date), N'Hà Nội', N'0123456789', N'hai@gmail.com', N'123456', 2)
GO
INSERT [dbo].[tblTaikhoan] ([MaTK], [Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau], [Quyen]) VALUES (3, N'Thúy Hường', CAST(0x8E220B00 AS Date), N'Hà Nội', N'0123456789', N'huong@gmail.com', N'123456', 3)
GO
SET IDENTITY_INSERT [dbo].[tblTaikhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThucpham] ON 

GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (1, 1, N'Cà Tím Dài', N'10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo01.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (2, 1, N'Bí Ngô Cô Tiên', N'12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo02.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (3, 1, N'Dưa Chuột', N'15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo03.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (4, 1, N'Cà Rốt', N'12000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo04.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (5, 2, N'Cua', N'10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo05.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (6, 2, N'Cá chép', N'42000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo06.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (7, 2, N'Cá quả miền Bắc', N'45000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo07.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (8, 2, N'Cá rô phi', N'32000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo08.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (9, 2, N'Cá trôi loại to', N'35000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo09.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (10, 2, N'Cua gạch loại to', N'20000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo10.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (11, 2, N'Cá thu tươi cắt lát', N'15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo11.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (12, 2, N'Mực ống', N'120000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo12.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (13, 2, N'Tôm khô (Loại 1)', N'18000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo13.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (14, 2, N'Ốc nhồi', N'12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo14.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (15, 2, N'Cá rô phi loại to', N'45000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo15.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (16, 2, N'Cá trôi loại nhỏ', N'32000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo16.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (17, 3, N'Gạo Bắc Hương', N'18000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo17.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (18, 3, N'Gạo Tám Đài Loan', N'17000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo18.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (19, 3, N'Gạo Nếp', N'15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo19.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (20, 3, N'Đỗ xanh bóc vỏ', N'12000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo20.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (21, 3, N'Lạc nhân thường', N'10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo21.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (22, 3, N'Đỗ đen', N'12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dướ quy định của', N'./data/thucpham/photo22.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (23, 3, N'Vừng trắng', N'15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo23.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (24, 3, N'Miến dong', N'22000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo24.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (25, 6, N'Cam sành', N'15000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', N'./data/thucpham/photo25.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (26, 6, N'Thanh Long', N'25000', 50, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', N'./data/thucpham/photo26.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (27, 6, N'Hồng Xiêm', N'22000', 60, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', N'./data/thucpham/photo27.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (28, 6, N'Quýt Ngọt', N'15000', 30, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', N'./data/thucpham/photo28.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (29, 6, N'Bưởi Da Xanh', N'19000', 40, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', N'./data/thucpham/photo29.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (30, 6, N'Bưởi Năm Roi', N'15000', 50, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', N'./data/thucpham/photo30.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (31, 6, N'Cam Ngọt', N'12000', 60, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', N'./data/thucpham/photo31.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (32, 6, N'Lê Xanh', N'10000', 30, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', N'./data/thucpham/photo32.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (33, 6, N'Đu Đủ Chín', N'12000', 40, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', N'./data/thucpham/photo33.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (34, 6, N'Xoài Cát Chu', N'15000', 50, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', N'./data/thucpham/photo34.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (35, 6, N'Dứa chín', N'12000', 60, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', N'./data/thucpham/photo35.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (36, 7, N'Trứng Gà Ta', N'25000', 50, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo36.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (37, 7, N'Trứng vịt tươi', N'22000', 60, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo37.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (38, 7, N'Đậu mơ loại vừa', N'15000', 30, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo38.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (39, 7, N'Đậu mơ bìa to', N'19000', 40, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo39.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (40, 7, N'Trứng cút', N'15000', 50, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo40.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (41, 7, N'Trứng vịt Lộn', N'12000', 60, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', N'./data/thucpham/photo41.jpg')
GO
INSERT [dbo].[tblThucpham] ([MaTP], [Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (42, 7, N'Trứng gà công nghiệp', N'10000', 30, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.not', N'./data/thucpham/photo42.jpg')
GO
SET IDENTITY_INSERT [dbo].[tblThucpham] OFF
GO
ALTER TABLE [dbo].[tblDonhang] ADD  DEFAULT (getdate()) FOR [Ngaymua]
GO
ALTER TABLE [dbo].[tblChitietDH]  WITH CHECK ADD  CONSTRAINT [FK_tblCTDH1] FOREIGN KEY([MaTP])
REFERENCES [dbo].[tblThucpham] ([MaTP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChitietDH] CHECK CONSTRAINT [FK_tblCTDH1]
GO
ALTER TABLE [dbo].[tblChitietDH]  WITH CHECK ADD  CONSTRAINT [FK_tblCTDH2] FOREIGN KEY([MaDH])
REFERENCES [dbo].[tblDonhang] ([MaDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChitietDH] CHECK CONSTRAINT [FK_tblCTDH2]
GO
ALTER TABLE [dbo].[tblDonhang]  WITH CHECK ADD  CONSTRAINT [FK_tblDH] FOREIGN KEY([MaTK])
REFERENCES [dbo].[tblTaikhoan] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDonhang] CHECK CONSTRAINT [FK_tblDH]
GO
ALTER TABLE [dbo].[tblThucpham]  WITH CHECK ADD  CONSTRAINT [FK_tblTP] FOREIGN KEY([Maloai])
REFERENCES [dbo].[tblLoaiTP] ([Maloai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblThucpham] CHECK CONSTRAINT [FK_tblTP]
GO
USE [master]
GO
ALTER DATABASE [BTLCSDLWEB] SET  READ_WRITE 
GO
