<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册 - 华住酒店集团</title>
    <link href="css/main-register.css" rel="stylesheet">
</head>
<body><h1 class="seoUsed">登录华住酒店官网</h1>


<header class="Mhead slim">
    <div class="inner Cwrap">
        <div class="mbox">
            <a href="#" title="首页" class="logo"></a>
            <div class="content Lcfx Ltar">
                <div class="h3 pagename Lfll Lmt30 Lpl25">会员注册</div>
                <span class="otherlink Ldib Lmt30 Lpr25"><a href="#">了解更多</a><i>|</i><a href="#">反馈意见</a><i>|</i><a
                        href="#">English</a></span>
            </div>
        </div>
    </div>
</header>
<section class="US_signup">
    <div class="inner Cwrap">
        <div class="mbox Lcfx Lpb30">
            <div class="lbox Lmt30 Lfll">
                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar"><i>*</i>姓 &nbsp;&nbsp;&nbsp; 名</span>
                    <div class="inputbox signUp_userName Lfll">
                        <input type="text" placeholder="请填写身份证中的姓名" class="input1" maxlength="25">
                    </div>
                    <div class="tips error Lfll Lfz12 Lpl5 Lpr5"><i
                            class="Cicon small_error">&nbsp;</i><em>请填写您有效证件上的姓名</em></div>
                </div>
                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar"><i>*</i>手 机 号</span>
                    <div class="inputbox signUp_tel Lfll">
                        <input type="text" placeholder="可作为登录名" class="input1" maxlength="11">
                    </div>
                    <div class="tips notice Lfll Lfz12 Lpl5 Lpr5"><i
                            class="Cicon small_notice">&nbsp;</i><em>请填写手机号</em></div>
                </div>
                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar"><i>*</i>密 &nbsp;&nbsp;&nbsp; 码</span>
                    <div class="inputbox signUp_psw Lfll">
                        <input type="password" placeholder="请设置8-20位字母和数字的组合" class="input1 notplaceholder"
                               maxlength="20">
                    </div>
                    <div class="tips ok Lfll Lfz12 Lpl5 Lpr5"><i class="Cicon small_ok">&nbsp;</i><em></em></div>
                </div>
                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar"><i>*</i>确认密码</span>
                    <div class="inputbox signUp_aPsw Lfll">
                        <input type="password" placeholder="请再次输入密码" class="input1 notplaceholder" maxlength="20">
                    </div>
                    <div class="tips notice Lfll Lfz12 Lpl5 Lpr5"><i
                            class="Cicon small_notice">&nbsp;</i><em>两次填写的密码不一致</em></div>
                </div>

                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar">&nbsp;</span>
                    <div class="moreinfo Lpt5 Lfz14"><em>完善信息</em><i></i><span class="Lfz12">（完善信息可以获得更多会员特权）</span>
                    </div>
                </div>
                <div class="otherInfor">
                    <div class="item Lcfx">
                        <span class="label Lfll Lfz14 Ltar">证件类型</span>
                        <div class="inputbox Lfll">
                            <select class="select1 verType Lfz14">
                                <!--<option value="0">请选择</option>-->
                                <option value="C01" class="t_active">居民身份证（内宾）</option>
                                <option value="C06">护照(内宾)</option>
                                <option value="C55">台胞证</option>
                                <option value="C60">往来港澳通行证</option>
                            </select>
                        </div>
                    </div>
                    <div class="item Lcfx">
                        <span class="label Lfll Lfz14 Ltar">证件号码</span>
                        <div class="inputbox Lfll signUp_vry">
                            <input type="text" placeholder="请填写证件号码" class="input1">
                        </div>
                        <div class="tips error Lfll Lfz12 Lpl5 Lpr5"><i class="Cicon small_error">&nbsp;</i><em>请输入正确的身份证号</em>
                        </div>
                    </div>
                    <div class="item Lcfx">
                        <span class="label Lfll Lfz14 Ltar">Email</span>
                        <div class="inputbox signUp_emeil Lfll">
                            <input type="text" placeholder="通过验证码后可作为登录名" class="input1">
                        </div>
                        <div class="tips error Lfll Lfz12 Lpl5 Lpr5"><i
                                class="Cicon small_error">&nbsp;</i><em>邮箱格式输入错误</em></div>
                    </div>
                </div>

                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar">&nbsp;</span>
                    <div class="agree Lpt5 Lfz14">

                        <input type="checkbox" class="check1 signUp_agreen" id="signUp_agreen"><label
                            for="signUp_agreen"><span class="labelafter"></span></label>我已阅读并同意<a
                            class="Ldib greenServe">《华住会会员计划与服务条款》</a>和<a class="Ldib privateServe">《华住隐私声明》</a>

                    </div>
                </div>
                <div class="item Lcfx">
                    <span class="label Lfll Lfz14 Ltar">&nbsp;</span>
                    <div class="btnbox Lfll">
                        <button type="button" id="signUp_btn" class="Cbtn std_large Ldb">注册</button>
                    </div>
                </div>
            </div>
            <div class="rbox Lflr Lmt30">
                <div class="signin_tips  Lpr30 Lpl30 Lfz12 Lpl5 Lpr5 Lpt20 "><span class="Lfwb">已是会员，</span><a href="#"
                                                                                                               class="g_login Lfz14">直接登录</a>
                </div>
                <div class="union_signin">
                    <p>使用合作网站账号登录：</p>
                    <div class="Lcfx">
                        <a href="#" class="ulink"><i class="Cicon union_qq">&nbsp;</i>QQ登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_weibo">&nbsp;</i>微博登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_alipay">&nbsp;</i>支付宝登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_weixin">&nbsp;</i>微信登录</a>
                    </div>
                </div>
                <div class="cooper Lmt40 Lpt10 Lpr30 Lpl30 Lfz14">
                    <p class="c_intro Lfz12">您可以使用航空公司/银行卡快速注册</p><a href="#" class="b_cooper Lfz14 Lfwb">合作卡注册</a>
                </div>
                <div class="cooper Lmt40 Lpt10 Lpr30 Lpl30 Lfz14">
                    <p class="c_intro Lfz12">您也可以为企业申请公司会员办卡</p><a href="#" class="b_cooper Lfz14 Lfwb">企业卡申请</a>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="J-popupsGreen">
    <i class="lay-wrap"></i>
    <div class="popus-cont" style="padding-top:0;padding-bottom:0;">
        <a href="javascript:;" class="close"></a>
        <iframe style="border:0;width:100%;height:100%;" frameborder="0" src="register/index.html"></iframe>
    </div>
