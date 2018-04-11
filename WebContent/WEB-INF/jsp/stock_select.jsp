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
</script>
 -->

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

		<!--  <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div> -->


		<table class="tablelist">
			<thead>
				<tr>
					<th>入库订单编号<i class="sort"><img src="images/px.gif" /></i></th>
					<th>图书编号</th>
					<th>图书书名</th>
					<th>入库数量</th>
					<th>入库时间</th>
					
					<th>操作员姓名</th>
					<th>相关操作</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${storage }" var="sto">
					<tr>
						<td>${sto.id }</td>
						<td>${sto.bookId }</td>
						<td>${sto.bookName }</td>
						<td>${sto.snumber }</td>
						<td>${sto.stime }</td>
						<td>${sto.operator }</td>
						<td><a href="#" class="tablelink">查看图书详情</a> 
						<a href="#" class="tablelink"> 删除</a></td>
					</tr>
				</c:forEach>


			</tbody>
		</table>


		<div class="pagin">
			<div class="message" style="font-size: 120%">
				共<i class="blue">${size }</i>条记录，当前显示第&nbsp;<i class="blue">${page }&nbsp;</i>页,共&nbsp;${pageNum }&nbsp;页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="storage/jump?page=0"><span
						class="pagepre"></span></a></li>
				<c:forEach var="n" begin="1" end="${pageNum }">
					<li class="paginItem"><a href="storage/jump?page=${n }">${n }</a></li>
				</c:forEach>
				<li class="paginItem"><a href="storage/jump?page=00"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<!-- <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div> -->

				<div class="tipbtn">
					<input name="" type="button" class="sure" value="确定" />&nbsp; <input
						name="" type="button" class="cancel" value="取消" />
				</div>

			</div>




		</div>

		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>
</body>
</html>
