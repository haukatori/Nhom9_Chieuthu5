<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang Chủ</title>
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
				<a class="navbar-brand" href="TRANGCHU.jsp"><span class="glyphicon glyphicon-home"></span></a>
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
					<li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span>
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
						<li class="active"><a href="TRANGCHU.jsp">Tin tức</a></li>
						<li><a href="NAVHoiNghiKhoaHoc.jsp">Hội nghị khoa học</a></li>
						<li><a href="NAVHopTacQuocTe.jsp">Hợp tác quốc tế</a></li>
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
			      <a href="https://vnexpress.net/tin-tuc/khoa-hoc/asgardia-du-an-xay-dung-quoc-gia-dau-tien-trong-vu-tru-3672094.html">
			        <img src="MyCarousel/Asgardia.jpg" alt="Asgardia" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Asgardia</h3>
			          <p>Dự án xây dựng quốc gia đầu tiên trong vũ trụ</p>
			        </div>
			        </a>
			      </div>

			      <div class="item">
			      <a href="http://www.yan.vn/phat-hien-bo-xuong-cua-quai-vat-bien-tu-the-ky-18-147020.html">
			        <img src="MyCarousel/xuongquaivat.jpg" alt="Chania" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Li Kỳ</h3>
			          <p>Bộ xương không đầu của quái vật biển dài 6 mét</p>
			        </div>
			        </a>
			      </div>
    
			      <div class="item">
			      <a href="https://vnexpress.net/tin-tuc/khoa-hoc/gioi-khoa-hoc-mao-hiem-gui-them-thong-diep-cho-nguoi-ngoai-hanh-tinh-3671662.html">
			        <img src="MyCarousel/thongdiepnguoingoaihanhtinh.jpg" alt="Flower" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Thú vị</h3>
			          <p>Giới khoa học mạo hiểm gửi thông điệp cho người ngoài hành tinh</p>
			        </div>
			        </a>
			      </div>

  
    
					
						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" data-slide="prev"> 
							<span class="glyphicon glyphicon-chevron-left"></span> 
							<span class="sr-only">Previous</span>
						</a> 
						<a class="right carousel-control" href="#myCarousel" data-slide="next"> 
							<span class="glyphicon glyphicon-chevron-right"></span> 
							<span class="sr-only">Next</span>
						</a>
						</div>
				</div>

					<br></br>

					<div class="container">
						<div class="row">
							<a href="http://vienngonnguhoc.gov.vn/bai-viet/nghiem-thu-cac-de-tai-cap-co-so-nam-2015_614.aspx">
								<div class="col-sm-4">
											<img
												src="Image/Nghiem_Thu_De_Tai.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Nghiệm thu đề tài cấp cơ sở 2015</div>
									</div>
							</a>	
							<a href="http://vienngonnguhoc.gov.vn/bai-viet/vien-ngon-ngu-hoc-tien-hanh-nghiem-thu-18-de-tai-cap-vien_133.aspx">
								<div class="col-sm-4">
											<img
												src="Image/Nghiem_Thu_18_De_Tai.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Viện Ngôn ngữ học tiến hành nghiệm thu 18 đề tài cấp Viện</div>
									</div>
							</a>	
						</div>
					</div>

					<div class="container">
						<div class="row">
							<a href="https://baomoi.com/de-xuat-cai-tien-chu-viet-tieng-viet-gay-tranh-cai-bo-gd-dt-thong-tin-chinh-thuc/c/24135290.epi">
								<div class="col-sm-4">
											<img
												src="Image/Ngon_Ngu_Tieng_Viet_Moi.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Đề xuất cải tiến chữ viết tiếng Việt gây tranh cãi: Bộ GD-ĐT thông tin chính thức</div>
									</div>
							</a>	
							<a href="http://dantri.com.vn/khoa-hoc/18-de-tai-khoa-hoc-xuat-sac-cua-hoc-sinh-tham-du-cuoc-thi-nghien-cuu-khoa-hoc-ky-thuat-cap-quoc-gia-20160105075206302.htm">
								<div class="col-sm-4">
											<img
												src="Image/18_De_Tai_Khoa_Hoc_Cap_Quoc_Gia.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>18 đề tài khoa học xuất sắc của học sinh tham dự cuộc thi nghiên cứu khoa học kỹ thuật cấp quốc gia</div>
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
	</footer>
		
</body>
</html>