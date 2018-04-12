<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>图书销售管理</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <!-- <span><img src="images/leftico01.png" /></span>管理信息 -->
    </div>
    	<!-- <ul class="menuson">
        <li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
        </ul>    
    </dd>
    
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>个人中心</div>
    <ul class="menuson">
        <li><cite></cite><a href="index1.html" target="rightFrame">testindex</a><i></i></li>
        <li><cite></cite><a href="bookList.html" target="rightFrame">图书管理</a><i></i></li>
        <li><cite></cite><a href="addBook.html" target="rightFrame">添加图书信息</a><i></i></li>
        <li><cite></cite><a href="modify2.html" target="rightFrame">个人基本信息2</a><i></i></li>
        <li><cite></cite><a href="news.html" target="rightFrame">添加新闻</a><i></i></li>
        <li><cite></cite><a href="order.html" target="rightFrame">添加订单</a><i></i></li>
        <li><cite></cite><a href="changeBook.html" target="rightFrame">修改图书信息</a><i></i></li>
        <li><cite></cite><a href="orderList.html" target="rightFrame">订单信息列表</a><i></i></li>
    </ul> -->
    
    <dd><div class="title"><span><img src="images/leftico01.png" /></span>图书信息管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="book/select" target="rightFrame">图书信息查询</a><i></i></li>
        <li><cite></cite><a href="book_category" target="rightFrame">图书类别管理</a><i></i></li>
        <li><cite></cite><a href="book_add" target="rightFrame">图书信息添加</a><i></i></li>
        <li><cite></cite><a href="book_update" target="rightFrame">图书信息修改</a><i></i></li>
    </ul>
    
    <dd><div class="title"><span><img src="images/leftico02.png" /></span>图书库存管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="storage/select" target="rightFrame">入库订单查询</a><i></i></li>
        <li><cite></cite><a href="storage/addInfo" target="rightFrame">图书入库登记</a><i></i></li>
        <li><cite></cite><a href="stock_back" target="rightFrame">退书订单查询</a><i></i></li>
        
    </ul>
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>图书销售管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="sale_in" target="rightFrame">销售订单录入</a><i></i></li>
        <li><cite></cite><a href="sale_select" target="rightFrame">销售订单查询</a><i></i></li>
        <li><cite></cite><a href="sale_back" target="rightFrame">销售退书录入</a><i></i></li>
        <li><cite></cite><a href="sale_statistics" target="rightFrame">销售信息统计</a><i></i></li>
        
    </ul>
    
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>系统用户管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="user_info" target="rightFrame">个人信息管理</a><i></i></li>
        <li><cite></cite><a href="user_update" target="rightFrame">个人密码修改</a><i></i></li>
        <li><cite></cite><a href="user_custom" target="rightFrame">客户信息管理</a><i></i></li>
        <li><cite></cite><a href="user/adminManage" target="rightFrame">管理员信息管理</a><i></i></li>
        
    </ul>
	
    
    </dd>   
    
    </dl>
</body>
</html>
