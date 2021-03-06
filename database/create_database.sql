USE [master]
GO
/****** Object:  Database [DatabaseNKSLK]    Script Date: 12/21/2021 10:57:59 PM ******/
CREATE DATABASE [DatabaseNKSLK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatabaseNKSLK_1', FILENAME = N'D:\data\DatabaseNKSLK.mdf' , SIZE = 46080KB , MAXSIZE = 51200KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DatabaseNKSLK_1_log', FILENAME = N'D:\data\DatabaseNKSLK.ldf' , SIZE = 10240KB , MAXSIZE = 18432KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DatabaseNKSLK] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseNKSLK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseNKSLK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DatabaseNKSLK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseNKSLK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseNKSLK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DatabaseNKSLK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseNKSLK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatabaseNKSLK] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseNKSLK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseNKSLK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatabaseNKSLK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatabaseNKSLK] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DatabaseNKSLK] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DatabaseNKSLK]
GO
/****** Object:  Table [dbo].[CongNhan]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongNhan](
	[MaCongNhan] [char](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgayThangNamSinh] [date] NULL,
	[PhongBan] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[LuongHopDong] [nvarchar](50) NULL,
	[LuongBaoHiem] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[TaiKhoan] [char](30) NULL,
	[MatKhau] [char](30) NULL,
	[LaAdmin] [bit] NULL,
 CONSTRAINT [PK_CongNhan] PRIMARY KEY CLUSTERED 
(
	[MaCongNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongNhanThucHienKhoan]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongNhanThucHienKhoan](
	[MaDanhMucCNTHK] [char](20) NOT NULL,
	[MaCongNhan] [char](20) NOT NULL,
	[ThoiGianBatDau] [time](7) NULL,
	[ThoiGianKetThuc] [time](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCongViec] [char](20) NOT NULL,
	[TenCongViec] [nvarchar](50) NULL,
	[DinhMucKhoan] [float] NULL,
	[DonViKhoan] [float] NULL,
	[HeSoKhoan] [float] NULL,
	[DinhMucLaoDong] [float] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucCongNhanThucHienKhoan]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucCongNhanThucHienKhoan](
	[MaDanhMucCNTHK] [char](20) NOT NULL,
	[SoLuong] [int] NULL,
	[LaKhoanChung] [bit] NULL,
 CONSTRAINT [PK_DanhMucCongNhanThucHienKhoan] PRIMARY KEY CLUSTERED 
(
	[MaDanhMucCNTHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucCongViec]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucCongViec](
	[MaDanhMucCongViec] [char](20) NOT NULL,
	[MaCongViec] [char](20) NULL,
	[SoLuongDatDuoc] [int] NULL,
	[SoLoSanPham] [char](20) NULL,
	[MaSanPham] [char](20) NULL,
 CONSTRAINT [PK_DanhMucCongViec] PRIMARY KEY CLUSTERED 
(
	[MaDanhMucCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NKSLK]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NKSLK](
	[MaNK] [char](20) NOT NULL,
	[NgayThucHienKhoan] [date] NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
	[MaDanhMucCNTHK] [char](20) NULL,
	[MaDanhMucCongViec] [char](20) NULL,
 CONSTRAINT [PK_NKSLK] PRIMARY KEY CLUSTERED 
(
	[MaNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [char](20) NOT NULL,
	[TenSanPham] [char](50) NULL,
	[SoDangKy] [int] NULL,
	[HanSuDung] [date] NULL,
	[QuyCach] [nvarchar](50) NULL,
	[NgayDangKy] [date] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN00001             ', N'Lê Thị Hương Trang', CAST(N'1999-10-06' AS Date), N'Nhân sự', N'Quản lý', N'Thanh Hóa', N'10000000', N'9000000', 0, N'lethihuongtrang               ', N'123456                        ', 1)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN00002             ', N'Nguyễn Thị Huyền', CAST(N'1999-01-01' AS Date), N'Nhân sự', N'Quản lý', N'Nghệ An', N'10000000', N'9000000', 0, N'nguyenthihuyen                ', N'123456                        ', 1)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0001              ', N'Nguyễn Quang Linh', CAST(N'1999-01-01' AS Date), N'Nhân sự', N'Kế toán', N'Nam Định', N'1200', N'1500', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0022              ', N'Nguyễn Hải Yến', CAST(N'1993-02-02' AS Date), N'Kế hoạch', N'Thư ký', N'Nghệ An', N'1500', N'1700', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0104              ', N'Nguyễn Quang Hải', CAST(N'1990-01-08' AS Date), N'Nhân sự', N'Kế toán', N' Nam Định', N'1100', N'1300', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0106              ', N'Nguyễn Quang Hải', CAST(N'1992-01-07' AS Date), N'Kế hoạch', N'Kỹ sư', N'Tuyên Quang', N'1300', N'1450', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0107              ', N'Nguyễn Quang Hải', CAST(N'1999-03-01' AS Date), N'Nhân sự', N'Công nhân', N'An Giang', N'700', N'900', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0111              ', N'Nguyễn Quang Hải', CAST(N'1998-08-07' AS Date), N'Nhân sự', N'Công nhân', N'Nghệ An', N'800', N'900', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0115              ', N'Nguyễn Quang Hải', CAST(N'1995-02-09' AS Date), N'Kế hoạch', N'Thư ký', N'Bình Dương', N'1200', N'1300', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0121              ', N'Nguyễn Quang Hải', CAST(N'1998-03-04' AS Date), N'Nhân sự', N'Công nhân', N'Hải Dương', N'950', N'1115', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0123              ', N'Nguyễn Văn Mạnh', CAST(N'1997-02-09' AS Date), N'Nhân sự', N'Công nhân', N'Nam Định', N'900', N'1000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'CN0128              ', N'Nguyễn Hải Thanh', CAST(N'1999-02-01' AS Date), N'Nhân sự', N'Bảo vệ', N'Ninh Bình', N'900', N'1100', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN1                ', N'Nguyễn văn Ba', CAST(N'1979-01-01' AS Date), N'Xây dựng 1', N'Công nhân', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN10               ', N'Hoàng công Văn', CAST(N'1967-01-01' AS Date), N'Xây dựng 5', N'Đốc công', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN11               ', N'Đinh xuân Bảy', CAST(N'1967-01-01' AS Date), N'Xây dựng 1', N'Công nhân', N'Hà nội', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN12               ', N'Lê hồng Táng', CAST(N'1967-01-01' AS Date), N'Xây dựng 2', N'Công nhân', N'Hà nội', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN13               ', N'Trịnh văn Hai', CAST(N'1967-01-01' AS Date), N'Xây dựng 3', N'Quản lý', N'Hà nội', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN14               ', N'Ngô bá Cháy', CAST(N'1967-01-01' AS Date), N'Xây dựng 4', N'Giám sát', N'Hà nội', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN15               ', N'Hoàng công Văn', CAST(N'1967-01-01' AS Date), N'Xây dựng 5', N'Đốc công', N'Hà nội', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN16               ', N'Đinh xuân Bảy', CAST(N'1967-01-01' AS Date), N'Xây dựng 1', N'Công nhân bậc 1', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN17               ', N'Lê hồng Táng', CAST(N'1967-01-01' AS Date), N'Xây dựng 2', N'Công nhân bậc 2', N'', N'4500000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN18               ', N'Trịnh văn Hai', CAST(N'1967-01-01' AS Date), N'Xây dựng 3', N'Quản lý', N'', N'5000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN19               ', N'Ngô bá Cháy', CAST(N'1967-01-01' AS Date), N'Xây dựng 4', N'Giám sát', N'', N'6000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN2                ', N'Phạm văn Bá', CAST(N'1978-01-01' AS Date), N'Xây dựng 2', N'Công nhân', N'', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN20               ', N'Hoàng công Văn', CAST(N'1900-01-01' AS Date), N'Xây dựng 5', N'Đốc công', N'', N'5500000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN21               ', N'Nguyễn văn Ba', CAST(N'1979-01-01' AS Date), N'Xây dựng 1', N'Công nhân', N'Hà nội', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN22               ', N'Nguyễn văn Ba', CAST(N'1978-01-01' AS Date), N'Xây dựng 2', N'Công nhân', N'Hải phòng', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN23               ', N'Nguyễn văn Ba', CAST(N'1977-01-01' AS Date), N'Xây dựng 3', N'Quản lý', N'Thái bình', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN24               ', N'Nguyễn văn Ba', CAST(N'1976-01-01' AS Date), N'Xây dựng 4', N'Giám sát', N'Nam định', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN25               ', N'Nguyễn văn Ba', CAST(N'1975-01-01' AS Date), N'Xây dựng 5', N'Đốc công', N'Hưng yên', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN3                ', N'Ngô thì nhậm', CAST(N'1977-01-01' AS Date), N'Xây dựng 3', N'Quản lý', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN4                ', N'Nguyễn tiến bách', CAST(N'1976-01-01' AS Date), N'Xây dựng 4', N'Giám sát', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN5                ', N'Nguyễn văn Hoàng', CAST(N'1975-01-01' AS Date), N'Xây dựng 5', N'Đốc công', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN6                ', N'Đinh xuân Bảy', CAST(N'1967-01-01' AS Date), N'Xây dựng 1', N'Công nhân', N'', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN7                ', N'Lê hồng Táng', CAST(N'1967-01-01' AS Date), N'Xây dựng 2', N'Công nhân', N'', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN8                ', N'Trịnh văn Hai', CAST(N'1967-01-01' AS Date), N'Xây dựng 3', N'Quản lý', N'', N'4000000', N'4750000', 0, NULL, NULL, NULL)
INSERT [dbo].[CongNhan] ([MaCongNhan], [HoTen], [NgayThangNamSinh], [PhongBan], [ChucVu], [QueQuan], [LuongHopDong], [LuongBaoHiem], [GioiTinh], [TaiKhoan], [MatKhau], [LaAdmin]) VALUES (N'MCN9                ', N'Ngô bá Cháy', CAST(N'1967-01-01' AS Date), N'Xây dựng 4', N'Giám sát', N'', N'4000000', N'4750000', 1, NULL, NULL, NULL)
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK1             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK2             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK3             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK4             ', N'MCN2                ', CAST(N'06:30:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK5             ', N'MCN2                ', CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK6             ', N'MCN3                ', CAST(N'07:00:00' AS Time), CAST(N'15:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK7             ', N'MCN4                ', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK8             ', N'MCN5                ', CAST(N'13:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK9             ', N'MCN6                ', CAST(N'14:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK10            ', N'MCN7                ', CAST(N'14:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK1             ', N'MCN7                ', CAST(N'15:00:00' AS Time), CAST(N'21:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK2             ', N'MCN8                ', CAST(N'21:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK3             ', N'MCN8                ', CAST(N'22:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK4             ', N'MCN9                ', CAST(N'23:00:00' AS Time), CAST(N'06:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK1             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK2             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK3             ', N'MCN1                ', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK4             ', N'MCN2                ', CAST(N'06:30:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK5             ', N'MCN2                ', CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK6             ', N'MCN3                ', CAST(N'07:00:00' AS Time), CAST(N'15:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK7             ', N'MCN4                ', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK8             ', N'MCN5                ', CAST(N'13:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK9             ', N'MCN6                ', CAST(N'14:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK10            ', N'MCN7                ', CAST(N'14:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK1             ', N'MCN7                ', CAST(N'15:00:00' AS Time), CAST(N'21:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK2             ', N'MCN8                ', CAST(N'21:00:00' AS Time), CAST(N'07:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK3             ', N'MCN8                ', CAST(N'22:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[CongNhanThucHienKhoan] ([MaDanhMucCNTHK], [MaCongNhan], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'MDMTHK4             ', N'MCN9                ', CAST(N'23:00:00' AS Time), CAST(N'06:30:00' AS Time))
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV1                ', N'May cổ áo', 1000000, 10, 3, 2000000, 758160)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV10               ', N'May cổ áo', 1000000, 9, 2, 2000000, 505440)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV11               ', N'May cổ áo', 1000000, 8, 1, 2000000, 252720)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV2                ', N'May cổ áo', 1000000, 7, 2, 2000000, 505440)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV3                ', N'May cổ áo', 1000000, 6, 3, 2000000, 758160)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV4                ', N'May cổ áo', 1000000, 5, 4, 2000000, 1010880)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV5                ', N'May cổ áo', 1000000, 4, 1, 2000000, 252720)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV6                ', N'May cổ áo', 1000000, 5, 2, 2000000, 505440)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV7                ', N'May cổ áo', 1000000, 3, 3, 2000000, 758160)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV8                ', N'May cổ áo', 1000000, 2, 4, 2000000, 1010880)
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [DinhMucKhoan], [DonViKhoan], [HeSoKhoan], [DinhMucLaoDong], [DonGia]) VALUES (N'MCV9                ', N'May cổ áo', 1000000, 1, 5, 2000000, 1263600)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK1             ', 2, 1)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK10            ', 1, 0)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK2             ', 2, 1)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK3             ', 2, 1)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK4             ', 2, 1)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK5             ', 1, 0)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK6             ', 1, 0)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK7             ', 1, 0)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK8             ', 1, 0)
INSERT [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK], [SoLuong], [LaKhoanChung]) VALUES (N'MDMTHK9             ', 1, 0)
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV1              ', N'MCV1                ', 1000, N'9876543219          ', N'MSP1                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV10             ', N'MCV1                ', 2000, N'9876543211          ', N'MSP10               ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV2              ', N'MCV2                ', 2000, N'9876543218          ', N'MSP2                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV3              ', N'MCV3                ', 3000, N'9876543217          ', N'MSP3                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV4              ', N'MCV4                ', 2000, N'9876543216          ', N'MSP4                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV5              ', N'MCV5                ', 1000, N'9876543217          ', N'MSP5                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV6              ', N'MCV6                ', 3000, N'9876543215          ', N'MSP6                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV7              ', N'MCV7                ', 4000, N'9876543214          ', N'MSP7                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV8              ', N'MCV8                ', 5000, N'9876543213          ', N'MSP8                ')
INSERT [dbo].[DanhMucCongViec] ([MaDanhMucCongViec], [MaCongViec], [SoLuongDatDuoc], [SoLoSanPham], [MaSanPham]) VALUES (N'MDMCV9              ', N'MCV9                ', 2000, N'9876543211          ', N'MSP9                ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK1               ', CAST(N'2021-09-20' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK1             ', N'MDMCV1              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK10              ', CAST(N'2021-09-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time), N'MDMTHK10            ', N'MDMCV10             ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK11              ', CAST(N'2021-09-22' AS Date), CAST(N'22:00:00' AS Time), CAST(N'06:00:00' AS Time), N'MDMTHK4             ', N'MDMCV2              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK2               ', CAST(N'2021-09-21' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK2             ', N'MDMCV3              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK3               ', CAST(N'2021-09-22' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK3             ', N'MDMCV2              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK4               ', CAST(N'2021-09-23' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK4             ', N'MDMCV4              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK5               ', CAST(N'2021-09-24' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK5             ', N'MDMCV5              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK6               ', CAST(N'2021-08-20' AS Date), CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), N'MDMTHK6             ', N'MDMCV7              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK7               ', CAST(N'2021-10-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time), N'MDMTHK7             ', N'MDMCV6              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK8               ', CAST(N'2021-11-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time), N'MDMTHK8             ', N'MDMCV8              ')
INSERT [dbo].[NKSLK] ([MaNK], [NgayThucHienKhoan], [GioBatDau], [GioKetThuc], [MaDanhMucCNTHK], [MaDanhMucCongViec]) VALUES (N'MaNK9               ', CAST(N'2021-11-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time), N'MDMTHK9             ', N'MDMCV9              ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP1                ', N'Áo thun                                           ', 123456788, CAST(N'2022-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP10               ', N'Áo thun                                           ', 123456780, CAST(N'2023-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP11               ', N'Áo thun                                           ', 1234567881, CAST(N'2024-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP2                ', N'Áo thun                                           ', 123456789, CAST(N'2023-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP3                ', N'Áo thun                                           ', 123456781, CAST(N'2024-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP4                ', N'Áo thun                                           ', 123456782, CAST(N'2025-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP5                ', N'Áo thun                                           ', 123456783, CAST(N'2026-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP6                ', N'Áo thun                                           ', 123456784, CAST(N'2027-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP7                ', N'Áo thun                                           ', 123456785, CAST(N'2028-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP8                ', N'Áo thun                                           ', 123456786, CAST(N'2021-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoDangKy], [HanSuDung], [QuyCach], [NgayDangKy]) VALUES (N'MSP9                ', N'Áo thun                                           ', 123456787, CAST(N'2022-09-26' AS Date), N'mặc lên người', CAST(N'2021-09-26' AS Date))
ALTER TABLE [dbo].[DanhMucCongNhanThucHienKhoan] ADD  CONSTRAINT [DF_DanhMucCongNhanThucHienKhoan_LaKhoanChung]  DEFAULT ((1)) FOR [LaKhoanChung]
GO
ALTER TABLE [dbo].[CongNhanThucHienKhoan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhanThucHienKhoan] FOREIGN KEY([MaDanhMucCNTHK])
REFERENCES [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK])
GO
ALTER TABLE [dbo].[CongNhanThucHienKhoan] CHECK CONSTRAINT [FK_CongNhanThucHienKhoan]
GO
ALTER TABLE [dbo].[CongNhanThucHienKhoan]  WITH CHECK ADD  CONSTRAINT [FK1_CongNhanThucHienKhoan] FOREIGN KEY([MaCongNhan])
REFERENCES [dbo].[CongNhan] ([MaCongNhan])
GO
ALTER TABLE [dbo].[CongNhanThucHienKhoan] CHECK CONSTRAINT [FK1_CongNhanThucHienKhoan]
GO
ALTER TABLE [dbo].[DanhMucCongViec]  WITH CHECK ADD  CONSTRAINT [FK_DanhMucCongViec] FOREIGN KEY([MaCongViec])
REFERENCES [dbo].[CongViec] ([MaCongViec])
GO
ALTER TABLE [dbo].[DanhMucCongViec] CHECK CONSTRAINT [FK_DanhMucCongViec]
GO
ALTER TABLE [dbo].[DanhMucCongViec]  WITH CHECK ADD  CONSTRAINT [FK1_DanhMucCongViec] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhMucCongViec] CHECK CONSTRAINT [FK1_DanhMucCongViec]
GO
ALTER TABLE [dbo].[NKSLK]  WITH CHECK ADD  CONSTRAINT [FK_NKSLK] FOREIGN KEY([MaDanhMucCNTHK])
REFERENCES [dbo].[DanhMucCongNhanThucHienKhoan] ([MaDanhMucCNTHK])
GO
ALTER TABLE [dbo].[NKSLK] CHECK CONSTRAINT [FK_NKSLK]
GO
ALTER TABLE [dbo].[NKSLK]  WITH CHECK ADD  CONSTRAINT [FK1_NKSLK] FOREIGN KEY([MaDanhMucCongViec])
REFERENCES [dbo].[DanhMucCongViec] ([MaDanhMucCongViec])
GO
ALTER TABLE [dbo].[NKSLK] CHECK CONSTRAINT [FK1_NKSLK]
GO
/****** Object:  StoredProcedure [dbo].[CNFromPBCV]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CNFromPBCV]
as
select *
from CongNhan, (select COUNT(MaCongNhan)as 'SL',PhongBan from CongNhan group by PhongBan)as s
where CongNhan.PhongBan=s.PhongBan
select *
from CongNhan, (select COUNT(MaCongNhan)as 'SL',ChucVu from CongNhan group by ChucVu)as s
where CongNhan.ChucVu=s.ChucVu


GO
/****** Object:  StoredProcedure [dbo].[CNNghiHuu]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CNNghiHuu]
as
select MaCongNhan,HoTen,DATEDIFF(YEAR,NgayThangNamSinh,GETDATE())  as 'Tuổi' from CongNhan
where (DATEDIFF(YEAR,NgayThangNamSinh,GETDATE()) =54 and GioiTinh=1) 
or(DATEDIFF(YEAR,NgayThangNamSinh,GETDATE()) =49 and GioiTinh=0)



GO
/****** Object:  StoredProcedure [dbo].[CVMaxMin]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CVMaxMin]
as
print('cv giá thấp nhất')
select top 1 *
from CongViec
order by DonGia desc 

select top 1 *
from CongViec
order by DonGia asc 



GO
/****** Object:  StoredProcedure [dbo].[CVMaxNKSLK]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CVMaxNKSLK]
as
select top(1)CongViec.MaCongViec,CongViec.TenCongViec, Count(NKSLK.MaNK) as'SoLuongNKSLK'
 from CongViec
inner join DanhMucCongViec
on DanhMucCongViec.MaCongViec=CongViec.MaCongViec
inner join NKSLK 
on NKSLK.MaDanhMucCongViec=DanhMucCongViec.MaDanhMucCongViec
group by CongViec.MaCongViec,CongViec.TenCongViec



GO
/****** Object:  StoredProcedure [dbo].[CVTB]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CVTB]
as
select *
from CongViec,(select AVG(DonGia) as'TB' from CongViec)as s
where CongViec.DonGia>s.TB
select *
from CongViec,(select AVG(DonGia) as'TB' from CongViec)as s
where CongViec.DonGia<s.TB


GO
/****** Object:  StoredProcedure [dbo].[DanhMucCongNhanDatGioChuan]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DanhMucCongNhanDatGioChuan] @CurDate date,@gio int
as
select CongNhan.*,Gio 
from CongNhan,(
select SUM(
case 
	WHEN NgayThucHienKhoan between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
	then
		CASE WHEN DATEName(DW, NgayThucHienKhoan) = 'Saturday'  
		THEN 4
		else 8 
		end
END
) as 'Gio',CongNhan.MaCongNhan
from NKSLK,CongNhanThucHienKhoan,CongNhan
where NKSLK.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
group by CongNhan.MaCongNhan)as s
where CongNhan.MaCongNhan=s.MaCongNhan and s.Gio>=@gio


GO
/****** Object:  StoredProcedure [dbo].[GetCNTHCa3]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetCNTHCa3] @Start time(7), @End time(7)
as
select CongNhan.*,s.ThoiGianBatDau,s.ThoiGianKetThuc
from CongNhan,(select MaCongNhan,ThoiGianBatDau,ThoiGianKetThuc
from CongNhanThucHienKhoan
where 
DATEDIFF(HOUR,ThoiGianBatDau,@Start) <=2
or DATEDIFF(HOUR,ThoiGianBatDau,@Start) <=-2
and 
DATEDIFF(HOUR,@End,ThoiGianKetThuc) <=2
or DATEDIFF(HOUR,@End,ThoiGianKetThuc) <=-2)as s
where CongNhan.MaCongNhan=s.MaCongNhan


GO
/****** Object:  StoredProcedure [dbo].[GetCNTheoDoTuoi]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetCNTheoDoTuoi] @Start int, @End int
as
select MaCongNhan,HoTen,DATEDIFF(YEAR,NgayThangNamSinh,GETDATE())  as 'Tuổi' from CongNhan
where @Start<(DATEDIFF(YEAR,NgayThangNamSinh,GETDATE()))
and @End>(DATEDIFF(YEAR,NgayThangNamSinh,GETDATE()))


GO
/****** Object:  StoredProcedure [dbo].[LuongInMonth]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LuongInMonth] @CurDate DATETIME
as
--tính lương khoán riêng thang
select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan

--tính lương khoán chung thang
select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan
--tính lương khoán riêng tuan
select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate) 
and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan

--tính lương khoán chung thang theo tuần
select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate) 
and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan



GO
/****** Object:  StoredProcedure [dbo].[LuongMaxMinInMonth]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LuongMaxMinInMonth] @CurDate DATETIME
as
--lương max min theo tháng
select LuongMaxM=case
when s.Luong>x.Luong
	then s.Luong
	else x.Luong
	end
from 
(select top 1 *
from (select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan)as x
order by x.Luong desc)as s,
(select top 1 *
from(select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan)as s
order by s.Luong desc)as x
select LuongMinM=case
when s.Luong<x.Luong
	then s.Luong
	else x.Luong
	end
from 
(select top 1 *
from (select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan)as x
order by x.Luong asc)as s,
(select top 1 *
from(select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) 
and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
group by CongNhan.MaCongNhan)as s
order by s.Luong asc)as x
--tính max min theo tuan
select LuongMaxW=case
when s.Luong>x.Luong
	then s.Luong
	else x.Luong
	end
from 
(select top 1 *
from (select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan)as x
order by x.Luong desc)as s,
(select top 1 *
from(select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan)as s
order by s.Luong desc)as x
select LuongMinW=case
when s.Luong<x.Luong
	then s.Luong
	else x.Luong
	end
from 
(select top 1 *
from (select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)*SUM(ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)))/SUM(ABS(DATEDIFF(HOUR,GioBatDau,GioKetThuc)))as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=1
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan)as x
order by x.Luong asc)as s,
(select top 1 *
from(select SUM(DanhMucCongViec.SoLuongDatDuoc*CongViec.DonGia)as 'Luong',CongNhan.MaCongNhan
from DanhMucCongViec,CongViec,NKSLK,DanhMucCongNhanThucHienKhoan,CongNhanThucHienKhoan,CongNhan
where DanhMucCongViec.MaCongViec=CongViec.MaCongViec
and DanhMucCongViec.MaDanhMucCongViec=NKSLK.MaDanhMucCongViec
and NKSLK.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK
and DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK=CongNhanThucHienKhoan.MaDanhMucCNTHK
and CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
and DanhMucCongNhanThucHienKhoan.LaKhoanChung=0
and NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)
group by CongNhan.MaCongNhan)as s
order by s.Luong asc)as x


GO
/****** Object:  StoredProcedure [dbo].[ShowALLNKSLKInMonthOrWeek]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowALLNKSLKInMonthOrWeek] @CurDate DATETIME
as
--theo tháng
select * from NKSLK
where NKSLK.NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1)
--theo tuần
select * from NKSLK
where NKSLK.NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate)



GO
/****** Object:  StoredProcedure [dbo].[ShowNKSLKInMonthOrWeek]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowNKSLKInMonthOrWeek] @CurDate DATETIME,@MaCN char(20)
as
select  MaNK,NgayThucHienKhoan,GioBatDau,GioKetThuc,y.MaDanhMucCNTHK,y.MaDanhMucCongViec 
from (select * from NKSLK
where NKSLK.NgayThucHienKhoan 
between DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0) and DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1))AS y,
(select CongNhanThucHienKhoan.MaDanhMucCNTHK from CongNhanThucHienKhoan,DanhMucCongNhanThucHienKhoan 
where MaCongNhan=@MaCN and CongNhanThucHienKhoan.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK)as x
where x.MaDanhMucCNTHK=y.MaDanhMucCNTHK
select  MaNK,NgayThucHienKhoan,GioBatDau,GioKetThuc,y.MaDanhMucCNTHK,y.MaDanhMucCongViec 
from (select * from NKSLK
where NKSLK.NgayThucHienKhoan 
between DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate)
 and DATEADD(dd, 6 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7,@CurDate))AS y,
(select CongNhanThucHienKhoan.MaDanhMucCNTHK from CongNhanThucHienKhoan,DanhMucCongNhanThucHienKhoan 
where MaCongNhan=@MaCN and CongNhanThucHienKhoan.MaDanhMucCNTHK=DanhMucCongNhanThucHienKhoan.MaDanhMucCNTHK)as x
where x.MaDanhMucCNTHK=y.MaDanhMucCNTHK



GO
/****** Object:  StoredProcedure [dbo].[SPOverOneYear]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SPOverOneYear]
as
SELECT * 
FROM SanPham 
WHERE HanSuDung > (select dateadd(year, +1,NgayDangKy ))


GO
/****** Object:  StoredProcedure [dbo].[SPWithDate]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SPWithDate] @CurDate DATETIME
as
select * 
from SanPham
where NgayDangKy>@CurDate


GO
/****** Object:  StoredProcedure [dbo].[TinhCongCN]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TinhCongCN] @MaCN char(20)
as
select SUM(
CASE WHEN DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)<0 
THEN ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc))/8*1.3
else DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)/8  
END
)
from CongNhanThucHienKhoan
where CongNhanThucHienKhoan.MaCongNhan=@MaCN
select SUM(
CASE WHEN DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)<0 
THEN ABS(DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc))/8*1.3
else DATEDIFF(HOUR,ThoiGianBatDau,ThoiGianKetThuc)/8  
END
),CongNhan.MaCongNhan
from CongNhanThucHienKhoan,CongNhan
where CongNhanThucHienKhoan.MaCongNhan=CongNhan.MaCongNhan
group by CongNhan.MaCongNhan



GO
/****** Object:  StoredProcedure [dbo].[TuanChanLe]    Script Date: 12/21/2021 10:57:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TuanChanLe]  @CurDate DATETIME
as
SELECT
WeekOfMoth = DATEPART(wk, @CurDate)
- DATEPART(wk,DATEADD(m, DATEDIFF(M, 0, @CurDate), 0)) + 1,
CASE WHEN (DATEPART(wk, @CurDate)
- DATEPART(wk,DATEADD(m, DATEDIFF(M, 0, @CurDate), 0)) + 1) % 2 = 1
THEN 'Odd' ELSE 'Even' END EvenOrOdd,
StartOfMonth=DATEADD(MM,DATEDIFF(MM, 0, @CurDate),0), --First day of the month 
EndOfMonth=DATEADD(MM,DATEDIFF(MM, -1, @CurDate),-1),  --Last day of the month

Monday=DATEADD(dd, 0 - (@@DATEFIRST + 5 + DATEPART(dw, @CurDate)) % 7, @CurDate) ,--First day of week 
Saturday=DATEADD(dd, 6 - (@@DATEFIRST + 6 + DATEPART(dw, @CurDate)) % 7,@CurDate)


GO
USE [master]
GO
ALTER DATABASE [DatabaseNKSLK] SET  READ_WRITE 
GO
