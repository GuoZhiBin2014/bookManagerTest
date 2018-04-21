<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录图书销售管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" id="css"
	href="register/style/main.css" />
<link rel="stylesheet" type="text/css" id="css"
	href="register/style/style1.css" />
<script src="register/js/main.js" type="text/javascript"></script>
<script src="register/js/base.js" type="text/javascript"></script>
<script src="register/js/common.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 345
		});
		/* $(".select2").uedSelect({
			width : 167  
		});
		$(".select3").uedSelect({
			width : 100
		}); */
	});
</script>

<style type="text/css">
table {
	border-spacing: 1px;
	border: 1px solid #A2C0DA;
}

td, th {
	padding: 2px 5px;
	border-collapse: collapse;
	text-align: left;
	font-weight: normal;
	text-align: left
}

thead tr th {
	height: 30px;
	background: #FFFFFF;
	border: 1px solid white;
}

thead tr th.line1 {
	background: #FFFFFF;
}

thead tr th.line4 {
	background: #C6C6C6;
}

tbody tr td {
	height: 35px;
	background: #CBE2FB;
	border: 1px solid white;
	vertical-align: middle;
}

tbody tr td.line4 {
	background: #D5D6D8;
}

tbody tr th {
	height: 35px;
	background: #DFEDFF;
	border: 1px solid white;
	vertical-align: middle;
}

tfoot tr td {
	height: 35px;
	background: #FFFFFF;
	border: 1px solid white;
	vertical-align: middle;
	text-align: center
}
</style>

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
	style="margin-top:-50px;background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎进入图书销售管理系统--用户注册</span>
		<ul>
			<li><a href="login">返回登陆首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>


	<div id="register2">
		<div class="itab">
			<ul>
				<li><a href="#tab1" class="selected">管理员注册</a>
				</li>
			</ul>
			<span style="color: red; font-size: 14px;padding-left: 200px;margin-top: 10px;">${error }</span>
		</div>

		<div id="tab1" class="tabson">

			<form action="user/add" method="post">
				<ul class="forminfo" style="margin-top: 35px;">

					<li><label>用户姓名<b>*</b></label><input id="bookId"
						name="nickname" type="text" class="dfinput" value=""
						style="width: 220px;" /> <FONT style="margin-left: 10px;"
						color=#ff0000>请输入您的正确姓名</FONT></li>
					<li id="bookName"><label>用户密码<b>*</b></label><input
						name="password" type="password" class="dfinput" value=""
						style="width: 220px;" /> <FONT style="margin-left: 10px;"
						color=#ff0000>密码可用长度为6-14的任何字符</FONT></li>

					<li><label>密码确认<b>*</b></label><input name="repassword"
						type="password" class="dfinput" value="" style="width: 220px;" />
						<FONT style="margin-left: 10px;" color=#ff0000>请再输入一次密码</FONT></li>
					<li><label>电子邮箱<b>*</b></label><input name="email" type="text"
						class="dfinput" value="" style="width: 220px;" /> <FONT
						style="margin-left: 10px;" color=#ff0000>请输入您常用的其它电子邮箱</FONT></li>
					<li><label>密码提示问题<b>*</b></label><input name="question"
						type="text" class="dfinput" value="" style="width: 220px;" /> <FONT
						style="margin-left: 10px;" color=#ff0000>例如：我的哥哥是谁？</FONT></li>
					<li><label>密码提示答案<b>*</b></label><input name="answer"
						type="text" class="dfinput" value="" style="width: 220px;" /> <FONT
						style="margin-left: 10px;" color=#ff0000>注意：密码提示问题答案长度不少于6位</FONT></li>
					<li><label>性别<b>*</b></label> <group> <INPUT
							name="sex" type=radio checked="checked" value=0 name="gender" />男
						<INPUT name="sex" type=radio value=1 name="gender" />女 </group></li>

					<li><label>年龄<b>*</b></label><input name="age" type="text"
						class="dfinput" value="" style="width: 100px;" /> <FONT
						style="margin-left: 130px;" color=#ff0000>请输入年龄（必须为数字）</FONT></li>
					<li><label>联系电话<b>*</b></label><input name="phone" type="text"
						class="dfinput" value="" style="width: 220px;" /> <FONT
						style="margin-left: 10px;" color=#ff0000>请输入真实的电话，以便我们与您联系</FONT></li>
					<li><label>验证码<b>*</b></label><input name="authCode"
						type="text" class="dfinput" value="" style="width: 100px;" />
						
						<IMG style="margin-left: 140px;" alt=authImg src="/bookManager/authImg" /></li>



					<li><label>&nbsp;</label><input name="" type="submit"
						class="loginbtn" value="注册" style="margin-top: 5px;" /> <input
						name="" type="reset" class="loginbtn" value="清空" onclick=""
						style="margin-left: 50px;" /></li>
				</ul>
			</form>
		</div>


	</div>

	<div class="loginbm">Copyright © 2017 - 2018
		GuoZhibin2014@163.com, All Rights Reserved</div>
</body>
</html>
