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
					<li><a href="#tab1" class="selected">图书入库登记</a></li>
					<span
						style="color: red; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${error}</span>
					<span
						style="color: green; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${msg}</span>
					<!-- <li><a href="#tab2">自定义</a></li>  -->
				</ul>
			</div>

			<div id="tab1" class="tabson">

				<!-- <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div> -->
				<form action="customer/insert" method="post">
					<ul class="forminfo">

						<li id="name"><label>客户姓名<b>*</b></label><input
							name="name" type="text" class="dfinput" value=""
							style="width: 250px;" /></li>
						<li><label>性别<b>*</b></label> <group> <INPUT
								name="gender" type=radio checked="checked" value=0 name="gender" style="margin-left: 30px;margin-top: 10px;"/>男
							<INPUT name="gender" type=radio value=1 name="gender" style="margin-left: 30px;margin-top: 10px;"/>女 </group></li>
						<li><label>身份证号<b>*</b></label><input name="cardid"
							type="text" class="dfinput" value="" style="width: 250px;" /></li>
						<li><label>联系电话<b>*</b></label><input name="phoneNum"
							type="text" class="dfinput" value=""
							style="width: 250px;" /></li>
						<li><label>QQ号<b>*</b></label><input name="qqNum" type="text"
							class="dfinput" value="" style="width: 250px;" /></li>
						<li><label>联系地址<b>*</b></label><input name="address"
							type="text" class="dfinput" value=""
							style="width: 250px;" /></li>

						<li><label>&nbsp;</label><input type="submit" class="btn" style="margin-left: 30px;"
							value="提  交" /></li>
					</ul>
				</form>
			</div>





		</div>

	</div>

	<script type="text/javascript">
		$("#usual1 ul").idTabs();
	</script>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>





</body>
</html>
