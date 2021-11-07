USE [master]
GO
/****** Object:  Database [DBClientServer]    Script Date: 11/7/2021 8:39:06 PM ******/
CREATE DATABASE [DBClientServer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBClientServer_1', FILENAME = N'D:\data\DBClientServer.mdf' , SIZE = 46080KB , MAXSIZE = 51200KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DBClientServer_1_log', FILENAME = N'D:\data\DBClientServer.ldf' , SIZE = 10240KB , MAXSIZE = 18432KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBClientServer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBClientServer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBClientServer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBClientServer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBClientServer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBClientServer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBClientServer] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBClientServer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBClientServer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBClientServer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBClientServer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBClientServer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBClientServer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBClientServer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBClientServer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBClientServer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBClientServer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBClientServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBClientServer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBClientServer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBClientServer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBClientServer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBClientServer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBClientServer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBClientServer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBClientServer] SET  MULTI_USER 
GO
ALTER DATABASE [DBClientServer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBClientServer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBClientServer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBClientServer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBClientServer] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBClientServer]
GO
/****** Object:  Table [dbo].[CongNhan]    Script Date: 11/7/2021 8:39:06 PM ******/
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
 CONSTRAINT [PK_CongNhan] PRIMARY KEY CLUSTERED 
(
	[MaCongNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongNhanThucHienKhoan]    Script Date: 11/7/2021 8:39:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongNhanThucHienKhoan](
	[MaDanhMucCNTHK] [char](20) NULL,
	[MaCongNhan] [char](20) NULL,
	[ThoiGianBatDau] [time](7) NULL,
	[ThoiGianKetThuc] [time](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  Table [dbo].[DanhMucCongNhanThucHienKhoan]    Script Date: 11/7/2021 8:39:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucCongNhanThucHienKhoan](
	[MaDanhMucCNTHK] [char](20) NOT NULL,
	[SoLuong] [int] NULL,
	[LaKhoanChung] [bit] NULL CONSTRAINT [DF_DanhMucCongNhanThucHienKhoan_LaKhoanChung]  DEFAULT ((1)),
 CONSTRAINT [PK_DanhMucCongNhanThucHienKhoan] PRIMARY KEY CLUSTERED 
(
	[MaDanhMucCNTHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucCongViec]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  Table [dbo].[NKSLK]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CNFromPBCV]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CNNghiHuu]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CVMaxMin]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CVMaxNKSLK]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CVTB]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DanhMucCongNhanDatGioChuan]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCNTHCa3]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCNTheoDoTuoi]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[LuongInMonth]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[LuongMaxMinInMonth]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ShowALLNKSLKInMonthOrWeek]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ShowNKSLKInMonthOrWeek]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SPOverOneYear]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SPWithDate]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TinhCongCN]    Script Date: 11/7/2021 8:39:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TuanChanLe]    Script Date: 11/7/2021 8:39:06 PM ******/
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
ALTER DATABASE [DBClientServer] SET  READ_WRITE 
GO
