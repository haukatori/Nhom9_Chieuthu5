<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NAVHoatDongKhac</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 5px;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 950px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}
/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.add1 {
	margin-top: 8px;
}
</style>

</head>
<body>

<img class="img-responsive" src="Image/logo-news.png" alt="Logo">
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div>
				<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
			</div>
			<div class="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="TRANGCHU.jsp">Trang chủ</a></li>
					<li><a href="BARGioiThieu.jsp">Giới Thiệu</a></li>
					<li><a href="BARKhoDuLieu.jsp">Kho dữ liệu</a></li>
					<li><a href="BARLienHe.jsp">Liên hệ</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Đăng Kí</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Đăng Nhập</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container-fluid text-center">
		<div class="row content">
		<br>
				<div class="col-sm-2 sidenav">
					<ul class="nav nav-pills nav-stacked">
						<li><a href="TRANGCHU.jsp">Tin tức</a></li>
						<li><a href="NAVHoiNghiKhoaHoc.jsp">Hội nghị khoa học</a></li>
						<li><a href="NAVHopTacQuocTe.jsp">Hợp tác quốc tế</a></li>
						<li><a href="NAVLienKetTrongNuoc.jsp">Liên kết trong nước</a></li>
						<li class="active"><a href="NAVHoatDongKhac.jsp">Hoạt động khác</a></li>
					</ul>
					<br>
				
				</div>
			
				<div class="col-sm-8">
					<div class="container">
						<div class="row">
							<a href="https://thanhnien.vn/cong-nghe/kham-pha-cong-nghe-face-id-cua-iphone-x-875464.html">
								<div class="col-sm-4">
											<img
												src="Image/Face_Id.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Khám phá công nghệ Face ID của iPhone X</div>
									</div>
							</a>	
							<a href="https://www.dienmayxanh.com/kinh-nghiem-hay/touch-id-tren-iphone-la-gi-892619">
								<div class="col-sm-4">
											<img
												src="Image/Touch_Id.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Công nghệ Touch ID trên iPhone là gì?</div>
									</div>
							</a>	
						</div>
					</div>

					<div class="container">
						<div class="row">
							<a href="https://tinhte.vn/threads/cong-nghe-nhan-dang-va-xu-ly-giong-noi-tuong-lai-cua-viec-nhap-lieu-tren-thiet-bi-di-dong.2319727/">
								<div class="col-sm-4">
											<img
												src="Image/Cong_Nghe_Nhan_Dien_Giong_Noi.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Công nghệ nhận dạng và xử lý giọng nói, tương lai của việc nhập liệu trên thiết bị di động</div>
									</div>
							</a>	
							<a href="https://congnghe.tuoitre.vn/nhung-thiet-bi-cong-nghe-chong-trom-xe-hoi-tot-nhat-20170918110117406.htm">
								<div class="col-sm-4">
											<img
												src="Image/Cong_Nghe_Chong_Trom.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Những thiết bị công nghệ chống trộm xe hơi tốt nhất</div>
								</div>
							</a>	
						</div>
					</div>
				</div>

				<div class="col-sm-2 sidenav">
						<h2>Liên Hệ Quảng Cáo</h2>
						<br> <img src="Image/Dolla_Quang_Cao.jpg"
							class="img-thumbnail" style="width: 200px; height: 140px"
							alt="Image" /> <br>
								<h3>Bạn có nhu cầu đặt quảng cáo</h3>
								<h3>Vui lòng liên hệ:</h3>
								<h4>Trần Công Hậu</h4> <h>Sdt: 0123456789</h> <h>Email:
								tchaupro@gmail.com</h>
								<h3>Hoặc</h3>
								<h4>Phạm Quang Trung</h4> <h>Sdt: 0987654321</h> <h>Email:
								pqtrung@gmail.com</h> <br></br> <img
								src="Image/Dolla_Quang_Cao_2.jpg" class="img-thumbnail"
								style="width: 200px; height: 140px" alt="Image" />
					</div>
</div>
</div>

<br>

	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright © 2017, Phạm Quang Trung - Trần Công Hậu</p>
		</div>
		<!-- /.container -->
	</footer>
		
</body>
</html>