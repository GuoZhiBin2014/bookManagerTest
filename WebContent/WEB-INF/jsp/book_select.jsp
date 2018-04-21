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
			<li><a href="#">图片列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div style="margin-top: 10px;">
			<ul class="seachform">
				<form action="book/selectByName" method="get">
				<li><label>图书名称查询</label><input name="bookName" type="text"
					class="scinput" /></li>
				<li><label>&nbsp;</label><input name="" type="submit"
					class="scbtn" value="查询" /></li>
				</form>
				
				<form action="book/selectByCate" method="get">
				<li><label>图书类别查询</label><select class="select3" name="category"
					style="margin-top: 6px; width: 70px;">
						<c:forEach items="${categorys }" var="category">
							<option>${category.name }</option>
						</c:forEach>
				</select></li>

				<li><label>&nbsp;</label><input name="" type="submit"
					class="scbtn" value="查询" /></li>
				<li>
				</form>
				<span
					style="color: red; margin-left: 30px; margin-top: 10px; font-size: 16px;">${error }</span>
					<span
					style="color: green; margin-left: 30px; margin-top: 10px; font-size: 16px;">${msg }</span>
				</li>
				<li><span
					style="color: green; font-size: 16px; margin-left: 80px; margin-top: 5px;">${book_add }</span></li>
			</ul>
		</div>

		<div class="tools" style="float: right; margin-top: -45px;">

			<ul class="toolbar">
				<li class="click"><span><img src="images/t01.png" /></span>添加</li>
			</ul>




		</div>


		<table class="imgtable" style="margin-top: 5px;">

			<thead>
				<tr>
					<th width="100px;">图书编号</th>
					<th width="130px">图书名称</th>
					<th width="80px">图书类型</th>
					<th width="150px">图书出版社</th>
					<th width="80px">出版日期</th>
					<th width="70px">图书作者</th>
					<th width="70px">图书定价</th>
					<th width="70px">库存量</th>
					<th width="80px">操作</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${books }" var="book">

					<tr style="height: 30px;">
						<td class="imgtd"><span>${book.bookId }</span></td>
						<td><a href="#">${book.name }</p></td>
						<td>${book.category }</td>
						<td>${book.press }</td>
						<td>${book.bDate }</td>
						<td>${book.author }</td>
						<td>${book.price }</td>
						<td>${book.inventory }</td>
						<td><a href="book/modify?bookId=${book.bookId }">修改</a>
						<a href="book/remove?bookId=${book.bookId }">删除</a></td>
					</tr>

				</c:forEach>





			</tbody>

		</table>






		<div class="pagin">
			<div class="message" style="font-size: 120%">
				共<i class="blue">${size }</i>条记录，当前显示第&nbsp; <i class="blue">${page }&nbsp;</i>页,
				共<i class="blue"> ${pageNum } </i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="book/jump?page=0"><span
						class="pagepre"></span></a></li>

				<c:forEach var="n" begin="1" end="${pageNum }">
					<li class="paginItem"><a href="book/jump?page=${n }">${n }</a></li>
				</c:forEach>

				<li class="paginItem"><a href="book/jump?page=00"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>




	</div>

	<div class="tip">
		<div class="tiptop">
			<span>提示信息</span><a></a>
		</div>

		<div class="tipinfo">
			<span><img src="images/ticon.png" /></span>
			<div class="tipright">
				<p>是否确认对信息的修改 ？</p>
				<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
			</div>
		</div>

		<div class="tipbtn">
			<input name="" type="button" class="sure" value="确定" />&nbsp; <input
				name="" type="button" class="cancel" value="取消" />
		</div>

	</div>

	<script type="text/javascript">
		$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
