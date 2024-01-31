<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="./seacher/style1536672475627.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; IE=8">
    <title>沈阳酒店预订_沈阳宾馆_旅馆预订 – 华住酒店</title>
    <link rel="alternate" media="only screen and (max-width: 640px)" href="#">
    <link rel="stylesheet" href="./css/main.a5ec9ae7.css">

    <link rel="shortcut icon" href="#" type="image/x-icon">
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
                        <a href="#" class="active">国内酒店</a>
                    </li>
                    <li class="Lfll">
                        <a href="#">海外酒店</a>
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
                <div class="popuparea downapp pure-u Lposr">
                    <i  class="Cicon small_newdownload">下载APP</i>
                    <div class="popupBox Lposa Ltal">
                        <div class="mask"></div>
                        <ul class="Lcfx Ltac popupBox_content">
                            <li class="Lfll huazhuapp">
                                <img src="./images/huazhuapp.33a2ca98.png">
                                <span>扫一扫APP下载</span>
                            </li>
                            <li class="Lfll huazhuwechat">
                                <img src="./images/huazhuwechat.c450b7ed.png">
                                <span>关注微信</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="popuparea helpcenter pure-u Lposr">
                    <i  class="Cicon small_newhelp">帮助中心</i>
                    <div class="popupBox Lposa Ltal">
                        <div class="mask"></div>
                        <ul class="Lcfx Ltac popupBox_content">
                            <li class="Lfll onlineservice Ltal">
                                <a  class="Ldib pure-g" href="#" target="_blank">
                                    <i class="Cicon small_newxiaoer pure-u">华小二在线</i>
                                    <span class="pure-u">华小二在线</span>
                                </a>
                            </li>

                            <li class="Lfll userhelp Ltal">
                                <a  class="Ldib pure-g" href="#">
                                    <i class="Cicon small_newuserhelp pure-u">新手帮助</i>
                                    <span class="pure-u">新手帮助</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="popuparea multilanguage pure-u Lposr">
                    <a  class="Cicon small_newcountryEn" href="#">中英文切换</a>

                </div>
                <span class="split pure-u"></span>
                <div class="pure-u" id="userinfo" data-nblock-id="block/headUserInfo">

                    <a  class="signin pure-u" href="#">登录</a>
                    <a  class="signup pure-u" href="#">注册</a>


                </div>

            </div>
        </div>
    </div>

</div>


<h1 class="Ctitletext">沈阳华住酒店</h1>
<div class="Cmbox">
    <div class="inner Cwrap">
        <div class="Cdir">
            <a href="#"><i class="Cicon small_home"></i>首页</a>
            <span class="next">&gt;</span>
            <a href="#">
                <span>沈阳酒店预订</span>
            </a>
        </div>
        <div id="Plist_checkin" class="Plist_checkin">
            <div class="checkinbox" style="top: 0px; left: 79.5px; position: static; width: auto;">
                <div class="Lcfx">
                    <div class="item Lfll" data-nblock-id="ui/checkinCity">
                        <span class="ltext">城市</span>
                        <div class="inputbox">
                            <input type="text" value="${cityname }" data-city-id="2101" class="input1 checkincity">
                            <div class="arrowbox"><i class="Cicon drop_arrow"></i></div>
                        </div>
                    </div>
                    <div class="Lfll" data-nblock-id="ui/checkinDate?offset=0px-10px">
                        <div class="item Lfll">
                            <span class="ltext">入住日期</span>
                            <div class="inputbox">
                                <input type="text" value="${begintime }"
                                       class="input1 checkindate hasDatepicker">
                                <div class="arrowbox"><i class="Cicon drop_arrow"></i></div>
                            </div>
                        </div>
                        <div class="item Lfll">
                            <span class="ltext">退房日期</span>
                            <div class="inputbox">
                                <input type="text"  value="${endtime }" class="input1 checkoutdate hasDatepicker">

                                <div class="arrowbox"><i class="Cicon drop_arrow"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="item Lfll" data-nblock-id="ui/checkinKeyword">
                        <span class="ltext">关键字</span>
                        <div class="inputbox">
                            <input type="text" placeholder="酒店名称/地址/行政区域等" class="input2 checkinkeyword"
                                   data-keyword="">
                        </div>
                    </div>
                    <div class="btnbox Lfll"><a href="javascript:;"  class="Cbtn std_small Lmr10 search">搜索</a><a
                            href="#"  class="Cbtn mapsearch">地图搜索</a></div>
                </div>
            </div>
        </div>
        <div class="Plist_mbox Lcfx">
