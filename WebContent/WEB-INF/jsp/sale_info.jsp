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
					<li><a href="#tab1" class="selected">销售信息统计</a></li>
					<span
						style="color: red; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${error}</span>
					<span
						style="color: green; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${msg}</span>
					<!-- <li><a href="#tab2">自定义</a></li>  -->
				</ul>
			</div>

			<div id="tab1" class="tabson">

				<!-- <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div> -->
				<form action="storage/add">
					<ul class="forminfo">

						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">图书总计数目:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${bookSize }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">图书库存总量:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${stockNum }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">图书入库订单数目:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${stockSize }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">图书入库数目:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${storageNum }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">图书预警数目:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${warnNum }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">销售订单数目:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${recordSize }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">销售图书数量总计:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${recordNum }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">客户数量总计:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${customerNum }</span></li>
						<li><label
							style="width: 150px; margin-left: 15px; font-size: 14px;">管理员数量统计:</label><span
							style="font-weight: bold; font-size: 16px;margin-top: 3px;">${userSize }</span></li>


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
