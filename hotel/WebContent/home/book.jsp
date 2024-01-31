<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="#" type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; IE=8">
    <link href="css/mainHpmsplus.css" rel="stylesheet">
    <title>预订华住酒店；请填写预订信息 | 华住酒店官网</title>
</head>
<body>
<div class="Mhead slim Lpt5 Lpb5">
    <div class="inner Cwrap">
        <div class="mbox">
            <a href="#" title="首页" class="logo"></a>
            <div class="content Lcfx Ltar">
                <!-- 登录后设置span(.Ldib)-->
                <div style="display:none" class="welcomeGuest Ldib">
                    <div class="userCenter Ldib Lposr">
                            <span class="otherlink Lmb5 Lpr5 welcomeName Ldib mtOptionCenter"><i
                                    class="Cicon small_purpleuser"></i>Hi <em><span class="memberName"></span>
                                
                                </em>
                            
                                <span class="userleveldesc"></span>
                                <i class="Ldib drop_arrow"></i>
                            </span>


                        <a href="#" class="myCenter Ldib">我的华住</a>

                        <div class="userinfoPopup Lposa Ltal">
                            <ul class="userinfoPopupCont">
                                <li>
                                    <a href="#">订单中心</a>
                                </li>

                                <li>
                                    <a href="javascript:;" id="_laySignOut" class="esc Ldib Lpr25">

                                        退出
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 登录时设置span(display:none)-->
                <span style="display: block;" class="Ldib LoginAndresister"><i class="Cicon small_purpleuser"></i><a
                        href="javascript:;" class="guestLogin">登录</a><a href="javascript:;"
                                                                        class="guestRegister">免费注册</a></span>

            </div>
        </div>
    </div>
</div>

<div class="IntOrder_main">
    <section class="m_wp Lcfx">
        <!-- 左侧主体-->
        <section class="left_wp Lfll">
            <div class="cont">
                <!-- 预订信息-->
                <h1 class="cont_top Lpl10 Lfz14">
                    预订信息<span class="Ldib subTitle Lfz12 noPpIntro" style="display: inline-block;">
                       <!-- <span>
                            已是会员？立即
                        </span><a href="javascript:;" class="submitCheckIn">登录</a><span></span><i></i><span></span>
                    </span> -->
                </h1>
                <div id="orderEleInfo" class="cont_mid Lpt20 Lpl20 Lposr">
                    <p class="Lfz12 timeInput Lfwb">
                        <span>入住时间：</span>
                        <span class="checkInTime Lposr">${book.begintime }</span>
                        <span class="middlefs">至</span>
                        <span class="leaveTime Lposr">${book.endtime }</span>
                        <span class="middlefs">共<em class="dayCount">${book.daycount }</em>晚</span>
                    </p>
                    <p class="roomNum Lfwb Lfz12">
                        <span>房间数量：</span>
                        <span class="Lposr roomCounts activetextS"> <em>${book.roomcount } </em>间</span>
                    </p>

                    <p class="useCoupon Lfz12 Lmt10">
                        <a class="Lfwb CouponEvent">
                            <span class="Lml20 Lmr5">使用优惠</span>
                            <!-- 激活状态加上 .useCouponActive--><i class="Ldib useCouponActive"></i>
                        </a>
                    </p>
                    <div class="CouponItem CouponCont Lposr">
                        <p class="Lfz12 minorStyle conponInfos">您可以选择其中的一种优惠方式,如用优惠券或促销券，限订1间房</p>
                        <p class="couponItem">
                            <a class="Lfz12 Ldib Ltal first hidden" style="display: none;">
                                <!-- 激活状态加上 .selectActive--><i class="select Ldib Lmr5"></i>使用优惠券
                            </a><a class="Lfz12 Ldib Ltal hidden" style="display: none;">
                            <!-- 激活状态加上 .selectActive--><i class="select Ldib"></i>使用积分加速<em
                                class="checkIntro Ldib Lmr5 questionA"></em>
                        </a><a class="Lfz12 Ldib Ltal hidden" style="display: none;">
                            <!-- 激活状态加上 .selectActive--><i class="select Ldib Lmr5"></i>使用促销券
                        </a>
                        </p>
                        <div class="questionCont Lposa">
                            <div class="triangl Lposa"></div>
                            <div class="triang2 Lposa"></div>
                            <p class="Lfz12">1．积分加速价格，会员专享，每晚住宿都可获赠额外积分（仅限本人本卡入住），不与其他优惠共享，如优惠券、特价房等。</p>
                            <p class="Lpt15 Lfz12 Lpt10">
                                2．积分加速价格是特别为华住银会员以上的会员设计的加速积分方案。顾客以门市价入住华住酒店，将会额外获得1-2倍积分（银会员1倍，金会员1倍，铂金会员2倍）。华住积分可随时兑换各种奖励，包括免费房，积分+现金特惠房，或者近千种商品。</p>
                        </div>
                    </div>

                </div>
                <!-- 金额信息-->
                <h1 class="cont_top Lpl10 Lfz14 Lmt30"> 金额信息</h1>
                <div class="cont_mid Lpt20 Lpl10 guestCheckIn">
                    
                 

           
               
                <!-- 提交订单-->
                <div class="orderSubmit Lcfx Lcfx Lposr">
                 
                    <div class="Ltac">
                        <p class="Ltal allCount cleartac">
                            <span class="Lfz14 Lpr5 orderCountPrice Lfwb"> 订单总价</span><em class="Lfz14 orderCountRmb">
                            <b>CNY</b><i>${book.money }</i></em>
                            
                        </p>
                        <p class="Ltal allCount "><em class="changeStyle orderCountOther"> <b> </b><span
                                class="changeStyle"></span></em><i class="blankWidth Ldib"></i></p><a
                            href="javascript:;" class="Lfz16 Ltac Ldb Lmt5 Lmb10 submitOrderBtn" style="display: none;">
                        提交订单</a>
                        <a href="javascript:;" id="pay" class="Lfz16 Ltac Ldb Lmt5 Lmb10 gopay" style=""> 去支付</a>
                        <input name="__RequestVerificationToken" type="hidden"
                               value="BmpSUCbEs8T-TdoiX3vv20Uo3AQRREw0dZ1QMHM6pPMgtXUlARa09Ni6P8IPjSNCuE7fcxdfFZA0wC4UO_uCggC2Png1">;
                    </div>
                </div>
            </div>
        </section>

        <!-- 右侧主体-->
        <aside class="right_wp Lflr">
            <div class="cont">
                <!-- 酒店图片-->
                <div id="hotelInfo" class="Ldb hotelHref">
                    <!-- 酒店床型-->
                    <div class="asideImg"><img src="images/2020-10-29-11-25-06-964.jpg"
                                               style="width: 310px; height: 200px;"></div>
                    <!-- 酒店地址-->
                    <div class="asideTitle">
                        <h2 class="Lfz14 HotelName">全季沈阳中街故宫酒店</h2>
                        <div class="hotelTypeWrap">
                            <span class="hotelType">



                            <em class="hotelStars"></em><em class="hotelStars"></em><em class="hotelStars"></em></span>
                            <span class="infoShow">三星级</span>
                        </div>
                        <p class="Lfz12 HotelAddress">辽宁省沈阳市沈河区北中街路118号(中街盛京龙城东区)</p>
                    </div>

                </div>
                <div id="roomInfoModel" class="asideTitle paddingTop15">
                    <h2 class="Lfz16 RoomTypeName paddingBtm4">双床房</h2>

                    <p class="Lfz12 roomDescription">房间描述：<span>28㎡外窗双床1.2*2*2m</span></p>

                </div>
                <!-- 酒店公告-->
                <div id="hotleInfoModel" class="asideTitle paddingTop15 clearBorder">
                    <h2 class="Lfz16 paddingBtm4">酒店公告</h2>
                    <div class="cont_item hotelNotices">
                        <ol></ol>
                    </div>
                    <p class="Lfz12 saleAndCancelPolicy ">取消政策：<span>即使取消或修改预订，也不能退回应付金额。</span></p>
                    <p class="Lfz12 GuaranteePolicy ">担保政策：<span>无  </span></p>
                    <p class="Lfz12 hotelTelphone">酒店电话：<span>024-81836888</span></p>
                    <p class="Lfz12 notice_all">客服电话：4008-121-121</p>
                </div>

            </div>
        </aside>
    </section>
