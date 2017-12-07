<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng kí tài khoản</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<style type="text/css">
p {
	margin: 0;
	padding: 0;
	padding-bottom: 10px;
}

body {
	margin: auto
}

.body {
	margin: auto;
	padding: 0;
}

.left {
	padding-right: 70px;
	padding: 0;
	margin: 0;
}

.right {
	padding-left: 70px;
	margin: 0;
}

footer {
	background-color: #555;
	color: white;
	padding: 15px;
}
</style>
		<script>
$(document).ready(function(){
		$('#username').val('${returnUsername}');
		$('#password').val('${returnPass}');
		$('#confirmPassword').val('${returnConfirm}');
		$('#email').val('${returnEmail}');
		$('#hoten').val('${returnHoten}');
		
		
		if(${isRefresh}==1){
			var data = new Array(4);
			  data[0] = document.getElementById('hoten').value;
			  data[1] = document.getElementById('username').value;
			  data[2] = document.getElementById('email').value;
			  data[3] = document.getElementById('password').value;
			 

			  var myerror = new Array(4);
			  myerror[0] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên</span>";
			  myerror[1] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên đăng nhập</span>";
			  myerror[2] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập email</span>";
			  myerror[3] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập mật khẩu</span>";
			 

			  var nearby = new Array("z-hoten","z-username", "z-email", "z-password");

			  for (i in data) {
			      var error = myerror[i];
			      var div = nearby[i];

			      if (data[i]=="") {
			          document.getElementById(div).innerHTML = error;
			      }
			      else
			      	document.getElementById(div).innerHTML = "";
			  }
	        }
		  Cpassword();
		
});
</script>
		<script>
$(document).ready(function(){

	
	if(${usernameCheck}==0 && ${isChecked} !=null){
	$('[data-toggle="popover"]').popover();
	usernameInput = ${'#username'}[0];
	usernameInput.setAttribute('data-content','Tên đăng nhập đã tồn tại');
	$('#username').popover('show');
    
	$('#hoten').val('${returnHoten}');
	$('#username').val('${returnUsername}');
	$('#password').val('${returnPass}');
	$('#confirmPassword').val('${returnConfirm}');
	$('#email').val('${returnEmail}');
	
	}
	if(${emailCheck}==0 && ${isChecked} !=null){
		$('[data-toggle="popover"]').popover();
		EmailInput = ${'#username'}[0];
		EmailInput.setAttribute('data-content','Email đã được sử dụng tồn tại');
		$('#username').popover('show');
	    
		$('#hoten').val('${returnHoten}');
		$('#username').val('${returnUsername}');
		$('#password').val('${returnPass}');
		$('#confirmPassword').val('${returnConfirm}');
		$('#email').val('${returnEmail}');
});
</script>
</head>
<body>
	<img class="img-responsive" src="Image/logo-news.png" alt="Logo">
		<nav class="navbar navbar-inverse ">
		<div class="container">
			<div>
				<a class="navbar-brand" href="TRANGCHU.jsp"><span
					class="glyphicon glyphicon-home"></span> Trang Chủ</a>

			</div>
		</nav> <br>
			<div class="body">
				<center>
					<h1>ĐĂNG KÝ TÀI KHOẢN</h1>
				</center>
				<br>
					<center class="well">
						<form action="RG" method="get" name="Register_Form">
							<table border="0" cellpadding="0" cellspacing="0">
								<tr class="table">
									<td class="left"><p>Họ tên</p></td>
									<td class="right"><p>
											<input type="text" name="hoten" id="hoten">
										</p></td>

									<td>
										<div id="z-hoten"></div>
									</td>
								</tr>
								<tr class="table">
									<td class="left"><p>Tài khoản</p></td>
									<td class="right"><p>
											<input type="text" name="username" id="username"
												data-toggle="popover" data-content="">
										</p></td>
									<td>
										<div id="z-username"></div>
									</td>
								</tr>
								<tr class="table">
									<td class="left"><p>Email</p></td>
									<td class="right"><p>
											<input type="email" name="email"
												placeholder="ex:haukatori@gmail.com" id="email"
												data-toggle="popover" data-content="">
										</p></td>
									<td>
										<div id="z-email"></div>
									</td>
								</tr>
								<tr class="table">
									<td class="left"><p>Mật khẩu</p></td>
									<td class="right"><p>
											<input type="password" name="password" id="password">
										</p></td>
									<td>
										<div id="z-password"></div>
									</td>
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
								</tr>
								<tr>
									<td colspan="2">
										<center>
											<input type="submit" value="Đăng Ký" name="register"
												if="register"> <input type="reset" value="Nhập lại"
												name="reset">
										</center>
									</td>
								</tr>
							</table>
						</form>
			</div>
			</center> <br><br><br><br><br> <footer
									class="py-5 bg-dark">
								<div class="container">
									<p class="m-0 text-center text-white">Copyright © 2017,
										Phạm Quang Trung - Trần Công Hậu</p>
								</div>


								<script>
function Cpassword() {
    var fpw = document.getElementById("password").value;
    var spw = document.getElementById("z-confirmPassword").value;
 
    if (fpw==spw) {
        document.getElementById('z-confirmPassword').innerHTML = "Mật khẩu đã khớp";
    } else {
        document.getElementById('z-comfirmPassword').innerHTML = "<span color='red'>Mật khẩu chưa khớp</span>";
    }
}
</script>								<!-- /.container --> </footer>
</body>
</html>