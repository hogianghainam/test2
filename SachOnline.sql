USE [SachOnline]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDATHANG]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDATHANG](
	[ChiTietDatHangID] [int] IDENTITY(1,1) NOT NULL,
	[DonDatHangID] [int] NULL,
	[SachID] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChiTietDatHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[ChuDeID] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ChuDeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[DonDatHangID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHangID] [int] NULL,
	[NgayDat] [date] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[DonDatHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[DiaChi] [varchar](200) NULL,
	[Email] [varchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MatKhauNL] [nvarchar](50) NULL,
	[TenDN] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[NhaXuatBanID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaXuatBan] [nvarchar](100) NULL,
	[DiaChi] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaXuatBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[SachID] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](200) NULL,
	[TacGiaID] [int] NULL,
	[NhaXuatBanID] [int] NULL,
	[ChuDeID] [int] NULL,
	[GiaBan] [float] NULL,
	[SoLuong] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[anhSP] [nchar](10) NULL,
	[Mota] [nvarchar](550) NULL,
PRIMARY KEY CLUSTERED 
(
	[SachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[TacGiaID] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TacGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIETSACH]    Script Date: 09/10/2023 12:56:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIETSACH](
	[VietSachID] [int] IDENTITY(1,1) NOT NULL,
	[SachID] [int] NULL,
	[TacGiaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VietSachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([AdminID], [Username], [Password]) VALUES (1, N'admin1', N'password1')
INSERT [dbo].[ADMIN] ([AdminID], [Username], [Password]) VALUES (2, N'admin2', N'password2')
INSERT [dbo].[ADMIN] ([AdminID], [Username], [Password]) VALUES (3, N'admin1', N'password1')
INSERT [dbo].[ADMIN] ([AdminID], [Username], [Password]) VALUES (4, N'admin2', N'password2')
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETDATHANG] ON 

INSERT [dbo].[CHITIETDATHANG] ([ChiTietDatHangID], [DonDatHangID], [SachID], [SoLuong], [GiaTien]) VALUES (1, 1, 1, 2, 59.98)
INSERT [dbo].[CHITIETDATHANG] ([ChiTietDatHangID], [DonDatHangID], [SachID], [SoLuong], [GiaTien]) VALUES (2, 2, 2, 1, 24.99)
INSERT [dbo].[CHITIETDATHANG] ([ChiTietDatHangID], [DonDatHangID], [SachID], [SoLuong], [GiaTien]) VALUES (3, 2, 3, 1, 19.99)
SET IDENTITY_INSERT [dbo].[CHITIETDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (1, N'Ngôn ngữ')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (2, N'Công nghệ thông tin')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (3, N'Luật pháp')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (4, N'Văn học')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (5, N'Nông nghiệp')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (6, N'Chính trị')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (7, N'Kinh tế')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (8, N'Khoa học & Xã hội')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (9, N'Đời sống')
INSERT [dbo].[CHUDE] ([ChuDeID], [TenChuDe]) VALUES (10, N'Sách giáo khoa')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([DonDatHangID], [KhachHangID], [NgayDat], [TongTien]) VALUES (1, 1, CAST(N'2023-09-25' AS Date), 59.98)
INSERT [dbo].[DONDATHANG] ([DonDatHangID], [KhachHangID], [NgayDat], [TongTien]) VALUES (2, 2, CAST(N'2023-09-26' AS Date), 44.98)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (1, N'Nguyễn Tuấn Minh', N'Di An, Bình Duong', N'nguyenvana@email.com', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (2, N'Lê Thị Cẩm', N'Tân Uyên, Bình Duong', N'tranthib@email.com', N'0987654321', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (3, N'Trần Thái Tú', N'Tân Bình, TP HCM', NULL, N'0945624476', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (4, N'Lê Văn Long', N'Thu Dau Mot, Bình Duong', NULL, N'0963847446', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (5, N'Nguyễn Nhật Hào', N'Bình Duong', N'nhathao02032003@gmail.com', N'0967832287', N'Nhathao_02032003', N'Nhathao_02032003', N'Nhathao023')
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (6, N'ânr', N'1111', N'1111', N'1111', N'1111', N'1111', N'âr')
INSERT [dbo].[KHACHHANG] ([KhachHangID], [TenKhachHang], [DiaChi], [Email], [SoDienThoai], [MatKhau], [MatKhauNL], [TenDN]) VALUES (7, N'Nguyễn Nhật Hào', N'Bình Duong', N'aaa', N'0967832285', N'aaa', N'aaa', N'aaa')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (1, N'NXB Trẻ', N'Ha Noi')
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (2, N'NXB Thống kê', N'Ho Chi Minh')
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (3, N'Kim Đồng', NULL)
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (4, N'Đại học Quốc Gia', NULL)
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (5, N'Văn hóa & Nghệ thuật', NULL)
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (6, N'Lao động & Xã hội', NULL)
INSERT [dbo].[NHAXUATBAN] ([NhaXuatBanID], [TenNhaXuatBan], [DiaChi]) VALUES (7, N'Khác...', NULL)
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (1, N'Giáo trình Java căn bản', 1, 1, 1, 29.99, 100, CAST(N'1987-07-23' AS Date), N'sach01.jpg', N'Không có mô tả')
INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (2, N'Giáo trình kỹ thuật lập trình', 2, 2, 1, 19.99, 50, CAST(N'1786-09-12' AS Date), N'sach02.jpg', N'Không có mô tả')
INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (3, N'Thực hành ngôn nhữ C&C++', 3, 1, 3, 24.99, 75, CAST(N'1999-03-26' AS Date), N'sach03.jpg', N'Không có mô tả')
INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (7, N'Tư duy lập trình', 3, 3, 2, 25.88, 24, CAST(N'1997-09-02' AS Date), N'sach04.jpg', N'Không có mô tả')
INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (9, N'Code Complete II', 2, 2, 2, 23.88, 11, CAST(N'1999-09-12' AS Date), N'sach05.jpg', N'Không có mô tả')
INSERT [dbo].[SACH] ([SachID], [TenSach], [TacGiaID], [NhaXuatBanID], [ChuDeID], [GiaBan], [SoLuong], [NgayCapNhat], [anhSP], [Mota]) VALUES (12, N'Lập trình & Cuộc sống', 2, 2, 1, 23.99, 34, CAST(N'1999-09-19' AS Date), N'sach06.jpg', N'Không có mô tả')
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[TACGIA] ON 

INSERT [dbo].[TACGIA] ([TacGiaID], [TenTacGia]) VALUES (1, N'Nguy?n Nh?t Ánh')
INSERT [dbo].[TACGIA] ([TacGiaID], [TenTacGia]) VALUES (2, N'H? Chí Minh')
INSERT [dbo].[TACGIA] ([TacGiaID], [TenTacGia]) VALUES (3, N'Nguy?n Du')
SET IDENTITY_INSERT [dbo].[TACGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[VIETSACH] ON 

INSERT [dbo].[VIETSACH] ([VietSachID], [SachID], [TacGiaID]) VALUES (1, 1, 1)
INSERT [dbo].[VIETSACH] ([VietSachID], [SachID], [TacGiaID]) VALUES (2, 2, 2)
INSERT [dbo].[VIETSACH] ([VietSachID], [SachID], [TacGiaID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[VIETSACH] OFF
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD FOREIGN KEY([DonDatHangID])
REFERENCES [dbo].[DONDATHANG] ([DonDatHangID])
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD FOREIGN KEY([SachID])
REFERENCES [dbo].[SACH] ([SachID])
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KHACHHANG] ([KhachHangID])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([ChuDeID])
REFERENCES [dbo].[CHUDE] ([ChuDeID])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([NhaXuatBanID])
REFERENCES [dbo].[NHAXUATBAN] ([NhaXuatBanID])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([TacGiaID])
REFERENCES [dbo].[TACGIA] ([TacGiaID])
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD FOREIGN KEY([SachID])
REFERENCES [dbo].[SACH] ([SachID])
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD FOREIGN KEY([TacGiaID])
REFERENCES [dbo].[TACGIA] ([TacGiaID])
GO
