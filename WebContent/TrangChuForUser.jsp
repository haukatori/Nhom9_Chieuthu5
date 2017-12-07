<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<c:if test="${empty sessionScope.user}">
<c:redirect url="Login.jsp"/>

</c:if>
    
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
				<a class="navbar-brand" href="TrangChuForUser.jsp"><span class="glyphicon glyphicon-home"></span></a>
			</div>
			<div class="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="TrangChuForUser.jsp">Trang chủ</a></li>
					<li><a href="BARGioiThieu.jsp">Giới Thiệu</a></li>
					<li><a href="BARKhoDuLieu.jsp">Kho dữ liệu</a></li>
					<li><a href="BARLienHe.jsp">Liên hệ</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="padding-top: 8px">
					<<button class="btn btn-primary dropdown-toggle" id="menu1"
						data-toggle="dropdown">
						${sessionScope.user}<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="DoiMatKhau.jsp">Tài khoản</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="Upload.jsp">Tải lên</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="Logout.jsp">Đăng xuất</a></li>
					</ul>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="TrangChuForUser.jsp">Tin tức</a></li>
        <li><a href="#section3">Hội nghị khoa học</a></li>
        <li><a href="#section3">Hợp tác quốc tế</a></li>
        <li><a href="#section2">Liên kết trong nước</a></li>
        <li><a href="#section2">Hoạt động khác</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Page..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
            </div>
			<div class="col-sm-8">

				<img class="img"
					src="img/ho-lak-vien-ngoc-bich-cua-nui-rung-tay-nguyen-13-750x500.jpg"
					alt="Hinh ảnh"> 
				<h4 class="text-left">
					<a href="#">Làng nghề đóng xuồng ghe Long Hậu thuộc huyện Lai
						Vung, tỉnh Đồng Tháp đã có hơn 100 năm nay. Được công nhận di sản
						văn hóa phi vật thể cấp quốc gia thế nhưng khi mấy năm nay lũ về
						ít hoặc không về, làng nghề này cũng lao đao vì đầu ra khó khăn...</a>
				</h4>
                <br> <br>
                
				<div class="container">
					<div class="row">
					<a href="https://www.thukieng.com/ban-cho-akita-nhap-nga-au-my/">
					    <div class="col-sm-2">
							<div class="panel panel-primary">
								<div>BLACK FRIDAY DEAL</div>
								<div style="margin-left: 10px">
									<img src="https://www.ohay.tv/file/v1/content/2015/05/enhanced-buzz-3386-1327948523-8-ohay-tv-738.jpg"
										class="img-responsive" style="width:150px; height: 120px" alt="Image">
								</div>
								<div class="panel-footer">Want to a Akita Dog</div>
							</div>
						</div>
					</a>
						
						<div class="col-sm-2">
							<div class="panel panel-danger">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="panel panel-success">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="panel panel-success">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						
						<div class="col-sm-2">
							<div class="panel panel-primary">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						
						<div class="col-sm-2">
							<div class="panel panel-primary">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="panel panel-primary">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="panel panel-primary">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>Tài liệu ngoài</p>
				</div>
				<div>
					<iframe src="https://youtube.com/embed/Lt-U_t2pUHI?showinfo=0&autoplay=0&controls=1" width="180px" 
					height="350px" style="margin-right:150px"></iframe>
				</div>
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