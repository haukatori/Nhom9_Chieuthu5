<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Trang 3</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
			<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	
	Cpassword();	
	
});
</script>
</head>

<body>

	<div align="center">
		<img src="img/abcdef.jpg" width="500px" height="150px" />
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
					data-toggle="dropdown">
					${sessionScope.user}<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Tài khoản của tôi</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Tải lên</a></li>
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
								<td><a href="Upload.html" style="padding-left: 12px">Tải
										lên</a></td>
							</tr> <br>
								<tr>
									<td><a href="DangXuat.jsp" style="padding-left: 0px">Đăng
											xuất</a></td>
								</tr>
				</table>
			</div>
			<div class="col-sm-8">
				<h3>Đổi mật khẩu</h3>
				<center>
					<form action="ChangePass" method="get">
						<tr class="table">
							<td class="left"><p>Mật khẩu mới</p></td>
							<td class="right"><p>
									<input type="password" name="password" id="password">
								</p></td>
						</tr>
						<tr class="table">
							<td class="left"><p>Nhập lại mật khẩu</p></td>
							<td class="right"><p>
									<input type="password" name="confirmPassword"
										id="confirmPassword">
								</p></td>
							<td>
								<div id="z-confirmPassword"></div>
							</td>
								<td>
									<div id="z-succeed"></div>
							</td>
						</tr>
                        <input type="text" name="username" id="username" value="${sessionScope.user}">
                        
                        <br>
						<input type="submit" name="Change" value="Thay đổi"> <br>
					</form>
					<br>
					
						<center>
			</div>
		</div>
	</div>
	<br> <br> <br> <br> <br> <br><br> <footer
									class="py-5 bg-dark">
								<div class="container">
									<p class="m-0 text-center text-white">Copyright © 2017,
										Phạm Quang Trung - Trần Công Hậu</p>
								</div>
								<!-- /.container --> </footer>
</body>
<script>
	function Cpassword() {
		var fpw = document.getElementById("password").value;
		var spw = document.getElementById("confirmPassword").value;

		if (fpw == spw && fpw !="" && spw !="") {
			document.getElementById('z-confirmPassword').innerHTML = "Mật khẩu chưa khớp";
		} else {
			document.getElementById('z-comfirmPassword').innerHTML = "<span color='red'>Mật khẩu chưa khớp</span>";
		}
	}
</script>
</html>

