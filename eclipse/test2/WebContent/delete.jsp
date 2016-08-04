<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
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
	<script type="text/javascript">
		window.onload=function()
		{
			var oTxt=document.getElementById("txt");
			var oBtn=document.getElementById("btn");
			
			oBtn.onclick=function()
			{
				
			}
		}
	</script>
</head>
<body>
	<h1>删除画面</h1>
	<form action="Delete" method="post">
		账号：<input type="text" id="txt" name="id"><br>
		<input type="submit" value="删除" id="btn">
	</form>
</body>
</html>