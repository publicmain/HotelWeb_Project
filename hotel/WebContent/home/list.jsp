<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta http-equiv="X-UA-Compatible" content="IE=edge; IE=8">
		<title>全季沈阳中街故宫酒店预订价格_位置地址_电话 - 华住酒店官网</title>
		<link rel="stylesheet" href="./css/main.css">
	</head>
	<body>
		<div class="newCommonHeader Lposr">
			<div class="Cwrap Lcfx">
				<div class="nav-left Lfll Lposr">
					<a class="logo Lfll" href="#" title="华住酒店官网">华住酒店官网</a>
					<div class="Ldib Lposr newnav">
						<ul class="Lcfx">
							<li class="Lfll">
								<a href="#" class="first">首页</a>
							</li>
							<li class="Lfll">
								<a href="#">国内酒店</a>
							</li>
							<li class="Lfll">
								<a href="#" class="active">海外酒店</a>
							</li>

							<li class="Lfll">
								<a href="#">特卖专区</a>
							</li>
							<li class="Lfll toBrand">
								<a href="#">旗下品牌</a>
							</li>
							<li class="Lfll">
								<a href="#">华住会</a>
							</li>
							<li class="Lfll">
								<a href="#">华住商旅</a>
							</li>
							<li class="Lfll">
								<a target="_blank" href="#">加盟合作</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="nav-right Lflr Lposr">
					<div class="userinfoArea Ltar pure-g">

						<div class="popuparea multilanguage pure-u Lposr">
							<a rel="nofollow" class="Cicon small_newcountryEn" href="#">中英文切换</a>

						</div>
						<span class="split pure-u"></span>
						<div class="pure-u" id="userinfo" data-nblock-id="block/headUserInfo">

							<a rel="nofollow" class="signin pure-u" href="#">登录</a>
							<a rel="nofollow" class="signup pure-u" href="#">注册</a>


						</div>

					</div>
				</div>
			</div>

		</div>


		<div class="Cmbox">
			<div class="inner Cwrap">


				<div id="Pdetail_part2" class="Pdetail_international_part2 Lmt10 Pdetail_part2 Lposr">
					<div class="tabs" style="top: 0px; left: 0px; position: absolute; width: 100%;">
						<div class="backbox"></div>
						<div class="links">
							<h2 data-type="order" class="link active">酒店预订</h2>
							<h2 data-type="router" class="link">交通位置</h2>
							<h2 data-type="intro" class="link">酒店介绍</h2>
							<h2 data-type="facility" class="link">服务设施</h2>
							<h2 data-type="policy" class="link">酒店政策</h2>
							<h2 data-type="comment" class="link">酒店点评</h2>
						</div>
					</div>
					<div data-nblock-id="block/hotelDetailRoom?type=oversea" class="hotelroom_block">
						<div data-nblock-id="ui/checkinDate?offset=0px-5px" data-nblock-auto="true" class="checkin Ltar Lcfx">
							<div class="timeitem Lfll Lmr30">
								<span class="Lfll">入住日期</span>
								<div class="inputbox Lfll">
									<input type="text" readonly="readonly" data-date="2021-02-19" id="begintime" style="z-index:400" value="${begintime }" class="timeinput input1 checkindate hasDatepicker"
									 id="dp1613744579274">
									<div class="arrowbox"><i class="Cicon drop_arrow"></i></div>
								</div>
							</div>
							<div class="timeitem Lfll Lmr40">
								<span class="Lfll">退房日期</span>
								<div class="inputbox Lfll">
									<input type="text" readonly="readonly" style="z-index:400" id="endtime" value="${endtime }" class="timeinput input1 checkoutdate hasDatepicker"
									 id="dp1613744579275">
									<div class="arrowbox"><i class="Cicon drop_arrow"></i></div>
								</div>
							</div>
							<div class="roomnum Lfll Lmr30">
								<span>间数</span>
								<input type="text" id="roomcount"  value="1" class="roominput">

							</div>
							<div class="number Lfll Lmr40">
								<span>人数</span>
								<input type="text" id="personcount" value="1" class="roominput">
							</div>
