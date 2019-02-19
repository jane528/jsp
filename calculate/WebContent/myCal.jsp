<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/js1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="myResult.jsp" method="post" onsubmit="return checkNum()">
		<span>请输入第一个数：</span>
		<input type="text" name="num1" placeholder="请输入整数" id="num1" >
		<br>
		<span>请输入第二个数：</span>
		<input type="text" name="num2" placeholder="请输入整数" id="num2">
		<br>
		<span>请选择运算符：</span>
		<select name="cal">
			<option value="+">加</option>
			<option value="-">减</option>
			<option value="*">乘</option>
			<option value="/">除</option>
		</select>
		<br>
		<input type="submit" value="提交">
		<!-- <input type="submit" value="提交" onclick="return checkNum()">-->
	</form>
</body>
</html>