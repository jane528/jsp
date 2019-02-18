<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		
		String num1=request.getParameter("num1");
		String num2=request.getParameter("num2");
		String cal=request.getParameter("cal");
		int result=0;
		if(num1!=null && num2!=null){
			if("+".equals(cal)){
				result = Integer.parseInt(num1)+Integer.parseInt(num2);
			}else if("-".equals(cal)){
				result = Integer.parseInt(num1)-Integer.parseInt(num2);
			}else if("*".equals(cal)){
				result = Integer.parseInt(num1)-Integer.parseInt(num2);
			}else if("/".equals(cal)){
				result = Integer.parseInt(num1)/Integer.parseInt(num2);
			}
		}
		out.println(num1+cal+num2+"="+result);
		
	%>
</body>
</html>