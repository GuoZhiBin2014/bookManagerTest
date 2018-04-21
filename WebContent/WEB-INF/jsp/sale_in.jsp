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
					<li><a href="#tab1" class="selected">添加图书</a></li>
					<span style="color: red;margin-left: 200px;float: left;font-size: 16px;margin-top: 5px;">${error}</span>
    <span style="color: green;margin-left: 200px;float: left;font-size: 16px;margin-top: 5px;">${msg}</span>
				
					<!-- <li><a href="#tab2">自定义</a></li>  -->
				</ul>
			</div>

			<div id="tab1" class="tabson">
				<form action="record/add" method="post">
				<ul class="forminfo">
				
					<li><label>图书编号<b>*</b></label><input id="bookId" name="bookId"
						type="text" class="dfinput" value="" style="width: 150px;" /></li>

					<li id="bookName"><label>图书名称<b>*</b></label><input name="bookName"
						type="text" class="dfinput" value="" style="width: 250px;" /></li>


					<li><label>出售价格<b>*</b></label><input name="salePrice" type="text"
						class="dfinput" value="" style="width: 150px;" /></li>
					<li><label>出售数量<b>*</b></label><input name="saleNum" type="text"
						class="dfinput" value="" style="width: 150px;" /></li>
					<li><label>客户姓名<b>*</b></label><input name="cusName" type="text"
						class="dfinput" value="" style="width: 150px;" /></li>
					<li><label>客户身份证号<b>*</b></label><input name="cusId" type="text"
						class="dfinput" value="" style="width: 250px;" /></li>

					<li><label>&nbsp;</label><input name="" type="submit"
						style="margin-left: 50px; margin-top: 10px;" class="btn"
						value="添加销售订单" /></li>
				</ul>
			</form>
			</div>
</body>
</html>
