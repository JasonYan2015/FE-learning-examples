<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="a">跳toIndex.jsp</a>
	<form action="add" method="post">						<!-- 跳转到add为控制器 -->
		书名：<input type="text" name="bookname"/><p></p>			<!--  p标签用来替代br换行 -->
		作者：<input type="text" name="author"/><p></p>
		出版社：<input type="text" name="press"/><p></p>
		出版时间：<input type="text" name="presdate"/><p></p>
		<input type="submit" value="提交"/><p></p>
	</form>
	
	<a href="param?name=xiaoming">testparam</a>
	
	<a href="select">查询</a>
	
	<%String sessionN = (String)session.getAttribute("name"); %>
	session=<%=sessionN %>
</body>
</html>