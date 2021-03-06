USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[DangKiDV]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKiDV](
	[MaPDK] [int] NOT NULL,
	[MaDV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDK] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKiPhong]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangKiPhong](
	[MaPDK] [int] NOT NULL,
	[MaPhong] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDK] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[GiaDV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaPhong]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaPhong](
	[MaPhong] [char](10) NOT NULL,
	[MaLP] [char](10) NOT NULL,
	[MaKP] [char](10) NOT NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_GiaPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[GioiTinh] [bit] NULL,
	[TenKH] [nvarchar](50) NULL,
	[CMND] [char](11) NULL,
	[QuocTich] [nvarchar](30) NULL,
	[SDT] [char](11) NULL,
	[Email] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KieuPhong]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KieuPhong](
	[MaKP] [char](10) NOT NULL,
	[TenKP] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [char](10) NOT NULL,
	[TenLP] [nchar](20) NULL,
	[Trangbi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaPhieuDK]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaPhieuDK](
	[MaPDK] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
	[TreEm] [int] NULL,
	[NguoiLon] [int] NULL,
	[SoPhong] [int] NULL,
	[TraTruoc] [int] NULL,
	[ChuThich] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuTT]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTT](
	[MaPTT] [int] IDENTITY(1,1) NOT NULL,
	[MaPDK] [int] NULL,
	[SoNgay] [int] NULL,
	[NgayTT] [date] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [char](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MotaPhong] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK__Phong__20BD5E5B7965EA43] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinKS]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinKS](
	[TenKS] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](60) NULL,
	[SDT] [char](10) NULL,
	[Email] [char](50) NULL,
 CONSTRAINT [PK_ThongTinKS] PRIMARY KEY CLUSTERED 
