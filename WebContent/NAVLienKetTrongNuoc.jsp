<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NAVLienKetTrongNuoc</title>
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
					<li><a href="BARLienHe.jsp">Liên hệ</a>
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
						<li class="active"><a href="#section2">Liên kết trong nước</a></li>
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
			      <a href="http://vov.vn/kinh-te/doanh-nghiep/lien-ket-doanh-nghiep-trong-nuoc-va-fdi-con-kha-mo-nhat-668590.vov">
			        <img src="Image/Lien_Ket_Trong_Nuoc_FDI.jpg" alt="Asgardia" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Liên kết doanh nghiệp trong nước và FDI còn khá mờ nhạt</h3>
			        </div>
			        </a>
			      </div>

			      <div class="item">
			      <a href="http://enternews.vn/vingroup-lien-ket-250-doanh-nghiep-day-manh-san-xuat-trong-nuoc-98791.html">
			        <img src="Image/Vingroup_Lien_Ket_250_Doanh_Nghiep.jpg" alt="Chania" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>Vingroup liên kết 250 doanh nghiệp đẩy mạnh sản xuất trong nước</h3>
			        </div>
			        </a>
			      </div>
    
			      <div class="item">
			      <a href="http://enternews.vn/vbf-2017-tang-cuong-lien-ket-doanh-nghiep-trong-nuoc-voi-khoi-fdi-112471.html">
			        <img src="Image/Lien_Ket_Doanh_Nghiep_Trong_Nuoc_Voi_FDI.JPG" alt="Flower" width="920" height="345">
			        <div class="carousel-caption">
			          <h3>VBF 2017: Tăng cường liên kết doanh nghiệp trong nước với khối FDI</h3>
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
							<a href="http://www.nhandan.com.vn/kinhte/thoi_su/item/33311002-mo-hinh-lien-ket-doanh-nghiep-va-nong-dan-o-nho-quan.html">
								<div class="col-sm-4">
											<img
												src="Image/Lien_Ket_DN_And_ND_Nho_Quan.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Mô hình liên kết doanh nghiệp và nông dân ở Nho Quan</div>
									</div>
							</a>	
							<a href="http://baotuyenquang.com.vn/kinh-te/nong-nghiep-nong-thon/doanh-nghiep-va-nong-dan-lien-ket-trong-san-xuat-nong-nghiep-87995.html">
								<div class="col-sm-4">
											<img
												src="Image/Doanh_Nghiep_Lien_Ket_Voi_Nong_Dan.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Doanh nghiệp và nông dân liên kết trong sản xuất nông nghiệp</div>
									</div>
							</a>	
						</div>
					</div>

					<div class="container">
						<div class="row">
							<a href="http://baoninhthuan.com.vn/diendan/49334p25c151/phat-trien-cac-mo-hinh-lien-ket-san-xuat-trong-nong-nghiep.htm">
								<div class="col-sm-4">
											<img
												src="Image/Mo_Hinh_Lien_Ket_San_Xuat.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Phát triển các mô hình liên kết sản xuất trong nông nghiệp</div>
									</div>
							</a>	
							<a href="https://baomoi.com/lien-ket-va-hop-tac-giua-cac-doanh-nghiep-xay-dung-viet-nam/c/12816427.epi">
								<div class="col-sm-4">
											<img
												src="Image/Lien_Ket_Hop_Tac_Doanh_Nghiep_Xay_Dung.jpg"
												class="img-thumbnail" style="width: 700px; height: 240px"
												alt="Image"/>
										<div>Liên kết và hợp tác giữa các doanh nghiệp xây dựng Việt Nam</div>
								</div>
							</a>	
						</div>
					</div>
				</div>

				<div class="col-sm-2 sidenav">
					<h2>Liên Hệ Quảng Cáo</h2>
					<br>
					<img src="Image/Dolla_Quang_Cao.jpg"
						class="img-thumbnail" 
						style="width: 200px; height: 140px" alt="Image"/>
						<br>
					<h3>Bạn có nhu cầu đặt quảng cáo</h3>
					<h3>Vui lòng liên hệ:</h3>
					<h4>Trần Công Hậu</h4>
					<h>Sdt: 0123456789</h>
					<h>Email: tchaupro@gmail.com</h>
					<h3>Hoặc</h3>
					<h4>Phạm Quang Trung</h4>
					<h>Sdt: 0987654321</h>
					<h>Email: pqtrung@gmail.com</h>
					<br></br>
					<img src="Image/Dolla_Quang_Cao_2.jpg"
						class="img-thumbnail" 
						style="width: 200px; height: 140px" alt="Image"/>
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