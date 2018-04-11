<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
	KE.show({
		id : 'content7',
		cssPath : './index.css'
	});
</script>

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
</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">图书管理</a></li>
			<li><a href="#">添加图书信息</a></li>
		</ul>
	</div>

	<div class="formbody">


		<div id="usual1" class="usual">

			<div class="itab">
				<ul>
					<li><a href="#tab1" class="selected">个人信息修改</a></li>
					<span style="color: red;margin-left: 200px;margin-top: 20px;font-size: 16px;">${error }</span>
					<span style="color: green;margin-left: 200px;margin-top: 20px;font-size: 16px;">${msg }</span>
				</ul>
			</div>

			<div id="tab1" class="tabson">
				<form action="user/passwd" method="post">
				<ul class="forminfo" style="margin-top: 35px;">

					<li><label>用户姓名<b>*</b></label><input id="nickname" name="nickname" disabled="disabled"
						type="text" class="dfinput" value="${user.nickname }" style="width: 220px;" /> 
						<font style="margin-left: 10px;" color=#ff0000>请输入您的正确姓名</font>
					<input name="nickname" type="hidden" value="${user.nickname }"></input></li>
					<li><label>密码提示问题<b>*</b></label><input name="question" type="text" disabled="disabled"
						class="dfinput" value="${user.question }" style="width: 220px;" /> 
						<font style="margin-left: 10px;" color=#ff0000>例如：我的哥哥是谁？</font></li>
					<li><label>密码提示答案<b>*</b></label><input name="answer" type="text"
						class="dfinput" value="" style="width: 220px;" /> 
						<font style="margin-left: 10px;" color=#ff0000>注意：密码提示问题答案长度不少于6位</FONT></li>
					
					<li id="bookName"><label>输入新密码<b>*</b></label><input name="password"
						type="password" class="dfinput" value="" style="width: 220px;" />
						<font style="margin-left: 10px;" color=#ff0000>密码可用长度为6-14的任何字符</font></li>

					<li><label>密码确认<b>*</b></label><input name="repassword" type="repassword"
						class="dfinput" value="" style="width: 220px;" /> 
						<font style="margin-left: 10px;" color=#ff0000>请再输入一次密码</font></li>
					<li><label>&nbsp;</label><input name="" type="submit"
						class="loginbtn" value="更改"
						style="margin-top: 20px;" /> <input name="" type="button"
						class="loginbtn" value="清空"
						onclick="javascript:window.location='main.html'"
						style="margin-left: 50px;" /></li>
				</ul>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
