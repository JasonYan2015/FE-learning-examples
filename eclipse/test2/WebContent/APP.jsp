<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>服务器端#账号密码注册</title>
	<style>
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
	<script type="text/javascript">
		window.onload = function()
		{
			var aInput=document.getElementsByTagName("input");
			var oTitle=document.getElementById("head");
			var aLab=document.getElementsByTagName("label");
			
			aInput[2].onmouseover = function()
			{
				oTitle.innerHTML = "Hello,welcome.";
			}
			aInput[2].onmouseout = function()
			{
				oTitle.innerHTML = "注册画面";
				aLab[0].innerHTML = "*5-18位数字";
				aLab[1].innerHTML = "*6位数字";
			}
			aInput[2].onclick = function()
			{
				//判断账号
				if(aInput[0].value.length <= 18 && aInput[0].value.length >= 5)
					aLab[0].innerHTML = "√";
				else
					aLab[0].innerHTML = "×";
				if(isNaN(aInput[0].value))
					aLab[0].innerHTML = "错误，请输入数字";
				//判断密码
				if(aInput[1].value.length == 6)
					aLab[1].innerHTML = "√";
				else
					aLab[1].innerHTML = "×";
				if(isNaN(aInput[1].value))
					aLab[1].innerHTML = "错误，请输入数字";
			}
		}
	</script>
</head>
<body>
	<h1 id="head">注册画面</h1>
	账号：<input id="int1" type="text"><label id="l1">*5-18数字</label><br><br>
	密码：<input id="int2" type="text"><label id="l2">*6位数字</label><br><br>
	<input id="btn" type="button" value="注册">
</body>
</html>