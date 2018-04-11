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
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.html" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="index1.html" target="rightFrame" class="selected"><img src="images/icon01.png" title="工作台" /><h2>首页</h2></a></li>
    <li><a href="book_select.html" target="rightFrame"><img src="images/icon02.png" title="模型管理" /><h2>图书管理</h2></a></li>
    <li><a href="stock_select.html"  target="rightFrame"><img src="images/icon03.png" title="模块设计" /><h2>入库管理</h2></a></li>
    <li><a href="sale_select.html"  target="rightFrame"><img src="images/icon04.png" title="常用工具" /><h2>销售管理</h2></a></li>
    <li><a href="sale_statistics.html" target="rightFrame"><img src="images/icon05.png" title="文件管理" /><h2>信息统计</h2></a></li>
    <li><a href="user_info.html"  target="rightFrame"><img src="images/icon06.png" title="系统设置" /><h2>个人资料</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <!-- <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li> -->
    <li><a href="#">关于</a></li>
    <li><a href="user/logUp" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>您好,${user.nickname }</span>
    <!-- <i>注销</i> -->
    <!-- <b>5</b> -->
    </div>    
    
    </div>
</body>
</html>
