<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--我爱模板网 www.5imoban.net</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<!-- <script type="text/javascript">
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
</script> -->


</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">图书管理</a></li>
			<li><a href="#">图书基本信息</a></li>
		</ul>
	</div>

	<div class="rightinfo">


		<div class="itab" style="margin-top: -20px;margin-left: 10px;">
				<ul>
					<li><a href="#tab1" class="selected" >客户信息管理</a></li>
					<span style="color: red;margin-left: 400px;margin-top: 30px;font-size: 16px;">${error }</span>
					<span style="color: green;margin-left: 400px;margin-top: 30px;font-size: 16px;">${msg }</span>
				</ul>
			</div>

		<table class="tablelist" style="margin-top: 10px;">
			<thead>
				<tr style="width: 500px;" >
					<th style="width: 100px;text-align: center;">客户编号<i class="sort"> </i></th>
					<th style="width: 80px;text-align: center;">姓名</th>
					<th style="width: 80px;text-align: center;">性别</th>
					<th style="width: 120px;text-align: center;">身份证号</th>
					<th style="width: 100px;text-align: center;">联系电话</th>
					<th style="width: 100px;text-align: center;">QQ号</th>
					<th style="width: 150px;text-align: center;">联系地址</th>
					<th style="width: 100px;text-align: center;">相关操作</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${customers }" var="customer">
					<tr style="width: 500px;text-align: center;" >
						<td>${customer.id }</td>
						<td>${customer.name }</td>
						<td>${customer.gender }</td>
						<td>${customer.cardid }</td>
						<td>${customer.phoneNum }</td>
						<td>${customer.qqNum }</td>
						<td>${customer.address }</td>
						<td><a href="customer/remove?id=${customer.id }" class="tablelink">删除</a></td>
					</tr>
				</c:forEach>


			</tbody>
		</table>


		<div class="pagin">
			<div class="message" style="font-size: 120%">
				共<i class="blue">${size }</i>条记录，当前显示第&nbsp;<i class="blue">${page }&nbsp;</i>页,共
				${pageNum } 页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="customer/jump?page=0"><span
						class="pagepre"></span></a></li>
				<c:forEach var="n" begin="1" end="${pageNum }">
					<li class="paginItem"><a href="customer/jump?page=${n }">${n }</a></li>
				</c:forEach>

				<li class="paginItem"><a href="customer/jump?page=00"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>







	</div>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
