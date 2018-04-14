<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
	$(function() {
		//导航切换
		$(".imglist li").click(function() {
			$(".imglist li.selected").removeClass("selected")
			$(this).addClass("selected");
		})
	})
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			$(".tip").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});

	});
</script>
</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">图书类别</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div style="margin-top: 20px; margin-left: 30px;">
			<form action="category/insert">
				<ul class="seachform">

					<li><label>图书类别编号</label><input name="id" type="text" value=""
						class="scinput" /></li>


					<li><label>图书类别名称</label><input name="name" type="text" value=""
						class="scinput" /></li>

					<li><label>&nbsp;</label><input type="submit" class="scbtn" style="width: 100px;"
						value="添加图书类别" /> 


					</li>
					
					<li>
					<span
						style="color: red; margin-left: 40px; float: left; font-size: 16px; margin-top: 5px;">${error }</span>
						<span
						style="color: green; margin-left: 40px; float: left; font-size: 16px; margin-top: 5px;">${msg }</span>
					</li>
					

				</ul>
				</from>
		</div>




		<table class="imgtable" style="margin-top: 5px;">

			<thead>
				<tr>
					<th width="100px;">图书类别编号</th>
					<th width="130px">图书类别名称</th>
					<th width="80px">类别添加时间</th>
					<th width="80px">相关操作</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${categorys }" var="category">

					<tr style="height: 30px;">
						<td class="imgtd"><span>${category.id }</span></td>
						<td>${category.name }</td>
						<td>${category.addtime }</td>
						<td><a href="category/delete?id=${category.id }">删除</a></td>
					</tr>

				</c:forEach>





			</tbody>

		</table>






		<div class="pagin">
			<div class="message" style="font-size: 120%">
				以上信息共<i class="blue">${size }</i>条记录
			</div>
			
		</div>


		
	</div>

	<script type="text/javascript">
		$('.imgtable tbody tr:odd').addClass('odd');
	</script>

</body>
</html>
