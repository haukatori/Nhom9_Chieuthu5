<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/databaseweb" user="root" password="1234" />
	
	<sql:query dataSource="${snapshot}" var="Ref"
	sql=" Select TenTaiLieu,TrangThai,NgayTaiLen,NguoiTaiLen from thongtintailieu">
         </sql:query>
          
    
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test Kho Dữ Liệu</title>
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
					<li><a href="TRANGCHU.jsp">Trang chủ</a></li>
					<li><a href="BARGioiThieu.jsp">Giới Thiệu</a></li>
					<li class="active"><a href="BARKhoDuLieu.jsp">Kho dữ liệu</a></li>
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
	
	<br>
	


<div class="container">
  <div class="row">
    <nav class="col-sm-2" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Khoa Học</a></li>
        <li><a href="#section2">Kỹ Thuật</a></li>
        <li><a href="#section3">Điện Tử</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#section41">Section 4-1</a></li>
            <li><a href="#section42">Section 4-2</a></li>                     
          </ul>
        </li>
      </ul>
    </nav>
    <div class="col-sm-10">
      <div id="section1">

					<div class="container">
						<div class="col-sm-10">

						 <h1>Đề tài khoa học</h1>
							<table class="table">
								<thead>
									<tr>
										<th>Tên tài liệu</th>
										<th>Trạng thái</th>
										<th>Ngày tải lên</th>
										
										<th>Người sở hữu</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var = "row" items = "${Ref.rows}">
									<tr>
										<td>${row.TenTaiLieu}</td>
										<td>${row.TrangThai}</td>
										<td>${row.NgayTaiLen}</td>
										<td>${row.NguoiTaiLen}</td>
									</tr>
							
								</tbody>
								</c:forEach>
							</table>
						</div>

					</div>
				</div>
				
     
      <div id="section41">         
        <h1>Section 4-1</h1>
        <p>Try to scroll this section and look at the navigation list while scrolling!</p>
      </div>      
      <div id="section42">         
        <h1>Section 4-2</h1>
        <p>Try to scroll this section and look at the navigation list while scrolling!</p>
      </div>
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