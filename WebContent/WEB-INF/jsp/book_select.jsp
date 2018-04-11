<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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

				<li><label>综合查询</label><input name="" type="text"
					class="scinput" /></li>


				<li><label>综合查询</label><input name="" type="text"
					class="scinput" /></li>

				<li><label>综合查询</label><select class="select3"
					style="margin-top: 6px; width: 70px;">
						<option>类别</option>
						<option>名著</option>
				</select></li>


				<li><label>&nbsp;</label><input name="" type="button"
					class="scbtn" value="查询" /></li>
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
						<td><a>修改</a><a>删除</a></td>
					</tr>

				</c:forEach>





			</tbody>

		</table>






		<div class="pagin">
			<div class="message">
				共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span></a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
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