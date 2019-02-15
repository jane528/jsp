<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!-- language表示jsp的片段语言 pageencoding:本页面编码方式 <% %>中间为java代码-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//out是jsp的内置对象
		out.print("hello world!");
		out.print("当前时间为："+new Date().toString());
		
	%>
	<table border="1">
		<tr>
			<th>表头一</th>
			<th>表头二</th>
		</tr>
		<tr>
			<td>1,1</td>
			<td>1,2</td>
		</tr>
		<tr>
			<td>2,1</td>
			<td>2,2</td>
		</tr>
	</table>
</body>
</html>