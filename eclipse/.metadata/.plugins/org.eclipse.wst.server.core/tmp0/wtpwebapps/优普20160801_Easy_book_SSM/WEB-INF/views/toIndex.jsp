<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>this is toIndex.</h1>
	
	<%String n = (String)request.getAttribute("name"); %>
	名字为：<%=n %>
	
	<a href="index.jsp">跳到C</a>
</body>
</html>