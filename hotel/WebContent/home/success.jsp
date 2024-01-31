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
              
                <h1 class="cont_top Lpl10 Lfz14">
                   预约成功
				   <a href="${pageContext.request.contextPath}/home/index.jsp">返回</a>
                </h1>
         
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


</body>
</html>