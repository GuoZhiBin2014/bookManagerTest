<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<!-- <li><a href="#tab2">自定义</a></li>  -->
				</ul>
				<span
					style="color: red; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${addError}</span>
				<span
					style="color: green; margin-left: 200px; float: left; font-size: 16px; margin-top: 5px;">${addMsg}</span>
			</div>

			<div id="tab1" class="tabson">

				<!-- <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div> -->
				<form action="book/add">
					<ul class="forminfo">

						<li><label>图书编号<b>*</b></label><input id="bookId"
							name="bookId" type="text" class="dfinput" value=""
							style="width: 150px;" /></li>
						<li id="bookName"><label>图书名称<b>*</b></label><input
							name="name" type="text" class="dfinput" value=""
							style="width: 250px;" /></li>

						<li><label>图书类型<b>*</b></label>


							<div class="vocation">
								<select class="select1" name="category">
									<c:forEach items="${categorys }" var="category">
										<option>${category.name }</option>
									</c:forEach>
								</select>
							</div></li>
						<li><label>图书出版社<b>*</b></label><input name="press"
							type="text" class="dfinput" value="" style="width: 300px;" /></li>
						<li><label>出版日期<b>*</b></label><input name="bDate"
							type="date" class="dfinput" value="2018-01-01"
							style="width: 300px;" /></li>
						<li><label>图书作者<b>*</b></label><input name="author"
							type="text" class="dfinput" value="" style="width: 300px;" /></li>
						<li><label>图书定价<b>*</b></label><input name="price"
							type="text" class="dfinput" value="" style="width: 300px;" /></li>




						</li>
						<li><label>详细介绍<b>*</b></label> <textarea name="info"
								class="dfinput"
								style="width: 480px; height: 70px; line-height: 18px;"></textarea>

						</li>
						<li><label>&nbsp;</label><input type="submit" class="btn"
							value="添加图书" /></li>
					</ul>
				</form>
			</div>
</body>
</html>
