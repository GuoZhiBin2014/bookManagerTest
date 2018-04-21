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
			<li><a href="#">图书信息修改</a></li>
		</ul>
	</div>

	<div class="formbody">


		<div id="usual1" class="usual">

			<div class="itab">
				<ul>
					<li><a href="#tab1" class="selected">图书信息修改</a></li>
					<span style="color: red;padding-left: 500px;font-size: 16px;margin-top: 10px;">${error }</span>
					<span style="color: green;padding-left: 500px;font-size: 16px;margin-top: 10px;">${update }</span>
				</ul>
			</div>

			<div id="tab1" class="tabson">
			

				<!-- <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div> -->

				<ul class="forminfo">

					<li><form action="book/selectBook">
							<label>图书编号<b>*</b></label><input id="bookId" name="id"
								type="text" class="dfinput" value="${book.bookId }"
								style="width: 150px; float: left" /> <label>&nbsp;</label><input
								name="" type="submit" class="scbtn" value="查询" />
						</form></li>
						
					<form action="book/update">
					
					<input type="hidden" name="bookId" id="id" value="${book.bookId }">   
					
					<li id="bookName"><label>图书名称<b>*</b></label><input name="name"
						type="text" class="dfinput" value="${book.name }" style="width: 250px;" /></li>
					
					<li id="bookName"><label>图书类型<b>*</b></label><input name="category"
						type="text" class="dfinput" value="${book.category }" style="width: 250px;" /></li>

					
					<li><label>图书出版社<b>*</b></label><input name="press" type="text"
						class="dfinput" value="${book.press }" style="width: 300px;" /></li>
					<li><label>出版日期<b>*</b></label><input name="bDate" type="date"
						class="dfinput" value="${book.bDate }" style="width: 300px;" /></li>
					<li><label>图书作者<b>*</b></label><input name="author" type="text"
						class="dfinput" value="${book.author }" style="width: 300px;" /></li>
					<li><label>图书定价<b>*</b></label><input name="price" type="text"
						class="dfinput" value="${book.price }" style="width: 300px;" /></li>

					
    				
    
    
   
					<li><label>详细介绍<b>*</b></label> <!--     <textarea id="content7" name="content" style="width:700px;height:250px;visibility:hidden;"></textarea>
 --> <textarea name="info" class="dfinput" 
							style="width: 480px; height: 70px; line-height: 18px;">${book.info }</textarea>

					</li>
					<li><label>&nbsp;</label><input name="" type="submit"
						class="btn" value="提交修改" /></li>
				</ul>
</form>
			</div>


			
</body>
</html>
