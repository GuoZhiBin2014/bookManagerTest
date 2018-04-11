<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录图书销售管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>
				
<script language="javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		})
	});
</script>

</head>

<body
	style="background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录图书销售管理系统</span>
		<ul>
			<li><a href="register">注册</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>

	<div class="loginbody">
		

		<!-- <span class="systemlogo"></span>  -->
		<img class="loginlogo" src="images/loginlogo.png" alt="loginLogo" />
		<div class="loginbox" style="background: url(images/logininfo.png) no-repeat;">
		<span style="float: left;color: red;margin-left: 550px;margin-top: 50px;">${msg }</span>
			
			<form action="user/login" method="post">
			<ul>
				<li><input name="nickName" type="text" class="loginuser" value="Admin"
					onclick="JavaScript:this.value=''" /></li>
				<li><input name="password" type="password" class="loginpwd" value="密码"
					onclick="JavaScript:this.value=''" /></li>

				<li><input type="submit" class="loginbtn" value="登录" 
					onclick="javascript:window.location='main.html'" /> <label><input
						name="" type="checkbox" value="" checked="checked" />记住密码</label> <label><a
						href="#">忘记密码</a></label></li>



			</ul>
			</form>
			<!-- <div>
				<img src="images/register.png" alt="" /> <a class="reword" href="register2.html">管理员登陆</a>
			</div> -->
			<div class="register">
				<img src="images/register.png" alt="" /> <a class="reword" href="register">用户注册</a>
			</div>

		</div>



	</div>



	<div class="loginbm">Copyright © 2017 - 2018
		GuoZhibin2014@163.com, All Rights Reserved</div>
</body>
</html>