</div>

<footer class="Mfoot">
    <div class="inner Cwrap Lpb25 Lpt25">
        <div class="links Ltac">
            <a href="#">华住会介绍</a><a href="#" target="_blank">酒店加盟</a><a href="#" target="_blank">职位招聘</a><a href="#">意见反馈</a><a
                href="#">联系我们</a>
        </div>
        <p class="copyright Ltac Lmt20">
            沪ICP备12041475 | © 2021 Huazhu All Rights reserved.汉庭星空（上海）酒店管理有限公司
        </p>
    </div>
</footer>
<div id="scriptArea" data-page-id="IntpOrder/Create" class="Ldn">

</div>

<script src="${pageContext.request.contextPath}/admin/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/home/js/jsutil.js"></script>

<script type="text/javascript">

	//id=pay注册事件
	$("#pay").click(function(){
//		http://localhost:8080/hotel/home/bookshow?hotelid=1&personcount=2&roomcount=1&daycount=5&begintime=2021-02-20&endtime=2021-02-25&roomtypeid=18&money=615
		//location.href="${pageContext.request.contextPath}/home/bookappend?"
	//?hotelid=1&personcount=2&roomcount=1&daycount=5&begintime=2021-02-20&endtime=2021-02-25&roomtypeid=18&money=615
				let params=location.search
			//console.log(params)
				let hotelid=getUrlParam("hotelid",params)
				
				let personcount=getUrlParam("personcount",params)
				let roomcount=getUrlParam("roomcount",params)
				let daycount=getUrlParam("daycount",params)
				let begintime=getUrlParam("begintime",params)
				let endtime=getUrlParam("endtime",params)
				let roomtypeid=getUrlParam("roomtypeid",params)
				let money=getUrlParam("money",params)
				location.href="${pageContext.request.contextPath}/home/bookappend?hotelid="+hotelid+"&personcount="+personcount+"&roomcount="+roomcount+"&daycount="+daycount+"&begintime="+begintime+"&endtime="+endtime+"&roomtypeid="+roomtypeid+"&money="+money		
				
	})
</script>
</body>
</html>