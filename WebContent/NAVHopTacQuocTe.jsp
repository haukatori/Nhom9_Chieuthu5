<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NAVHopTacQuocTe</title>
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
									<li class="active"><a href="#section3">Hợp tác quốc tế</a></li>
									<li><a href="NAVLienKetTrongNuoc.jsp">Liên kết trong nước</a></li>
									<li><a href="NAVHoatDongKhac.jsp">Hoạt động khác</a></li>
								</ul>
								<br>
						
							</div>

							<div class="col-sm-8">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										<li data-target="#myCarousel" data-slide-to="1"></li>
										<li data-target="#myCarousel" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">

										<div class="item active">
											<a
												href="https://baomoi.com/viet-nam-va-nhat-ban-thuc-day-giao-thuong-va-hop-tac-kinh-te/c/23333936.epi">
												<img src="Image/Hop_Tac_Viet_Nam_Nhat_Ban.jpg" alt="Asgardia"
												width="920" height="345">
													<div class="carousel-caption">
														<h3>Việt Nam và Nhật Bản thúc đẩy giao thương và hợp tác kinh tế</h3>
													</div>
											</a>
										</div>

										<div class="item">
											<a
												href="http://vietnamnet.vn/vn/thoi-su/chinh-tri/thuc-day-quan-he-hop-tac-quoc-phong-viet-nam-hoa-ky-389611.html">
												<img src="Image/Hop_Tac_Quoc_Phong_Viet_Nam_My.jpg" alt="Chania"
												width="920" height="345">
													<div class="carousel-caption">
														<h3>Thúc đẩy quan hệ hợp tác quốc phòng Việt Nam - Hoa Kỳ</h3>		
													</div>
											</a>
										</div>

										<div class="item">
											<a
												href="http://altaisibiri.vn/tin-tuc/t6/hop-tac-viet--nga-ve-y-te.html">
												<img src="Image/Hop_Tac_Nga_Viet_Ve_Y_Te.jpg"
												alt="Flower" width="920" height="345">
													<div class="carousel-caption">
														<h3>Hợp tác Việt – Nga về y tế</h3>
													</div>
											</a>
										</div>




										<!-- Left and right controls -->
										<a class="left carousel-control" href="#myCarousel"
											data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left"></span> <span
											class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#myCarousel"
											data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right"></span> <span
											class="sr-only">Next</span>
										</a>
									</div>
								</div>

								<br></br>

								<div class="container">
									<div class="row">
										<a
											href="http://nld.com.vn/chinh-tri/uc-tai-khang-dinh-quan-he-hop-tac-quoc-phong-voi-viet-nam-20170824191406468.htm">
											<div class="col-sm-4">
												<img src="Image/Hop_Tac_Quoc_Phong_Viet_Nam_Uc.jpg" class="img-thumbnail"
													style="width: 700px; height: 240px" alt="Image" />
												<div>Úc tái khẳng định quan hệ hợp tác quốc phòng với Việt Nam</div>
											</div>
										</a> <a
											href="http://hanoimoi.com.vn/Tin-tuc/Kinh-te/818281/manchester-united-sang-viet-nam-de%E2%80%A6-hop-tac-kinh-doanh">
											<div class="col-sm-4">
												<img src="Image/Hop_Tac_Viet_Nam_MU.png"
													class="img-thumbnail" style="width: 700px; height: 240px"
													alt="Image" />
												<div>Manchester United sang Việt Nam để… hợp tác kinh doanh</div>
											</div>
										</a>
									</div>
								</div>

								<div class="container">
									<div class="row">
										<a
											href="http://thethaovietnam.vn/bong-da-viet-nam/bau-hien-hop-tac-man-city-xay-hoc-vien-167-138289.html">
											<div class="col-sm-4">
												<img src="Image/Hop_Tac_MCity.JPG"
													class="img-thumbnail" style="width: 700px; height: 240px"
													alt="Image" />
												<div>Bầu Hiển hợp tác Man City xây học viện</div>
											</div>
										</a> <a
											href="http://nld.com.vn/thoi-su-quoc-te/viet-nam-singapore-mo-rong-hop-tac-kinh-te-20160829221623889.htm">
											<div class="col-sm-4">
												<img src="Image/Hop_Tac_Viet_Nam_Singapore.jpg"
													class="img-thumbnail" style="width: 700px; height: 240px"
													alt="Image" />
												<div>Việt Nam - Singapore mở rộng hợp tác kinh tế</div>
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

				
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright © 2017, Phạm Quang Trung - Trần Công Hậu</p>
		</div>
		<!-- /.container -->
	</footer>
		
</body>
</html>