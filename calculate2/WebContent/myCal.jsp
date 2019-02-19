<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>计算器</title>
<script>
	function checkNum() {
		var num1 = document.getElementById("num1").value;
		var num2 = document.getElementById("num2").value;
		if (num1 == "" || num2 == "") {
			window.alert("输入不能为空");
			return false;
		}
		var reg = /^-?\d+$/;
		if (!reg.test(num1) || !reg.test(num2)) {
			window.alert("请输入整数");
			return false;
		}
	}
</script>
</head>
<body>
<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String cal = request.getParameter("cal");
		int num1i = Integer.parseInt(num1);
		int num2i = Integer.parseInt(num2);
		int res = 0;
		if (num1 != null && num2 != null) {
			if ("+".equals(cal)) {
				res = num1i + num2i;
			} else if ("-".equals(cal)) {
				res = num1i - num2i;
			} else if ("*".equals(cal)) {
				res = num1i * num2i;
			} else if ("/".equals(cal)) {
				res = num1i / num2i;
			}
		}
	%>
	<form action="myCal.jsp" method="post">
		<span>第一个数：</span> 
		<input type="text" name="num1" value="<%=num1 %>" id="num1"placeholder="请输入第一个数字"> 
		<br> 
		<span>第二个数：</span> 
		<input tyep="text" name="num2" id="num2" value="<%=num2 %>" placeholder="请输入第二个数字"> <br>
		<span>请选择运算符：</span> <select name="cal">
			<option value="+">加</option>
			<option value="-">减</option>
			<option value="*">乘</option>
			<option value="/">除</option>
		</select> 
		<br>
		<input type="submit" value="提交" onclick="return checkNum()">
		<hr>
		<span>计算结果：<%=res %></span>
	</form>
	
</body>
</html>