<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String score = request.getParameter("score");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
    
		if(sex.equals("1"))
		{
			sex="男";
		}
		else
		{
			sex="女";
		}
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
	</style>
</head>
<body>
	<h1>添加成功</h1>
	编号：<%=id %><br>
	名字：<%=name %><br>
	积分：<%=score %><br>
	手机：<%=phone %><br>
	性别：<%=sex %><br>
	<div style="background-color: white;text-align: center;"><a href="home.jsp" style="color: #333;">返回主页</a></div>
</body>
</html>