<!-- https://www.cnblogs.com/gitnull/p/11496631.html -->
							<div class="timeitem Lfll Lmr10 checkindays">共<span id="daycount">1</span>晚</div>
						

						</div>
						<div class="Lmt25 Lpd25 roomtypebox">
							<div class="roomtype Lmt25">
								<table>
									<thead>
										<tr>
											<td width="200">房型</td>
											<td width="292">&nbsp;</td>
											<td width="127">取消政策</td>
											<td width="117">人数上限</td>
											<td width="95">每间每晚房价</td>
											<td width="165">&nbsp;</td>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${pages.list }" var="roomtype">
										<tr class="room first roomindex2">
											<td rowspan="1" class="roomtd">
												<div class="roomname">
													<img src="${pageContext.request.contextPath}/images/${roomtype.picture}" width="50" height="50" class="img">
													<h3>${roomtype.roomtypename }</h3>
													<a href="javascript:;" class="more">查看详情<i class="arrow"></i></a>
												</div>
											</td>
											<td>
												<div class="roomoffertitle">
													<span class="name">今晚特价</span>
												</div>
												<div class="roomserver">
													<span>不含餐饮</span>
												</div>
											</td>
											<td>
												<div class="cancelorder">不可取消</div>
											</td>

											<td>${roomtype.dayprice }RMB<td>

											<td class="bookbox">
												<a name="book" href="javascript:;" dayprice="${roomtype.dayprice }"  roomtypeid="${roomtype.id}" class="Cbtn orderbtn" data-target-channel="PMS2020" data-guarantee-policy="0"
												 data-prepay-type="1" data-room-type="TRS1" data-rate-plan-code="P1D080HZU-312250002-P">预订</a>
											</td>
										</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="7">
												<div class="pages">
												    <div class="Cpage Ltar">
												
												
												        <a href="#" class="active" data-page-index="1">首页</a>
												        <a href="#" class="active" data-page-index="1">上一页</a>
														<a href="#" class="active" data-page-index="1">下一页</a>
														<a href="#" class="active" data-page-index="1">末页</a>
												
												    </div>
												</div>
												
											</td>
										</tr>
									</tfoot>


								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="Lpt20">&nbsp;</div>
		</div>


		<footer class="Mfoot">
			<div class="inner Cwrap Lpb25 Lpt25">
				<div class="links Ltac">
					<a rel="nofollow" href="#">华住会介绍</a><a rel="nofollow" href="#" target="_blank">酒店加盟</a><a href="#" rel="nofollow"
					 target="_blank">职位招聘</a><a rel="nofollow" href="#">意见反馈</a><a rel="nofollow" href="#">联系我们</a>
				</div>
				<p class="copyright Ltac Lmt20">沪ICP备12041475 | ©2021 Huazhu All Rights reserved. 汉庭星空（上海）酒店管理有限公司</p>
			</div>
			<input type="text" id="hotelid" value="${hotelid }">
		</footer>
 <script src="${pageContext.request.contextPath}/admin/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/home/js/jsutil.js"></script>
  <script type="text/javascript">
  //id=roomcount,personcount注册事件 keyup
  $("#roomcount").keyup(function(){
	  getDays()
  })
  
    $("#personcount").keyup(function(){
    	getDays()
  })
  
  //计算天数
  function getDays()
  {
	  let begintime=$("#begintime").val()
	  let endtime=$("#endtime").val()
	  //2个日期相差的天数
	  days=getDaysBetween(begintime,endtime)
	  //id=daycount赋值
	  $("#daycount").text(days)
  }
  
//给a元素name=book注册事件click
  $("a[name=book]").click(function(){
  	let dayprice=$(this).attr("dayprice")
  	let roomtypeid=$(this).attr("roomtypeid")
  	


  	let hotelid=$("#hotelid").val()
  	let personcount=$("#personcount").val()
  	let roomcount=$("#roomcount").val()
  	let daycount=$("#daycount").text()
  	let begintime=$("#begintime").val()
  	let endtime=$("#endtime").val()
  	let money=dayprice*daycount
  	
  	//
  	location.href="${pageContext.request.contextPath}/home/bookshow?hotelid="+hotelid+"&personcount="+personcount+"&roomcount="+roomcount+"&daycount="+daycount+"&begintime="+begintime+"&endtime="+endtime+"&roomtypeid="+roomtypeid+"&money="+money
  	
  	


  })
  
  //调用函数
  getDays()
  </script>
  
  
	</body>
</html>
    