(
	[TenKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 05/12/2017 11:11:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[username] [nvarchar](50) NOT NULL,
	[pass] [varchar](30) NULL,
	[role] [char](20) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1, 4)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (3, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (4, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (4, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (4, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (5, 4)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (7, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (7, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (7, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1002, 23)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1003, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1003, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1004, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1004, 4)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1005, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (1005, 4)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2002, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2002, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2002, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2003, 2)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2003, 3)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2004, 1)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2004, 4)
INSERT [dbo].[DangKiDV] ([MaPDK], [MaDV]) VALUES (2004, 23)
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1002, N'P202      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1002, N'P203      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1003, N'P203      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1003, N'P304      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1004, N'P306      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1004, N'P307      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1005, N'P306      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (1005, N'P307      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (2002, N'P306      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (2003, N'P205      ')
INSERT [dbo].[DangKiPhong] ([MaPDK], [MaPhong]) VALUES (2004, N'P204      ')
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (1, N'Thuê xe máy', 10)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (2, N'Mát xa', 50)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (3, N'Giặt ủi', 20)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (4, N'Đưa đón sân bay, nhà ga', 25)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (23, N'Tắm hơi', 25)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P201      ', N'BT        ', N'1         ', 50)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P202      ', N'ST        ', N'2         ', 150)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P203      ', N'ST        ', N'3         ', 250)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P204      ', N'TC        ', N'2         ', 100)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P205      ', N'TC        ', N'1         ', 75)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P206      ', N'BT        ', N'3         ', 150)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P301      ', N'ST        ', N'1         ', 100)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P302      ', N'ST        ', N'2         ', 150)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P303      ', N'ST        ', N'3         ', 250)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P304      ', N'TC        ', N'1         ', 50)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P305      ', N'BT        ', N'1         ', 40)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P306      ', N'BT        ', N'2         ', 75)
INSERT [dbo].[GiaPhong] ([MaPhong], [MaLP], [MaKP], [Gia]) VALUES (N'P307      ', N'BT        ', N'3         ', 150)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1, 1, N'Phạm Tiến Nam', N'123456789  ', N'Việt Nam', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (2, 1, N'Nguyễn Văn Đạt', N'213456987  ', N'Việt Nam', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (3, 0, N'Linda Goal', N'985624485  ', N'Anh', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (4, 1, N'Johan Cref', N'885632456  ', N'Italia', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (5, 1, N'Fukusima Masaki', N'445236511  ', N'Nhật Bản', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (6, 1, N'Donal Trump', N'562554269  ', N'Mỹ', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (7, 1, N'Doctor Who', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (8, NULL, N'Lan Anh', N'12589647   ', N'VN', N'012589644  ', N'qwertyui                                          ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (9, NULL, N'Dinh Thi lan Anh', N'152129918  ', N'Vietnam', N'0968802182 ', N'dinhlananh0104@gmail.com                          ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (10, NULL, N'Đỗ Quảng', N'124567890  ', N'VN', NULL, N'adg                                               ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (11, 1, N'Nguyen Hung', N'145236985  ', N'VN', N'01236547   ', N'jkl                                               ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (12, 1, N'Nguyen Hung', N'145236985  ', N'VN', N'01236547   ', N'jkl                                               ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (13, 1, N'Nguyen Hung', N'145236985  ', N'VN', N'01236547   ', N'jkl                                               ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (14, 1, N'Nguyen Hung', N'145236441  ', N'VN', N'0136956328 ', N'aaaaa                                             ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (15, 1, N'Nguyen Hung', N'145236441  ', N'VN', N'0136956328 ', N'aaaaa                                             ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1008, 1, N'Sang', N'123456789  ', N'VN', N'0123456789 ', N'                                                  ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1009, 1, N'Sang', N'123456789  ', N'VN', N'0123456789 ', N'                                                  ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1010, 1, N'Viet', N'234567891  ', N'VN', N'01478536985', N'ncbmzbczn                                         ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1011, 1, N'Viet', N'234567891  ', N'VN', N'01478536985', N'ncbmzbczn                                         ')
INSERT [dbo].[KhachHang] ([MaKH], [GioiTinh], [TenKH], [CMND], [QuocTich], [SDT], [Email]) VALUES (1012, 1, N'Tuan', N'1689355698 ', N'VN', N'0125324785 ', N'hdkjaghkdh                                        ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[KieuPhong] ([MaKP], [TenKP]) VALUES (N'1         ', N'Đơn                 ')
INSERT [dbo].[KieuPhong] ([MaKP], [TenKP]) VALUES (N'2         ', N'Đôi                 ')
INSERT [dbo].[KieuPhong] ([MaKP], [TenKP]) VALUES (N'3         ', N'Gia đình            ')
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [Trangbi]) VALUES (N'BT        ', N'Bình thường         ', N'Đèn trần, Quạt trần')
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [Trangbi]) VALUES (N'ST        ', N'Sang Trọng          ', N'Đèn trần, Điều Hòa, Truyền hình vệ tinh, Mạng Iternet, Nhà tắm & vệ sinh sang trọng')
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [Trangbi]) VALUES (N'TC        ', N'Tiêu chuẩn          ', N'Đèn trần, Quạt trần,Mạng Iternet')
SET IDENTITY_INSERT [dbo].[MaPhieuDK] ON 

INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (1, 1, CAST(N'2017-05-10' AS Date), NULL, 1, 1, 1, NULL, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (2, 2, CAST(N'2017-04-24' AS Date), NULL, 2, 1, 1, 20, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (3, 3, CAST(N'2017-04-24' AS Date), NULL, 0, 1, 1, 50, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (4, 4, CAST(N'2017-04-24' AS Date), NULL, 0, 1, 1, 100, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (5, 5, CAST(N'2017-04-24' AS Date), NULL, 1, 1, 1, 10, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (6, 6, CAST(N'2017-04-24' AS Date), NULL, 2, 1, 2, 30, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (7, 7, CAST(N'2017-04-24' AS Date), NULL, 2, 1, 1, NULL, NULL)
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (1002, 10, CAST(N'2017-05-06' AS Date), NULL, 2, 1, 2, 100, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (1003, 11, CAST(N'2017-05-06' AS Date), NULL, 3, 2, 2, 20, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (1004, 11, CAST(N'2017-05-06' AS Date), NULL, 21, 1, 2, 100, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (1005, 11, CAST(N'2017-05-06' AS Date), NULL, 21, 1, 2, 100, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (2002, 1008, CAST(N'2017-05-16' AS Date), NULL, 0, 2, 1, 100, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (2003, 1010, CAST(N'2017-05-10' AS Date), NULL, 0, 1, 1, 10, N'')
INSERT [dbo].[MaPhieuDK] ([MaPDK], [MaKH], [NgayDen], [NgayDi], [TreEm], [NguoiLon], [SoPhong], [TraTruoc], [ChuThich]) VALUES (2004, 1012, CAST(N'2017-05-10' AS Date), NULL, 0, 2, 1, 60, N'')
SET IDENTITY_INSERT [dbo].[MaPhieuDK] OFF
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P201      ', N'Phòng 201', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P202      ', N'Phòng 202', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P203      ', N'Phòng 203', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P204      ', N'Phòng 204', NULL, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P205      ', N'Phòng 205', NULL, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P206      ', N'Phòng 206', N'', 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P301      ', N'Phòng 301', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P302      ', N'Phòng 302', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P303      ', N'Phòng 303', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P304      ', N'Phòng 304', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P305      ', N'Phòng 305', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P306      ', N'Phòng 306', NULL, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P307      ', N'Phòng 307', NULL, 0)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MotaPhong], [TrangThai]) VALUES (N'P308      ', N'Phòng 308', NULL, 0)
INSERT [dbo].[ThongTinKS] ([TenKS], [DiaChi], [SDT], [Email]) VALUES (N'Khách sạn 5* Quốc tế', N'0, đường Thiên, quận Cầu Nam, Hà Lội', N'22042204  ', N'quoctehotel@gmail.com                             ')
ALTER TABLE [dbo].[DangKiDV]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[DangKiDV]  WITH CHECK ADD FOREIGN KEY([MaPDK])
REFERENCES [dbo].[MaPhieuDK] ([MaPDK])
GO
ALTER TABLE [dbo].[DangKiPhong]  WITH CHECK ADD FOREIGN KEY([MaPDK])
REFERENCES [dbo].[MaPhieuDK] ([MaPDK])
GO
ALTER TABLE [dbo].[DangKiPhong]  WITH CHECK ADD  CONSTRAINT [FK__DangKiPho__MaPho__44FF419A] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[DangKiPhong] CHECK CONSTRAINT [FK__DangKiPho__MaPho__44FF419A]
GO
ALTER TABLE [dbo].[GiaPhong]  WITH CHECK ADD FOREIGN KEY([MaKP])
REFERENCES [dbo].[KieuPhong] ([MaKP])
GO
ALTER TABLE [dbo].[GiaPhong]  WITH CHECK ADD FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[GiaPhong]  WITH CHECK ADD  CONSTRAINT [FK__GiaPhong__MaPhon__1A14E395] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[GiaPhong] CHECK CONSTRAINT [FK__GiaPhong__MaPhon__1A14E395]
GO
ALTER TABLE [dbo].[MaPhieuDK]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuTT]  WITH CHECK ADD FOREIGN KEY([MaPDK])
REFERENCES [dbo].[MaPhieuDK] ([MaPDK])
GO
