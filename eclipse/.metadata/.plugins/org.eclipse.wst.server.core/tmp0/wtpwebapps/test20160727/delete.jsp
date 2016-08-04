<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		body 
		{
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -120px;
			margin-top: -130px;		
 			background-color:#333;
 			font-family: "微软雅黑";
 			color: white; 
		}
		#idr{
			background-color: #999;
		}
	</style>
</head>
<body>
	<h1>会员信息删除画面</h1>
	<form action="deleteAct" method="post">
		编号:<input id="idr" type="text" name="id" readonly="readonly" value="<%=id %>"><br><br>
		<input type="submit" value="删除">
		<a href="home.jsp"><input type="button" value="取消"></a>
	</form>
</body>
</html>