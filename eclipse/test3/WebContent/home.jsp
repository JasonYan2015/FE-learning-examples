<%@page import="java.util.List"%>
<%@page import="com.easy.util.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    	List<Customer> list = (List<Customer>)request.getAttribute("all");
    
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
			margin-top: -170px;		
 			background-color:#333;
 			font-family: "微软雅黑";
 			color: white; 
		}
		#btn {
			width: 153px;
		}
		#adr{
			color: white;
		}
		#th{
			background-color: white;
			color: #333;
		}
	</style>
</head>
<body>
	<h1>会员管理系统</h1>
	<form action="select" method="post">
		<table>
			<tr>
				<td>编号</td>
				<td><input type="text" name="id"></td>
				<td></td>
			</tr>
			<tr>
				<td>名字</td>
				<td><input type="text" name="name"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="查询" id="btn"></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="add.jsp" id="adr">添加</a></td>
			</tr>
		</table>
	</form>
	
	<br>
	<%if(list != null){ %>
	共计：-<%=list.size() %>-	
	
		<table>
			<tr id="th">
				<td>#</td>
				<td>编号</td>
				<td>名字</td>
				<td>积分</td>
				<td>电话</td>
				<td>性别</td>
				<td>操作</td>
			</tr>
<%
	for(int i = 0;i < list.size(); i++){			
%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=list.get(i).id %></td>
				<td><%=list.get(i).name %></td>
				<td><%=list.get(i).score%></td>
				<td><%=list.get(i).phone %></td>
				<td><%=list.get(i).sex %></td>
				<td>
					<div id="updateAdr"><a href="update.jsp?id=<%=list.get(i).id%>&name=<%=list.get(i).name%>&score=<%=list.get(i).score%>&phone=<%=list.get(i).phone %>&sex=<%=list.get(i).sex %>" style="color: white;">修改</a></div>
					<div id="deleteAdr"><a href="delete.jsp?id=<%=list.get(i).id %>" style="color: white;">删除</a></div>
				</td>
			</tr>
<%
	} 
%>
		</table>
		<%} %>


</body>
</html>