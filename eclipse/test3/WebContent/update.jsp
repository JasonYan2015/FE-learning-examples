<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    String id = request.getParameter("id");
		String name = request.getParameter("name");
		String score = request.getParameter("score");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
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
			margin-top: -150px;		
 			background-color:#333;
 			font-family: "微软雅黑";
 			color: white; 
		}
	</style>
</head>
<body>
	<h1>会员信息修改页面</h1>
	<form action="updateAct" method="post">
		编号:<input type="text" name="id" value="<%=id %>" readonly="readonly" style="background-color: #999;"><br><br>
		名字:<input type="text" name="name" value="<%=name %>"><label>*30位以内</label><br><br>
		积分:<input type="text" name="score" value="<%=score %>"><br><br>
		手机:<input type="text" name="phone" value="<%=phone %>"><label>*11位</label><br><br>
		<input type="radio" name="sex" value="1"	<%if(sex.equals("1")){ %>	checked="checked"	<%} %>	>男
		<input type="radio" name="sex" value="2"	<%if(sex.equals("2")){ %>	checked="checked"	<%} %>	>女<br><br>
		<input type="submit" value="修改">
		<a href="home.jsp"><input type="button" value="取消"></a>
	</form>
	
</body>
</html>