<%@page import="java.util.ArrayList,com.user2.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 引入css文件 -->
<link type="text/css" href="css/userlist.css" rel="stylesheet">
<title>用户管理</title>
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
		<div class="content-middle">
			<div class="search">
				<div class="search-title">
						<span class="cxtj">查询条件</span>
				</div>
				<div class="search-content">
					<form action="/user2/UserlistCl" method="post">
						<span>用户名</span>
						<input type="text" name="name" placeholder="请输入用户名">
						<input class="btn" type="submit" value="查询">
					</form>
				</div>
			</div>
			<div class="userlist">
				<div class="userlist-title">
					<span class="yhlb">用户列表</span>
				</div>
				<table>
					<tr>
						<th>用户名</th>
						<th>创建时间</th>
						<th>创建人</th>
						<th>修改时间</th>
						<th>修改人</th>
						<th>操作</th>
					</tr>
					<%
						ArrayList<Users> al = (ArrayList<Users>) request.getAttribute("userlist");
						if(al!=null){
							for(Users user:al){	
					%>
							<tr>
								<td><% out.println(user.getName()); %></td>
								<td><% out.println(user.getCreatetime()); %></td>
								<td><% out.println(user.getCreateuser()); %></td>
								<td><% out.println(user.getModifytime()); %></td>
								<td><% out.println(user.getModifyuser()); %></td>
								<td>
									<a href="#">编辑</a>
									<a href="#">删除</a>
								</td>	
							</tr>
						
					<%
							}
						}
						if(al == null || al.size()==0){
							
					%>
							<tr>
								<td colspan="6" align="center"><% out.println("查询无结果"); %></td>
							</tr>
					<%	
						}
					%>				
				</table>
			</div>
		</div>
	</div>
	<div class="footer">
		
	</div>
</body>
</html>