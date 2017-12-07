<?xml version="1.0" encoding="Utf-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/databaseweb" user="root" password="1234" />

<sql:query dataSource="${snapshot}" var="result"
	sql=" Select UserName,Password from account Where UserName = '${param.username}' and  Password='${param.password}'">;
         </sql:query>

<c:if test="${not empty param.login }">
	<c:if
		test="${result.rows[0].UserName !=null and result.rows[0].Password != null}">
		<c:set var="user" value="${param.username}" scope="session" />
		<c:redirect url="TrangChuForUser.jsp" />
	</c:if>
</c:if>



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
$(document).ready(function()
		if(${PasswordCheck}==1)
			{
		       $("#username").val("${returnUsernameLogin}");
               $("#password").val("${returnPassLogin}"");	
			}
)};
</script>
</head>
<body>
	<div align="center">
		<img src="Image/logo-news.png" width="500px" height="130px" />
	</div>
	<nav class="navbar navbar-inverse ">
	<div class="container">
		<div>
			<a class="navbar-brand" href="Trang1.html"><span
				class="glyphicon glyphicon-home"></span> Trang Chủ</a>

		</div>
	</nav>

	<br>


		<div class="container-fluid text-center">
			<!-- Start Main Regions -->
			<div id="page-content" class="row-fluid">
				<section id="region-main" class="span12"> <span
					class="notifications" id="user-notifications"></span>
				<div role="main">
					<span id="maincontent"></span>
					<div class="loginbox clearfix onecolumn">
						<div class="loginpanel">
							<h2>Log in</h2>
							<div class="subcontent loginsub">


								<form action="Login.jsp" method="post" id="logging">
									<div class="loginform">
										<div class="form-label">
											<label for="username">Username</label>
										</div>
										<div class="form-input">
											<input type="text" id="username" size="15" value=""
											name="username"
												placeholder="Ten dang nhap">
										</div>
										<div class="clearer">
											<!-- -->
										</div>
										<div class="form-label">
											<label for="password">Password</label>
										</div>
										<div class="form-input">
											<input type="password" id="password" size="15" value=""
												placeholder="Mat Khau" name="password">
										</div>
									</div>
									<div class="clearer">
										<!-- -->
									</div>
									<div class="rememberpass">
										<input type="checkbox" name="rememberusername"
											id="rememberusername" value="1"> <label
											for="rememberusername">Remember username</label>
									</div>

									<input id="anchor" type="hidden" name="anchor" value="">
										<script>
											document.getElementById('anchor').value = location.hash
										</script> <input type="submit" name="login" id="login" value="Log in"> <br>
												<br>
										
										
								</form>

							</div>
						</div>
					</div>
				</div>
				</section>
			</div>
			<!-- End Main Regions -->
		</div> <br><br><br><br><br><br><br><br><br><br></br></br>
										<footer class="py-5 bg-dark">
										<div class="container">
											<p class="m-0 text-center text-white">Copyright © 2017,
												Phạm Quang Trung - Trần Công Hậu</p>
										</div>
										<!-- /.container --> </footer>
</body>

</html>
