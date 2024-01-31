<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; IE=8">
		<title>汉庭酒店官网 - 汉庭连锁酒店预订,预定;汉庭酒店电话 | 华住酒店官网</title>
		<link rel="stylesheet" href="./css/main-min.css">

	</head>
	<body>
		<div class="container newIndex">
			<header class="Mheadindex Lposa">
				<div class="bg">
					<div class="newIndexContainer">
						<div class="top">
							<div class="inner Lposr">
								<div class="useenter">
									<span id="loginBefore">
									
									<c:if test="${empty member }">
										<a href="${pageContext.request.contextPath}/home/login.jsp" class="register">登录</a>
										<a href="${pageContext.request.contextPath}/home/registger.jsp" class="register">注册</a>
									</c:if>
									<c:if test="${!empty member }">
										<a href="javascript:;" class="register">${member.uname }登录</a>
										<a href="${pageContext.request.contextPath}/home/exit" class="register">退出</a>
									</c:if>
									</span>
								</div>
								<span class="split"></span>

							</div>
						</div>
						<!-- // -->
						<div class="nav">
							<div class="inner Cwrap Ltac">
								<a href="#" class="logo Ldib Lposr"></a>
								<nav class="navlinks">
									<div class="navcont Lposr"" id="nav">
										<a href="#" class=" nav-1 Ldib item">首页</a>
										<a href="#" class="nav-2 Ldib item">国内酒店</a>
										<a href="#" class="nav-2 Ldib item">海外酒店</a>
										<a href="#" class=" nav-4 Ldib item">特卖专区</a>
										<a href="#" class="active nav-3 Ldib item brandIts">旗下品牌</a>
										<a href="#" class=" nav-3 Ldib item">华住会</a>
										<a href="#" class=" nav-3 Ldib item">华住商旅</a>
										<a href="#" target="_blank" class="nav-3 Ldib item itemmr0">加盟合作</a>
									</div>
								</nav>
							</div>
						</div>
						<!-- // -->
					</div>
				</div>

			</header>

			<div class="Mbannel Lposr hanting">
				<div class="mask Ldn"></div>
				<div class="bannelitem active">
					<div style="background-image: url(images/brand_hanting.jpg)" class="img"></div>
				</div>
				<div class="banneltip">
					<h3 class="Ldn">汉庭酒店 - 人在旅途 家在汉庭</h3>
				</div>
				<div class="bannelgradient Lposa">
					<div class="bannelgradientTop"></div>
				</div>
			</div>
			<!-- 首页居中搜索框-->
			<div class="hanting Msearch Cwrap Ltac home">
			<form id="form1" method="get" action="${pageContext.request.contextPath}/home/searcher">
				<div class="inner">
					<ul class="condition Lcfx">
						<li class="city Lfll Lposr">
							<div class="citybox Lposa">
								<i class="triangle"></i>
								<div class="tip">目的地</div>
								<div class="name">
									<div class="inputbox">

									</div>
									<input type="text" name="cityname"  value="沈阳市" placeholder="请输入" class="checkincity">
								</div>
							</div>
						</li>
						<li class="date Lfll">
							<div class="checkInDate Lposa">

								<div class="tip">入住日期</div>
								<div class="day">
									<!-- <input type="hidden" value="2021-02-19"> -->
									<input type="date" name="begintime" class="sdate" value="2021-02-20">
								</div>

							</div>
							<div class="checkOutDate Lposa active">

								<div class="tip">离店日期</div>
								<div class="day">
									<!-- <input type="hidden" value="2021-02-20" class="checkoutdate hasDatepicker"> -->

									<input type="date" name="endtime" class="sdate" value="2021-02-20">
								</div>

							</div>
							<div class="split"></div>
						</li>
						<li class="search Lfll Lposr">
							<a id="btnSearchHotel" href="javascript:;" class="Cbtn btnSearch">
								<div class="title">
									<i class="icon-newsearch"></i>
									搜索酒店
								</div>
							</a>


						</li>
					</ul>
				</div>
				</form>
			</div>


			<!-- 酒店介绍-->
			<div class="hanting Mhoteldesc Cwrap">
				<div class="inner Lposr">
					<div class="box Lcfx Lposa">
						<div class="Lfll Lposr copywrite">
							<div class="copywritecont">
								<span class="Lposa bookmark"></span>
								<h1 class="logo zh">
									汉庭酒店
									<img src="./images/brand_hanting_desc_logo.png">
								</h1>
								<h2 class="logo en">Hanting Hotel</h2>
								<div class="desc">
									<p>汉庭是华住酒店集团旗下第一个品牌。</p>
									<p>
										“汉”取自《诗经》中的“维天有汉”，原指银河、宇宙，也有着对汉唐盛世的骄傲。“庭”就是庭院，给人安静美好的联想。汉庭的标志源于东汉青铜器“马踏飞燕”，呈现了自由驰骋于地平线上的非凡旅程景象。</p>
									<p>即便在陌生的城市，一转身总能看到汉庭，就会觉得安心。</p>
								</div>
							</div>
						</div>
						<!--                滚动图片-->
						<div class="Lflr photo Lposr Lovh">

							<ul class="sliders Lposr">
								<li class="item Lposa" style="z-index: 2; left: 0px;">
									<img src="./images/brand_hanting_3.jpg">
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="hanting Mhotelconcept Cwrap">
				<div class="inner">
					<div class="box">
						<ul class="conceptlist Lcfx">
							<li class="item item-c1"><span class="Cicon">
									<!-- [if gte IE7] ><b class="before"></b><![endif] --></span><span class="tip"><strong>多年相伴</strong>人在旅途，家在汉庭</span></li>
							<li class="item item-c2"><span class="Cicon">
									<!-- [if gte IE7] ><b class="before"></b><![endif] --></span><span class="tip"><strong>无处不在</strong>莫愁前路，汉庭密布</span></li>
							<li class="item item-c3"><span class="Cicon">
									<!-- [if gte IE7] ><b class="before"></b><![endif] --></span><span class="tip"><strong>就是干净</strong>魔鬼训练，拒绝纤尘</span></li>
							<li class="item item-c4"><span class="Cicon">
									<!-- [if gte IE7] ><b class="before"></b><![endif] --></span><span class="tip"><strong>就是方便</strong>闪电入住，零秒退房</span></li>
						</ul>
					</div>
				</div>
			</div>


			<div class="footpatch"></div>
		</div>
		<div class="download-app-open Ltac" style="left: -100%">
			<ul class="download-app-content Lcfx">
				<li><i class="imp-pc-gift"></i></li>
				<li class="text-content"><i class="img-pc-text" style="background-image:url(images/img_pc_text.png)"></i></li>
				<li class="download-content Ltac">
					<p class="download-app-text">扫码images华住会APP</p><i class="img-pc-QR"></i>
				</li>
				<li class="close-content"><i class="icon-pc-close"></i></li>
			</ul>
		</div>
		<div class="download-app-unopen" style="left: ">
			<a class="button-unopen"></a>
		</div>

		<footer class="Mfoot">
			<div class="inner Cwrap Lpb20 Lpt20">
				<div class="links Ltac">
					<a href="#">华住会介绍</a><a href="#">酒店加盟</a><a href="#">职位招聘</a><a href="#">意见反馈</a><a href="#">联系我们</a>
				</div>
				<p class="copyright Ltac Lmt10"><a href="#" target="_blank" style="color: #602750;">沪ICP备12041475</a> | ©2021
					Huazhu All Rights reserved. 汉庭星空（上海）酒店管理有限公司</p>
			</div>
		</footer>
	<script src="${pageContext.request.contextPath}/admin/assets/libs/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
	//id=btnSearchHotel注册事件
	$("#btnSearchHotel").click(function(){
		
		$("#form1").submit();//提交表单 完成提交按钮的功能
	})
	
	
	
	</script>
	</body>
</html>
    