<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
</head>
<body>
	<div>
		<h3>登录界面</h3>
		<form method="post" action="hall.jsp">
			<span>请输入用户名：</span>
			<input type="text" name="username" id="username">
			<br>
			<span>请输入密码：</span>
			<input type="password" name="password" id="password">
			<br>
			<input type="submit" value="登录">
			<input type="reset" value="重置">
		</form>
		
	</div>
	
</body>
</html>