<!--            列表-->

            <div class="lbox">
                <div id="Plist_hotel" class="Plist_hotel"
                     data-nblock-id="block/hotelListHotels?initHotelList=hotelListData">
                    <div class="citycount">
                        当前城市，为您找到<b>8</b>家酒店
                    </div>
                    <div class="filterbox">
                        <div class="filterbar Lcfx" style="top: 52px; left: 79.5px; position: static; width: auto;">
                            <div class="Lfll sortbox">
                                <a href="javascript:;"  class="label active" data-type="NoSet">默认排序</a>
                                <a href="javascript:;"  class="sort" data-type="LowestPrice"
                                   data-sort="Asc" data-title-prefix="价格" title="价格从低到高">价格<i class="Cicon sortup"></i></a>
                                <a href="javascript:;"  class="sort" data-type="CommentScore"
                                   data-sort="Desc" data-title-prefix="评分" title="评分从高到低">评分<i
                                        class="Cicon sortdown"></i></a>
                            </div>
                            
                        </div>
                    </div>
                    <div class="hotellist_box">


                        <div class="hotellist Lmt10">
						<c:forEach items="${pages.list }" var="hotel">
                            <!--           列表项开始 begin-->
                            <div class="hotel">
                                <div class="hotelbox">
                                    <div class="img">
                                    <a href="${pageContext.request.contextPath}/home/list?hotelid=${hotel.id}&begintime=${begintime}&endtime=${endtime}" title="${hotel.name }">
                                    <img src="${pageContext.request.contextPath}/images/${hotel.picture}"
                                                          width="190" height="160" >
                                  	</a>
									</div>
                                    <div class="desc">
                                        <div class="hotelname  hasTaxBedge">
                                            <a class="name" title="${hotel.name }" href="${pageContext.request.contextPath}/home/list?hotelid=${hotel.id}&begintime=${begintime}&endtime=${endtime}" target="_blank">
                                                <h2>${hotel.name }</h2>（内宾）
                                            </a>

                                            <span class="tax_bedge tax_bedge_1"><i>专票抵扣</i><i class="percent">6%</i></span>
                                        </div>
                                        <div class="address">${hotel.address }</div>
                                        <div class="lastorder"></div>
                                        <div class="commentseg hasLabel">
                                            <i class="Cicon small_msg"></i>大家说：<span>位置优越</span></div>

                                    </div>

                                </div>
                            </div>
                            <!--           列表项开始 end-->

					</c:forEach>


                        </div>

                    </div>
                    <div class="pages">
                        <div class="Cpage Ltar">


                            <a href="#" class="active" data-page-index="1">首页</a>
                            <a href="#" class="active" data-page-index="1">上一页</a>
							<a href="#" class="active" data-page-index="1">下一页</a>
							<a href="#" class="active" data-page-index="1">末页</a>

                        </div>
                    </div>
                    <div class="recommend_hotellist_box"></div>
                </div>
            </div>

        </div>
        <div class="PList_Seo Lcfx">
            <div class="title"><h3>加入华住会，享受我们的卓越礼遇</h3></div>
            <div class="posbox">
                <div class="contentbox">
                    <ul class="introl-ls Lcfx">
                        <li class="introl-item Lpl20">
                            <dl>
                                <dt class="Lpt20">无需比价：</dt>
                                <dd class="Lpt15">官渠价格保证，会员价更低，旅行更优惠</dd>
                            </dl>
                            <dl>
                                <dt class="Lpt10">超级积分：</dt>
                                <dd class="Lpt15">积分线上线下均可使用，玩转吃住行游购娱</dd>
                            </dl>
                        </li>
                        <li class="introl-item second-content">
                            <dl>
                                <dt class="Lpt20">商务助手：</dt>
                                <dd class="Lpt15">快速打印发票，一键上网，出行不拖沓</dd>
                            </dl>
                            <dl>
                                <dt class="Lpt10">邀请特权：</dt>
                                <dd class="Lpt15">免费呼朋唤友加入华住会,自在分享快乐</dd>
                            </dl>
                        </li>
                        <li class="introl-item imgbox-content">
                            <ul class="img-list">
                                <li class="img-item Lmt35"><img src="./images/gift.0f016d96.png"></li>
                                <li class="img-item Lml20 Lmt20">
                                    <img src="./images/huazhuapp2.d9f2630f.png">

                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="Lpt40">&nbsp;</div>
</div>


<div class="Cback" data-nblock-id="block/backToTop" style="display: none;">
    <div class="backbox Lposr">
        <div class="scanbox"><img src="./seacher/qrcode.c3b77b0b.png" width="100%" height="100%"><i
                class="arrow"></i></div>
        <a class="item scan" href="#" target="_blank"><i class="Cicon middle_scan"></i><span
                class="txt">下载<br>APP</span></a>
        <a class="item onlineservice" href="#" target="_blank"><i class="Cicon middle_onlineservice"></i><span
                class="txt">华小二<br>在&nbsp;&nbsp;&nbsp;线</span></a>
        <a class="item msg" href="#" target="_blank"><i class="Cicon middle_msg"></i><span
                class="txt">意见<br>反馈</span></a>
        <div class="item back"><i class="Cicon middle_backarrow"></i><span class="back"></span></div>
    </div>
</div>
<div class="download-app-open Ltac" style="left: -100%">
    <ul class="download-app-content Lcfx">
        <li><i class="imp-pc-gift"></i></li>
        <li class="text-content"><i class="img-pc-text"
                                    style="background-image:url(https://campaign.huazhu.com/passportStatic/content/img/img_pc_text.png)"></i>
        </li>
        <li class="download-content Ltac"><p class="download-app-text">扫码下载华住会APP</p><i class="img-pc-QR"></i></li>
        <li class="close-content"><i class="icon-pc-close"></i></li>
    </ul>
</div>
<div class="download-app-unopen" style="left: ">
    <a class="button-unopen"></a>
</div>
<footer class="Mfoot">
    <div class="inner Cwrap Lpb25 Lpt25">
        <div class="links Ltac">
            <a  href="#">华住会介绍</a><a  href="#" target="_blank">酒店加盟</a><a href="#"

                                                                                                      target="_blank">职位招聘</a><a
                 href="#">意见反馈</a><a  href="#">联系我们</a>
        </div>
        <p class="copyright Ltac Lmt20">沪ICP备12041475 | ©2021 Huazhu All Rights reserved. 汉庭星空（上海）酒店管理有限公司</p>
    </div>
</footer>


</body>
</html>