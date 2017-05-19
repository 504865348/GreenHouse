<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>温室智慧管理系统</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css"
	type="text/css"></link>
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
</head>
<body
	style="background-image:url(<%=request.getContextPath() %>/assets/img/login.JPG);background-size:100%">
	<div>
		<form action="login" method="post">
			<div class="container">
				<div class="w3 center-block" style="margin-top: 100px;">
					<div style="color: red;">${msg}</div>
					<div class="row mt20">
						<!-- 
			   <div class="col-lg-4 fs18 text-right">用户名:</div>
		 -->
						<div class="col-lg-12">
							<input type="text" name="username" id="username"
								class="form-control" placeholder="用户名">
						</div>
					</div>

					<div class="row mt20">
						<!-- 
			   <div class="col-lg-4 fs18 text-right">密&nbsp&nbsp码:</div>
			  	 -->
						<div class="col-lg-12">
							<input type="password" name="password" id="password"
								class="form-control" placeholder="密码">
						</div>
					</div>

					<div class="row center-block mt20">
						<input type="submit" value="登陆" class="col-lg-12 btn bcm tcw">
					</div>

					<div class="row mt10">
						<div class="col-lg-8">
							<input name="autologin" id="autologin" type="checkbox">
							<lable>下次自动登陆</lable>
						</div>
						<div class="col-lg-4">
							<a href="#">忘记密码</a>
						</div>

					</div>
				</div>
				<!-- end class="width-4" -->
			</div>
		</form>
	</div>
	<div class="tcw text-center"
		style="position: fixed; bottom: 0; width: 100%;">江苏大学现代农业装备与技术教育部重点实验室</div>
</body>
</html>
