<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    //JAVA代码
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String sex = request.getParameter("sex");
    String province = request.getParameter("province");
    //字符串比较	使用.equals(" ")方法
    String mySex = "女";
    if(sex.equals("male") ){
    	mySex = "男";
    }
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>数据交互输出页</title>
	<style type="text/css">
	body 
		{
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -120px;
			margin-top: -100px;		
 			background-color:#333;
 			font-family: "微软雅黑";
 			color: white; 
		}
	</style>
</head>
<body>
	注册成功!<br>
	账号：<%=id %><br>
	密码：<%=pw %><br>
	性别：<%=mySex %><br>
	省份：<%=province %>
</body>
</html>