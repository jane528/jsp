<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
	<a href="#">安全退出</a>|<a href="#">返回购物大厅</a>
	<h3>我的购物车</h3>
	<table>
		<tr>
			<td>BookId</td>
			<td>书名</td>
			<td>价格</td>
			<td>出版社</td>
			<td>数量</td>
			<td>是否删除</td>
		<tr>
		<tr>
			<td>1</td>
			<td>java应用开发开发详情</td>
			<td>59.0</td>
			<td>电子工业出版社</td>
			<td>
				<input type="text">
				本
			</td>
			<td><a href="#">是否删除</a></td>
		<tr>
		<tr>
			<td>2</td>
			<td>java web服务开发</td>
			<td>45.0</td>
			<td>电子工业出版社</td>
			<td>
				<input type="text">
				本
			</td>
			<td><a href="#">是否删除</a></td>
		<tr>
		<tr>
			<td colspan="6"><input type="submit" value="update"></td>
		</tr>
		<tr>
			<td colspan="6">所有书的总价是：<input type="text">元</td>
		</tr>
	</table>
	<div>
		<span><a href="">1</a></span>
	</div>
	<div>
		<a href="#">清空购物车</a>
		<a href="#">提交订单</a>
	</div>
</body>
</html>