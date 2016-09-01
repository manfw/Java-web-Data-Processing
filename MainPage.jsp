<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统主界面</title>
<link type="text/css" rel="stylesheet" href="css/MainPage.css" />
<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/default.js" type="text/javascript"></script>
<style type="text/css">
.content {
	position: absolute;
	top: 90px;
	bottom: 32px;
	width: 100%;
	overflow: hidden;
	height: 100%;
	left: 0px;
	background: url(../Image/image3.png);
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<div class="header">
		<br />
		<ul id="nav">
			<li><a href="">系统简介</a></li>
			<li><a href="">历史监测</a></li>
			<li><a href="">相关技术进展</a></li>
			<li><a href="">帮助</a></li>
		</ul>
	</div>
	<div class="content">
		<div class="main">
			<strong>无线电监测数据挖掘分析</strong>
			<div class="text">
				<br> <strong>实现无线电频谱监测数据的统计分析，挖掘和预测</strong> <br> <br>
				<br> <strong>为当今无线电监测遇到的大数据问题和缓解频谱资源紧张提供一种解决方案</strong>
			</div>
			<div class="login">
				<table>
					<tr>
						<th height="55" colspan="2" align="center">用户登录</th>
					</tr>
					<form id="LoginForm" name="LoginForm" action="LoginServlet">
					<tr>
						<th>用户名：</th>
						<td><input type="text" id="username" name="username" placeholder="Username"  autofocus required></td>
					</tr>
					<tr>
						<th>密&nbsp;&nbsp; 码：</th>
						<td><input type="password" id="password" name="password" placeholder="Password" required></td>
					</tr>
					<tr>
						<td height="55" colspan="2" align="center">
							<button type="button" id="btn-login" name="btn-login">&nbsp;登录&nbsp;</button>
							&nbsp;&nbsp;
							<button type="button"  onclick="window.location.href='Register.jsp'">&nbsp;注册&nbsp;</button>
						</td>
					</tr>
					</form>
				</table>
			</div>
		</div>
	</div>
	<div class="footer">电子科技大学 · 资源与环境学院</div>
</body>
</html>