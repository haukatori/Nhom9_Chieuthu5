<?xml version="1.0" encoding="Utf-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Trang 2</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}
</style>
		<script>
$(document).ready(function(){
		$('#username').hide();
});
</script>
<body>
	<div align="center">
		<img src="Image/logo-news.png" width="500px" height="130px" />
	</div>
	<nav class="navbar navbar-inverse ">
	<div class="container">
		<div>
			<ul>
				<li><a class="navbar-brand" href="Page1.html"><span
						class="glyphicon glyphicon-home"></span> Trang Chủ</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" style='padding-bottom: 15px'">
				<button class="btn btn-primary dropdown-toggle" id="menu1"
					 name="menu" data-toggle="dropdown">
					hau<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Tài khoản của tôi</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="Upload.jsp">Tải lên</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Đăng xuất</a></li>
				</ul>
			</ul>
		</div>

	</div>
	</nav>
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<table class="table">

					<br>
						<tr>
							<td><a href="#" style="padding-left: 12px">Đổi mật khẩu</a></td>
						</tr> <br>
							<tr>
								<td><a href="#">Hợp tác quốc tế</a></td>
							</tr> <br>
								<tr>
									<td><a href="#" style="padding-left: 10px">Tạp chí
											khoa học</a></td>
								</tr> </br>
							<tr>
								<td><a href="Upload.jsp" style="padding-left: 12px">Tải
										lên</a></td>
							</tr> <br>
								<tr>
									<td><a href="DangXuat.jsp" style="padding-left: 0px">Đăng
											xuất</a></td>
								</tr>
				</table>
			</div>
			<div class="col-sm-8">
				<center>
					<h1>
						Tải lên
						</h3>
						Chọn tệp tải lên: <br />
						<form action="LoadInfoToDataBase" method="get">						
						<input
								type="text" name="TenTaiLieu" id="TenTaiLieu"/> <span>:
									Tên tài liệu </span> <br></br> 
								<input type="text" name="username" id="username" values="${sessionScope.user}"/>
								<br></br>	<input type="submit"
								value="Lưu" niame="upload"/>
						</form>
				</center>
			</div>
		</div>
	</div>
	<br> <br> <br> <br> <br> <br> <br> <br>
									<br> <br></br> </br>
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright © 2017, Phạm Quang
			Trung - Trần Công Hậu</p>
	</div>
</body>
</html>