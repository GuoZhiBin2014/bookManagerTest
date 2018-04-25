<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<link rel="stylesheet" type="text/css" id="css"
	href="register/style/main.css" />
<script src="register/js/main.js" type="text/javascript"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript"
	src="js/format+zh_CN,default,corechart.I.js"></script>
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>

</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
		</ul>
	</div>

	<div class="mainindex">


		<div class="welinfo">
			<span><img src="images/sun.png" alt="天气" /></span> <b>${user.nickname }，您好，欢迎使用图书销售管理系统</b>(${user.email })
			<a href="user_info">帐号设置</a>
		</div>

		<div class="welinfo"></div>
		<div class="xline" id="line2"></div>
	</div>



	<div id="left">

		<div id="tabs0">
			<ul class="menu0" id="menu0">
				<li onmouseover="setTab(0)" class="lisovers">资讯新闻</li>
				<li onmouseover="setTab(1)">资讯新闻</li>
				<li onmouseover="setTab(2)">资讯新闻</li>
				<li onmouseover="setTab(3)">资讯新闻</li>
			</ul>
			<div class="main0" id="main0">
				<div class="block">
					<img src="register/images/net.jpg" />

					<p>1999年,盖茨撰写了《未来时速:数字神经系统和商务新思维》（ Business @ the Speed of
						Thought: Using a Digital Nervous System）一书，
						向人们展示了计算机技术是如何以崭新的方式来解决商业问题的。这本书在超过60个国家以25种语言出版。</p>

				</div>
				<div>
					<img src="register/images/php.jpg" />

					<p>
						除了对计算机和软件的热爱之外，盖茨对生物技术也很有兴趣。他是ICOS公司董事会的一员，这是一家专注于蛋白质基体及小分子疗法的公司。他也是很多其它生物技术公司的投资人
					</p>

				</div>
				<div>
					<img src="register/images/net.jpg" />

					<p>对于盖茨来说，慈善事业也是非常重要的。他和他的妻子Melinda已经捐赠了近
						58亿美元建立了一个基金，支持在全球医疗健康和教育领域的慈善事业，希望随着人类进入21世纪，这些关键领域的科技进步能使全人类都受益
					</p>
				</div>
				<div>
					<img src="register/images/php.jpg" />

					<p>到今天为止，盖茨和他的妻子Melinda
						Gates建立的基金已经将25多亿美元用于了全球的健康事业，将14亿多美元用于改善人们的学习条件，其中包括为盖茨图书馆购置计算机设备、为美国和加拿大的低收入社区的公共图书馆提供互联网培训和互联网访问服务
					</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>


	<div class="dflist1"
		style="float: right; margin-right: 10px; margin-top: -120px;">
		<div class="listtitle">
			<a href="#" class="more1">更多</a>销量排行榜
		</div>
		<ul class="newlist">
			<li><i>图书总计数目: </a></i>${bookSize }</li>
			<li><i>图书库存总量:</a></i>${stockNum }</li>
			<li><i>图书入库订单数目:</a></i>${stockSize }</li>
			<li><i>图书入库数目:</a></i>${storageNum }</li>
			<li><i>图书预警数目:</a></i>${warnNum }</li>
			<li><i>销售订单数目:</a></i>${recordSize }</li>
			<li><i>销售图书数量总计:</a></i>${recordNum }</li>
			<li><i>客户数量总计:</a></i>${customerNum }</li>
			<li><i>管理员数量统计:</a></i>${userSize }</li>
		</ul>
	</div>

	<div class="dflist1" id="Statistic" style="margin-top: 180px;">
		<div class="listtitle">
			<a href="#" class="more1">更多</a>软件信息
		</div>
		<ul class="newlist">
			<li><i>基于Java的图书销售管理系统</a>
					<li><i>学号：1406014318</a>
							<li><i>姓名：郭志斌</a>
		</ul>
	</div>



	<div class="welinfo" id="zhinan">
		<span><img src="images/dp.png" alt="提醒" /></span> <b>图书销售管理系统使用指南</b>
	</div>

	<ul class="infolist" id="infol">
		<li><span>图书基本信息管理</span><a class="ibtn" href="book/select">图书详情查询</a></li>
		<li><span>图书类别管理</span><a class="ibtn" href="category/show">图书类别添加</a></li>
		<li><span>进行入库操作，添加入库订单</span><a class="ibtn" href="storage/select">入库订单</a></li>
		<li><span>进行销售信息、客户信息录入等操作</span><a class="ibtn" href="sale_in">销售信息录入</a></li>
		<li><span>进行个人信息管理</span><a class="ibtn" href="user_info">信息管理</a></li>
	</ul>

	<div class="xline" id="line1"></div>


</body>
</html>
