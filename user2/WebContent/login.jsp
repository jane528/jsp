<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 引入js -->
<script type="text/javascript" src="js/login.js"></script>
<!-- 引入css -->
<link rel="stylesheet" href="css/mycss.css" type="text/css">
<title>登录界面</title>
</head>
<body>
	<div class="content">
		<div class="content-top">
			<span>欢迎登录</span>
		</div>
		<div class="content-center">
			<form action="/user2/LoginCl" method="post">
				<div class="login">
					<div class="login-content">
						<span>用户名</span>
						<input type="text" name="uname" id="uname">
					</div>
					<label>
						<%
							if(request.getAttribute("unamemsg")!=null){
								out.println(request.getAttribute("unamemsg"));
							}
						%>
					</label>
				</div>
				
				<div class="login">
					<div class="login-content">
						<span>密&nbsp;&nbsp;&nbsp;码</span>
						<input type="password" name="upass" id="upass">
					</div>
					<label>
						<%
							if(request.getAttribute("upassmsg")!=null){
								out.println(request.getAttribute("upassmsg"));
							}
						%>
						<%
							if(request.getAttribute("checkmsg")!=null){
								out.println(request.getAttribute("checkmsg"));
							}
						%>
					</label>
				</div>
				
				<div class="login-button">
					<input type="submit" value="登录" onclick="return checkUser()">
				</div>
				
			</form>
		</div>
	</div>	
</body>
</html>