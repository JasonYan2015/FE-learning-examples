<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>数据交互输入页</title>
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
	<script type="text/javascript">
		window.onload = function()
		{
			var aInput=document.getElementsByTagName("input");
			var oTitle=document.getElementById("head");
			var aLabel=document.getElementsByTagName("label");
			
			aInput[4].onmouseover = function()
			{
				if(aInput[0].value.length <= 18 && aInput[0].value.length >= 5)
				{
					aLabel[0].innerHTML = "√";
				}
				else
				{	
					aLabel[0].innerHTML = "×";
				}
				if(aInput[1].value.length == 6)
				{
					aLabel[1].innerHTML = "√";
				}
				else
				{
					aLabel[1].innerHTML = "×";
				}
				//判断账号
				if(isNaN(aInput[0].value))
				{
					aLabel[0].innerHTML = "错误，请输入数字";
				}
				//判断密码
				if(isNaN(aInput[1].value))
				{
					aLabel[1].innerHTML = "错误，请输入数字";
				}
				if(aLabel[0].innerHTML == "√" && aLabel[1].innerHTML == "√")
				{
					
					oTitle.innerHTML = "Welcome.";
					aInput[4].type = "submit";
				}
				else
				{
					oTitle.innerHTML = "输入错误，请重新输入";
					aInput[4].type = "button";
				}

			}
			aInput[4].onmouseout = function()
			{
				oTitle.innerHTML = "注册画面";
				aLabel[0].innerHTML = "*5-18位数字";
				aLabel[1].innerHTML = "*6位数字";
			}
		}
	</script>
</head>
<body>
	<h1 id="head">注册画面</h1>
	<form action="MyServlet" method="post">
		账号：<input name="id" type="text"><label>*5-18位数字</label><br><br>
		密码：<input name="pw" type="password" maxlength="6"><label>*6位数字</label><br><br>
		<input type="radio" value="male" checked="checked" name="sex">男
		<input type="radio" value="female" name="sex">女<br><br>
		<select name="province">
			<option value="unchoose">请选择</option>
			<option value="1">浙江</option>
			<option value="2">江苏</option>
			<option value="3">上海</option>
		</select>
		<input type="submit" value="注册">
	</form>
</body>
</html>