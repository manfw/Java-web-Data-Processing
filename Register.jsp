<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/MainPage.css" />
<title>用户注册</title>

<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="Font-Awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="css/main.css" rel="stylesheet">

<script src="js/jquery-2.2.3.min.js"></script>
<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<!--主要写的js代码-->
<script src="js/default.js" type="text/javascript"></script>

<style type="text/css">
.footer {
	width: 100%;
	height: 30px;
	font-size: 12px;
	font-family: 微软雅黑;
	color: #FFF;
	letter-spacing: 0px;
	text-align: center;
	clear: both;
	position: absolute;
	bottom: 0;
	left: 0;
	background-color: #444444;
}
.box{
	position: absolute;
	top:15%;
	left:8%;
	z-index:99; //浮动在最上层
}

</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top"></nav>
<div class ="box">
	<div class="container">
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
				<div class="panel panel-primary">
					<div class="panel-heading">
						注册信息
					</div>
					<div class="panel-body">
						<form class="form-horizontal">
                			<div class="form-group">
                				<label class="col-lg-4 control-label">用户名</label>
                				<div class="col-lg-4">
                					<input type="text" class="form-control" id="Rusername" placeholder="用户名">
                				</div>
                			</div>	
                			<div class="form-group">
                				<label class="col-lg-4 control-label">登录密码</label>
                				<div class="col-lg-4">
                					<input type="password" class="form-control" id="Rpassword" placeholder="密码">
                				</div>
                			</div>
                			<div class="form-group">
                				<label class="col-lg-4 control-label">确认密码</label>
                				<div class="col-lg-4">
                					<input type="password" class="form-control" id="PasswordAgain" placeholder="再次输入密码">
                				</div>
                			</div>
                			<div class="form-group">
                				<label class="col-lg-4 control-label">邮箱</label>
                				<div class="col-lg-4">
                					<input type="text" class="form-control" id="email" placeholder="请正确输入您的邮箱地址">
                				</div>
                			</div>
                			<div class="form-group">
                				<label class="col-lg-4 control-label">所在单位</label>
                				<div class="col-lg-4">
                					<input type="text" class="form-control" id="email" placeholder="请正确输入您的邮箱地址">
                				</div>
                			</div>
                			<div class="form-group">
                				<label class="col-lg-4 control-label">用户类型</label>
                				<div class="col-lg-4">
                					<select class="form-control" id="UserType" name="UserType">
                						<option>普通用户</option>
                						<option>管理员</option>
                					</select>
                				</div>
                			</div>
                			<div class="form-group">
                				<div class="col-lg-4 col-lg-offset-4">
                					<div class="checkbox">
                						<label>
                							<input type="checkbox">我同意并遵守<a href="">相关协议</a>
                						</label>
                					</div>
                				</div>
                			</div>
                			<div class="form-group">
                				<div class="col-lg-4 col-lg-offset-4">
                					<button type="button" id="btn-register" class="btn btn-warning"><i class="fa fa-check-square"></i>&nbsp;&nbsp;创建账户</button>
                				</div>
                			</div>							
						</form>
					</div>
				</div>	
				
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
</div>
<div class="footer">
	<p>电子科技大学 · 资源与环境学院</p>
</div>
</body>
</html>