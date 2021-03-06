USE [QuanLyHangKhong]
GO
/****** Object:  Table [dbo].[ChuTrinh]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuTrinh](
	[MaChuTrinh] [varchar](7) NOT NULL,
	[ChuyenDi] [nvarchar](7) NULL,
	[ChuyenVe] [nvarchar](7) NULL,
	[ThoiGian] [nvarchar](7) NULL,
	[ThoiGianNghi] [nvarchar](7) NULL,
	[MaCBTinh] [varchar](7) NULL,
 CONSTRAINT [pk_ChuTrinh] PRIMARY KEY CLUSTERED 
(
	[MaChuTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [varchar](7) NOT NULL,
	[NgayCatCanh] [datetime] NULL,
	[NgayHaCanh] [datetime] NULL,
	[Hang1] [varchar](30) NULL,
	[Hang2] [varchar](30) NULL,
	[Hang3] [varchar](30) NULL,
	[KhuyenMai] [real] NULL,
	[MaCBTinh] [varchar](7) NULL,
 CONSTRAINT [pk_ChuyenBay] PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenBayTinh]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenBayTinh](
	[MaCBTinh] [varchar](7) NOT NULL,
	[GioBD] [time](7) NULL,
	[GioKT] [time](7) NULL,
 CONSTRAINT [pk_CBTinh] PRIMARY KEY CLUSTERED 
(
	[MaCBTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [varchar](7) NOT NULL,
	[Ten] [nvarchar](10) NULL,
	[MoTa] [nvarchar](10) NULL,
 CONSTRAINT [pk_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HanhLy]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HanhLy](
	[MaHanhLy] [varchar](7) NOT NULL,
	[TrongLuong] [real] NULL,
	[MoTa] [nvarchar](50) NULL,
	[MaKhachHang] [varchar](7) NULL,
 CONSTRAINT [pk_HanhLy] PRIMARY KEY CLUSTERED 
(
	[MaHanhLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](7) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[CMND] [varchar](15) NULL,
	[VISA] [varchar](7) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
	[QuocTich] [nvarchar](20) NULL,
 CONSTRAINT [pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoTrinh]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoTrinh](
	[MaLoTrinh] [varchar](7) NOT NULL,
	[DiemDi] [nvarchar](30) NULL,
	[DiemDen] [nvarchar](30) NULL,
	[ThoiGian] [time](7) NULL,
	[MoTa] [nvarchar](50) NULL,
	[MaCBTinh] [varchar](7) NULL,
 CONSTRAINT [pk_LoTrinh] PRIMARY KEY CLUSTERED 
(
	[MaLoTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MayBay]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MayBay](
	[MaMayBay] [nvarchar](7) NOT NULL,
	[Loai] [nvarchar](7) NULL,
	[TrongLuong] [real] NULL,
	[SG1] [int] NULL,
	[SG2] [int] NULL,
	[SG3] [int] NULL,
	[SuDung] [datetime] NULL,
	[MoTa] [nvarchar](50) NULL,
	[HanDung] [datetime] NULL,
	[MaNhom] [varchar](7) NULL,
	[MaChuTinh] [varchar](7) NULL,
 CONSTRAINT [pk_MayBay] PRIMARY KEY CLUSTERED 
(
	[MaMayBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](7) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiIinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
	[ChucVu] [nvarchar](30) NULL,
	[MaNhom] [varchar](7) NULL,
 CONSTRAINT [pk_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhom]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhom](
	[MaNhom] [varchar](7) NOT NULL,
	[Truong] [nvarchar](30) NULL,
	[Pho] [nvarchar](30) NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [pk_Nhom] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiGian]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiGian](
	[MaThoiGian] [varchar](7) NOT NULL,
	[BatDau] [date] NULL,
	[KetThuc] [date] NULL,
	[MoTa] [nvarchar](50) NULL,
	[MaCBTinh] [varchar](7) NULL,
 CONSTRAINT [pk_ThoiGian] PRIMARY KEY CLUSTERED 
(
	[MaThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [varchar](7) NOT NULL,
	[SoGhe] [int] NULL,
	[Gia] [money] NULL,
	[HieuLuc] [nvarchar](10) NULL,
	[MaHang] [varchar](7) NULL,
	[MaHanhKhach] [varchar](7) NULL,
	[MaChuyenBay] [varchar](7) NULL,
 CONSTRAINT [pk_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChuTrinh]  WITH CHECK ADD  CONSTRAINT [fk_ChuTrinh] FOREIGN KEY([MaCBTinh])
REFERENCES [dbo].[ChuyenBayTinh] ([MaCBTinh])
GO
ALTER TABLE [dbo].[ChuTrinh] CHECK CONSTRAINT [fk_ChuTrinh]
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [fk_ChuyenBay] FOREIGN KEY([MaCBTinh])
REFERENCES [dbo].[ChuyenBayTinh] ([MaCBTinh])
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [fk_ChuyenBay]
GO
ALTER TABLE [dbo].[HanhLy]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HanhLy] CHECK CONSTRAINT [fk_KhachHang]
GO
ALTER TABLE [dbo].[LoTrinh]  WITH CHECK ADD  CONSTRAINT [fk_LoTrinh] FOREIGN KEY([MaCBTinh])
REFERENCES [dbo].[ChuyenBayTinh] ([MaCBTinh])
GO
ALTER TABLE [dbo].[LoTrinh] CHECK CONSTRAINT [fk_LoTrinh]
GO
ALTER TABLE [dbo].[MayBay]  WITH CHECK ADD  CONSTRAINT [fk_MayBay_ChuTrinh] FOREIGN KEY([MaChuTinh])
REFERENCES [dbo].[ChuTrinh] ([MaChuTrinh])
GO
ALTER TABLE [dbo].[MayBay] CHECK CONSTRAINT [fk_MayBay_ChuTrinh]
GO
ALTER TABLE [dbo].[MayBay]  WITH CHECK ADD  CONSTRAINT [fk_MayBay_Nhom] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[MayBay] CHECK CONSTRAINT [fk_MayBay_Nhom]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien]
GO
ALTER TABLE [dbo].[ThoiGian]  WITH CHECK ADD  CONSTRAINT [fk_ThoiGian] FOREIGN KEY([MaCBTinh])
REFERENCES [dbo].[ChuyenBayTinh] ([MaCBTinh])
GO
ALTER TABLE [dbo].[ThoiGian] CHECK CONSTRAINT [fk_ThoiGian]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [fk_Ve] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [fk_Ve]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [fk_Ve_ChuyenBay] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [fk_Ve_ChuyenBay]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [fk_Ve_KhachHang] FOREIGN KEY([MaHanhKhach])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [fk_Ve_KhachHang]
GO
/****** Object:  StoredProcedure [dbo].[sp_ChuyenBay_Delete]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChuyenBay_Delete]
@MaChuyenBay varchar(7)
AS
BEGIN
 DELETE FROM ChuyenBay WHERE MaChuyenBay = @MaChuyenBay
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChuyenBay_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChuyenBay_Insert]
@MaChuyenBay varchar(7),
@NgayCatCanh datetime,
@NgayHaCanh datetime,
@Hang1 varchar(30),
@Hang2 varchar(30),
@Hang3 varchar(30),
@KhuyenMai real,
@MaCBTinh varchar(7)
AS
BEGIN
 INSERT INTO ChuyenBay(MaChuyenBay, NgayCatCanh, NgayHaCanh, Hang1, Hang2, Hang3, KhuyenMai, MaCBTinh)
 VALUES(@MaChuyenBay, @NgayCatCanh, @NgayHaCanh, @Hang1, @Hang2, @Hang3, @KhuyenMai, @MaCBTinh)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChuyenBay_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChuyenBay_SelectAll]
AS
BEGIN
 SELECT * FROM ChuyenBay
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChuyenBay_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChuyenBay_SelectById]
@MaChuyenBay varchar(7)
AS
BEGIN
 SELECT * FROM ChuyenBay WHERE MaChuyenBay = @MaChuyenBay
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChuyenBay_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChuyenBay_Update]
@MaChuyenBay varchar(7),
@NgayCatCanh datetime,
@NgayHaCanh datetime,
@Hang1 varchar(30),
@Hang2 varchar(30),
@Hang3 varchar(30),
@KhuyenMai real,
@MaCBTinh varchar(7)
AS
BEGIN
 UPDATE ChuyenBay
 SET NgayCatCanh = @NgayCatCanh, NgayHaCanh = @NgayHaCanh, Hang1 = @Hang1, Hang2 = @Hang2, Hang3 = @Hang3, KhuyenMai = @KhuyenMai, MaCBTinh = @MaCBTinh
 WHERE MaChuyenBay = @MaChuyenBay
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_Hang_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Hang_Insert]
@MaHang varchar(7),
@Ten nvarchar(10),
@MoTa nvarchar(10)
AS
BEGIN
 INSERT INTO Hang(MaHang, Ten, MoTa)
 VALUES (@MaHang, @Ten, @MoTa)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hang_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Hang_SelectAll]
AS
BEGIN
 SELECT * FROM Hang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hang_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Hang_SelectById]
@MaHang varchar(7)
AS
BEGIN
 SELECT * FROM Hang WHERE MaHang = @MaHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hang_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Hang_Update]
@MaHang varchar(7),
@Ten nvarchar(10),
@MoTa nvarchar(10)
AS
BEGIN
 UPDATE Hang
 SET Ten = @Ten, MoTa = @MoTa
 WHERE MaHang = @MaHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hanh_Ly_SelectBy_MaKH]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Hanh_Ly_SelectBy_MaKH]
@MaKhachHang varchar(7)
AS
BEGIN
	SELECT * FROM HanhLy WHERE MaKhachHang = @MaKhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_Delete]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_Delete]
@MaHanhLy varchar(7)
AS
BEGIN
 DELETE FROM HanhLy WHERE MaHanhLy = @MaHanhLy
END

GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_Delete_MaKH]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_Delete_MaKH]
@MaKhachHang varchar(7)
AS
BEGIN 
 DELETE FROM HanhLy WHERE MaKhachHang = @MaKhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_Insert] 
@MaHanhLy varchar(7),
@TrongLuong real,
@MoTa nvarchar(50),
@MaKhachHang varchar(7)
AS
BEGIN
 INSERT INTO HanhLy(MaHanhLy, TrongLuong, MoTa, MaKhachHang)
 VALUES (@MaHanhLy, @TrongLuong, @MoTa, @MaKhachHang)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_SelectAll]
AS
BEGIN
 SELECT * FROM HanhLy
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_SelectById]
@MaHanhLy varchar(7)
AS 
BEGIN
 SELECT * FROM HanhLy WHERE MaHanhLy = @MaHanhLy
END

GO
/****** Object:  StoredProcedure [dbo].[sp_HanhLy_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HanhLy_Update]
@MaHanhLy varchar(7),
@TrongLuog real,
@MoTa nvarchar(50),
@MaKhachHang varchar(7)
AS 
BEGIN
 UPDATE HanhLy 
 SET TrongLuong = @TrongLuog, MoTa = @MoTa, MaKhachHang = @MaKhachHang
 WHERE MaHanhLy = @MaHanhLy
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KhachHang_Delete]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhachHang_Delete]
@MaKhachHang varchar(7)
AS
BEGIN
 DELETE FROM KhachHang WHERE MaKhachHang = @MaKhachHang 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KhachHang_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhachHang_Insert]
@MaKhachHang varchar(7),
@Ten nvarchar(50),
@Tuoi int,
@GioiTinh nvarchar(10),
@NgaySinh datetime,
@CMND varchar(15),
@VISA varchar(7),
@DiaChi nvarchar(15),
@DienThoai varchar(15),
@QuocTich nvarchar(20)
AS 
BEGIN
	INSERT INTO KhachHang(MaKhachHang, Ten, Tuoi, GioiTinh, NgaySinh, CMND, VISA, DiaChi, DienThoai, QuocTich)
	VALUES (@MaKhachHang, @Ten, @Tuoi, @GioiTinh, @NgaySinh, @CMND, @VISA, @DiaChi, @DienThoai, @QuocTich)
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_KhachHang_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhachHang_SelectAll]
AS
BEGIN
 SELECT * FROM KhachHang
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_KhachHang_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhachHang_SelectById]
@MaKhachHang varchar(7)
AS
BEGIN
 SELECT * FROM KhachHang WHERE MaKhachHang = @MaKhachHang 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KhachHang_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhachHang_Update]
@MaKhachHang varchar(7),
@Ten nvarchar(50),
@Tuoi int,
@GioiTinh nvarchar(10),
@NgaySinh datetime,
@CMND varchar(15),
@VISA varchar(7),
@DiaChi nvarchar(15),
@DienThoai varchar(15),
@QuocTich nvarchar(20)
AS 
BEGIN
	UPDATE KhachHang 
	SET Ten = @Ten, Tuoi = @Tuoi, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh, CMND = @CMND, VISA = @VISA, DiaChi = @DiaChi,
	    DienThoai = @DienThoai, QuocTich = @QuocTich
	WHERE MaKhachHang = @MaKhachHang  
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_MaChuyenBay]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MaChuyenBay]
AS
BEGIN
 SELECT ChuyenBay.MaChuyenBay FROM ChuyenBay
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_MaHang]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MaHang]
AS
BEGIN
 SELECT Hang.MaHang FROM Hang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NhanVien_Delete]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_NhanVien_Delete]
@MaNhanVien varchar(7)
AS
BEGIN
 DELETE FROM NhanVien WHERE MaNhanVien = @MaNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NhanVien_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_NhanVien_Insert]
@MaNhanVien varchar(7),
@Ten nvarchar(50),
@Tuoi int,
@GioiTinh nvarchar(10),
@DiaChi nvarchar(50),
@DienThoai varchar(15),
@ChucVu nvarchar(30),
@MaNhom varchar(7)
AS
BEGIN 
 INSERT INTO NhanVien(MaNhanVien, Ten, Tuoi, GioiIinh, DiaChi, DienThoai, ChucVu, MaNhom)
 VALUES (@MaNhanVien, @Ten, @Tuoi, @GioiTinh, @DiaChi, @DienThoai, @ChucVu, @MaNhom)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NhanVien_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_NhanVien_SelectAll]
AS
BEGIN
 SELECT * FROM NhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NhanVien_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_NhanVien_SelectById]
@MaNhanVien varchar(7)
AS
BEGIN
 SELECT * FROM NhanVien WHERE MaNhanVien = @MaNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NhanVien_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_NhanVien_Update]
@MaNhanVien varchar(7),
@Ten nvarchar(50),
@Tuoi int,
@GioiTinh nvarchar(10),
@DiaChi nvarchar(50),
@DienThoai varchar(15),
@ChucVu nvarchar(30),
@MaNhom varchar(7)
AS
BEGIN 
 UPDATE NhanVien
 SET Ten = @Ten, Tuoi = @Tuoi, GioiIinh = @GioiTinh, DiaChi = @DiaChi, DienThoai = @DienThoai, ChucVu = @ChucVu, MaNhom = @MaNhom
 WHERE MaNhanVien = @MaNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TenHang]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TenHang]
AS
BEGIN
 SELECT Hang.Ten FROM Hang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ve_Delete]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Ve_Delete]
@MaVe varchar(7)
AS
BEGIN
 DELETE FROM Ve WHERE MaVe = @MaVe
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_Ve_Insert]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Ve_Insert]
@MaVe varchar(7),
@SoGhe int,
@Gia money,
@HieuLuc nvarchar(10),
@MaHang varchar(7),
@MaHanhKhach varchar(7),
@MaChuyenBay varchar(7)
AS
BEGIN
 INSERT INTO Ve(MaVe, SoGhe, Gia, HieuLuc, MaHang, MaHanhKhach, MaChuyenBay)
 VALUES (@MaVe, @SoGhe, @Gia, @HieuLuc, @MaHang, @MaHanhKhach, @MaChuyenBay)
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_Ve_SelectAll]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Ve_SelectAll]
AS
BEGIN
 SELECT * FROM Ve
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ve_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Ve_SelectById]
@MaVe varchar(7)
AS
BEGIN
 SELECT * FROM Ve WHERE MaVe = @MaVe
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ve_Update]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Ve_Update]
@MaVe varchar(7),
@SoGhe int,
@Gia money,
@HieuLuc nvarchar(10),
@MaHang varchar(7),
@MaHanhKhach varchar(7),
@MaChuyenBay varchar(7)
AS
BEGIN 
 UPDATE Ve
 SET SoGhe = @SoGhe, Gia = @Gia, HieuLuc = @HieuLuc, MaHang = @MaHang, MaHanhKhach = @MaHanhKhach, MaChuyenBay = @MaChuyenBay
 WHERE MaVe = @MaVe
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XemChuyenBay_Select]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XemChuyenBay_Select]
AS
BEGIN
 SELECT  cb.MaChuyenBay, lt.DiemDi, lt.DiemDen, cbt.GioBD, cbt.GioKT, cb.NgayCatCanh, cb.NgayHaCanh
 FROM ChuyenBay cb, ChuyenBayTinh cbt, LoTrinh lt
 WHERE cb.MaCBTinh = cbt.MaCBTinh AND cbt.MaCBTinh = lt.MaCBTinh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XemChuyenBay_SelectBy_DiemDi]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XemChuyenBay_SelectBy_DiemDi]
@DiemDi nvarchar(30)
AS
BEGIN
 SELECT  cb.MaChuyenBay, lt.DiemDi, lt.DiemDen, cbt.GioBD, cbt.GioKT, cb.NgayCatCanh, cb.NgayHaCanh
 FROM ChuyenBay cb, ChuyenBayTinh cbt, LoTrinh lt
 WHERE cb.MaCBTinh = cbt.MaCBTinh 
 AND lt.DiemDi = @DiemDi 
 AND cbt.MaCBTinh = lt.MaCBTinh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XemChuyenBay_SelectById]    Script Date: 11/10/2017 9:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XemChuyenBay_SelectById]
@MaChuyenBay varchar(7)
AS
BEGIN
 SELECT  cb.MaChuyenBay, lt.DiemDi, lt.DiemDen, cbt.GioBD, cbt.GioKT, cb.NgayCatCanh, cb.NgayHaCanh
 FROM ChuyenBay cb, ChuyenBayTinh cbt, LoTrinh lt
 WHERE cb.MaCBTinh = cbt.MaCBTinh AND cbt.MaCBTinh = lt.MaCBTinh AND cb.MaChuyenBay = @MaChuyenBay
END
GO
