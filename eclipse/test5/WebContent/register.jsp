<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="com.easy.model.Pv"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	List<Pv> pv = (List<Pv>)request.getAttribute("pv");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>租车管理系统</title>
	<style>
		body 
		{
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -120px;
			margin-top: -170px;		
 			background-color:#333;
 			font-family: "微软雅黑";
 			color: white; 
		}
	</style>
</head>
<body>
	<h1>租车账号注册</h1>
	<form action="RegisterAct" method="post">
		*账号:<input type="text" name="id"><br><br>
		*密码:<input type="text" name="pw"><br><br>
		*性别:<input type="radio" id="male" name="sex" value="1" checked="checked"><label for="male">男</label>
			 <input type="radio" id="female" name="sex" value="2"><label for="female">女</label><br><br>
		*地区:<select name="pv">
		<%for(int i = 0;i < pv.size();i++){ %>
			<option value="<%=pv.get(i).id %>"><%=pv.get(i).name %></option>
		<%} %>
		</select><br><br>
		<input type="submit" value="注册">
	</form>
</body>
</html>