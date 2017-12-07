<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NAVHoiNghiKhoaHoc</title>
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
					<li><a href=BARGioiThieu.jsp>Giới Thiệu</a></li>
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
			<div class="col-sm-2 sidenav">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="TRANGCHU.jsp">Tin tức</a></li>
        <li class="active"><a href="#section3">Hội nghị khoa học</a></li>
        <li><a href="NAVHopTacQuocTe.jsp">Hợp tác quốc tế</a></li>
		<li><a href="NAVLienKetTrongNuoc.jsp">Liên kết trong nước</a></li>
		<li><a href="NAVHoatDongKhac.jsp">Hoạt động khác</a></li>
      </ul><br>
  
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
			      <a href="http://dantri.com.vn/khoa-hoc-cong-nghe/hoi-nghi-khoa-hoc-quoc-gia-nghien-cuu-co-ban-va-ung-dung-cong-nghe-thong-tin-20170817204031315.htm">
			        <img src="Image/Hoi_Nghi_Khoa_Hoc_Ung_Dung_CNTT.jpg" alt="CNTT" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Hội nghị khoa học quốc gia:</h3>
			          <p>Nghiên cứu cơ bản và ứng dụng Công nghệ thông tin</p>
			        </div>
			        </a>
			      </div>

			      <div class="item">
			      <a href="http://hpmu.edu.vn/hpmu/news/TIN-TUC-SU-KIEN/Hoi-nghi-khoa-hoc-Nghien-cuu-sinh-truong-Dai-hoc-Y-Duoc-Hai-Phong-lan-thu-nhat-1392/">
			        <img src="Image/Hoi_Nghi_Nghien_Cuu_Sinh.jpg" alt="Chania" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Hội nghị khoa học:</h3>
			          <p>Nghiên cứu sinh trường Đại học Y Dược Hải Phòng lần thứ nhất</p>
			        </div>
			        </a>
			      </div>
    
			      <div class="item">
			      <a href="http://old.iuh.edu.vn/vi/tin-tuc-su-kien-fi11/hoi-nghi-khoa-hoc-lan-5-truong-dai-hoc-cong-nghiep-tphcm-cong-bo-gan-100-cong-trinh-khoa-hoc-a1043.html">
			        <img src="Image/Hoi_Nghi_Khoa_Hoc_Lan_5.JPG" alt="Flower" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Hội nghị khoa học lần 5 Trường Đại học Công nghiệp TPHCM:</h3>
			          <p>Công bố gần 100 công trình khoa học</p>
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
							<a href="http://suckhoedoisong.vn/hoi-nghi-khoa-hoc-va-trien-lam-rang-ham-mat-quoc-te-lan-thu-10-n135516.html">
								<div class="col-sm-4">
											<img
												src="Image/Hoi_Nghi_Rang_Ham_Mat.JPG"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Hội nghị khoa học và Triển lãm Răng Hàm Mặt quốc tế lần thứ 10</div>
									</div>
							</a>	
							<a href="https://hvtc.edu.vn/taichinhcong/tabid/617/catid/370/id/28195/HOI-NGHI-KHOA-HOC-CUA-BO-MON-QUAN-LY-TAI-CHINH-CONG-VOI-NGHIEN-CUU-SINH-dOT-1-NAM-2017/Default.aspx">
								<div class="col-sm-4">
											<img
												src="Image/Hoi_Nghi_Tai_Chinh.JPG"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Hội nghị khoa học của bộ môn quản lí tài chính công với nghiên cứu sinh đợt 1 năm 2017</div>
									</div>
							</a>	
						</div>
					</div>

					<div class="container">
						<div class="row">
							<a href="http://www.biogaia-prodentis.vn/hoi-nghi-khoa-hoc-va-trien-lam-nha-khoa-quoc-te-lan-thu-10/">
								<div class="col-sm-4">
											<img
												src="Image/Hoi_Nghi_Trien_Lam_Nha_Khoa.png"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Hội nghị Khoa học và Triển lãm nha khoa Quốc tế lần thứ 10</div>
									</div>
							</a>	
							<a href="http://nongnghiep.vn/hoi-nghi-khoa-hoc-va-cong-nghe-thuc-pham-asean-lan-thu-15-post207187.html">
								<div class="col-sm-4">
											<img
												src="Image/Hoi_Nghi_Khoa_Hoc_Thuc_Pham_Asean.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Hội nghị khoa học và công nghệ thực phẩm ASEAN lần thứ 15</div>
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