</div>
<div class="J-popupsPrivate">
    <i class="lay-wrap"></i>
    <div class="popus-cont">
        <a href="javascript:;" class="close"></a>
        <iframe style="border:0;width:100%;height:100%;" frameborder="0"
                src="register/privacy-clause-pc.html"></iframe>
    </div>
</div>
<div class="J-popups">
    <i class="lay-wrap"></i>
    <div class="popus-cont">
        <a href="javascript:;" class="close"></a>
        <div class="c-cont">
            <p><em class="error_img"></em><span class="error_intro">系统错误，请稍后哦～</span></p>
        </div>
    </div>
</div>
<!-- APP下载  -->
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
<!-- 弹出极验验证 -->
<div id="popup-captcha"></div>

<div class="Mfoot">
    <div class="inner Lpb25 Lpt25">
        <div class="links Ltac">
            <a href="#">华住会介绍</a>
            <a href="#">酒店加盟</a>
            <a href="#">职位招聘</a>
            <a href="#">意见反馈</a>
            <a href="#">联系我们</a>
        </div>
        <p class="copyright Ltac Lmt20">沪ICP备12041475 | © 2021 Huazhu All Rights reserved.汉庭星空（上海）酒店管理有限公司</p>
    </div>
</div>


<div class="geetest_panel geetest_wind" style="display: none;">
    <div class="geetest_panel_ghost"></div>
    <div class="geetest_panel_box">
        <div class="geetest_other_offline geetest_panel_offline"></div>
        <div class="geetest_panel_loading">
            <div class="geetest_panel_loading_icon"></div>
            <div class="geetest_panel_loading_content">智能验证检测中</div>
        </div>
        <div class="geetest_panel_success">
            <div class="geetest_panel_success_box">
                <div class="geetest_panel_success_show">
                    <div class="geetest_panel_success_pie"></div>
                    <div class="geetest_panel_success_filter"></div>
                    <div class="geetest_panel_success_mask"></div>
                </div>
                <div class="geetest_panel_success_correct">
                    <div class="geetest_panel_success_icon"></div>
                </div>
            </div>
            <div class="geetest_panel_success_title">通过验证</div>
        </div>
        <div class="geetest_panel_error">
            <div class="geetest_panel_error_icon"></div>
            <div class="geetest_panel_error_title">网络超时</div>
            <div class="geetest_panel_error_content">请点击此处重试</div>
            <div class="geetest_panel_error_code">
                <div class="geetest_panel_error_code_text"></div>
            </div>
        </div>
        <div class="geetest_panel_footer">
            <div class="geetest_panel_footer_logo"></div>
            <div class="geetest_panel_footer_copyright">由极验提供技术支持</div>
        </div>
        <div class="geetest_panel_next"></div>
    </div>
</div>
</body>
</html>