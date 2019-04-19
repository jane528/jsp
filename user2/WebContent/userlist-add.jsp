<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 引入css文件 -->
<link type="text/css" href="css/userlist.css" rel="stylesheet">
<title>添加页面</title>
</head>
<body>
	<div class="header">
		<ul>
			<li>
				<span class="title">用户管理系统</span>
				<span class="name"><%out.println(request.getParameter("uname")); %></span>
				<img src="img/12.png" style="width:60px;height:60px;">	
			</li>
		</ul>	
	</div>
	<div class="content">
		<div class="content-left">
			<div class="nav-left-main">
				<div class="nav-left-title" >
					<img src="img/home.png">
					<span class=""><a href="manager.jsp">首页</a></span>
				</div>
			</div>
			
			<div class="nav-left-main">
				<div class="nav-left-title" >
					<img src="img/um.png">
					<span class="">用户管理</span>
				</div>
			<div class="nav-left-content" id="c1">
				<ul class="usermanager" >
					<li><a href="/user2/GotoUser">用户管理</a></li>
					<li><a href="">用户添加</a></li>
					<li><a href="">退出登录</a></li>
				</ul>
			</div>
			
		</div>	
		</div>
		<div class="content-right">
			<form>
				<span>用户名</span>
				<input type="text" id="uname" name="uname">
				<span>密码</span>
				<input type="password" id="uname" name="uname">
				<input type="submit" value="保存">
			</form>
			<button><a href="">取消</a></button>
		</div>
	</div>
	<div class="footer">
		
	</div>
</body>
</html>