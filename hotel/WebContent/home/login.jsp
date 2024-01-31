<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录华住酒店;会员登录| 华住酒店官网</title>
    <link href="css/main_login.css" rel="stylesheet">
</head>
<body><h1 class="seoUsed">登录华住酒店官网</h1>


<header class="Mhead slim">
    <div class="inner Cwrap">
        <div class="mbox">
            <a href="#" title="首页" class="logo"></a>
            <div class="content Lcfx Ltar">
          
            </div>
        </div>
    </div>
</header>
<section class="US_signin">
    <div class="inner Cwrap">
        <div class="mbox Lcfx Lpl30 Lpr30">
            <section class="lbox Lfll">
                <h3 class="signintip Lmt40 Lfz18 Ltac"><br></h3>
            </section>
            <aside class="rbox Lflr">
                <section class="tabs Lposr">
                    <div class="bline"></div>
                    <nav class="cbox Lcfx">
                        <div class="tab Ltac Lfwb Lfs14 Lfll first curr">个人登录</div>
                        <div class="tab Ltac Lfwb Lfs14 Lfll" id="cPLogin">企业卡号登录</div>
                    </nav>
                </section>
                <section class="gLoginWp Ldn myLogin Ldb">
                    <nav class="subtabs Lcfx Lposr">
                        <div class="tab Ltac  Lfs14 Lfll curr Lfll"><i class="arrow"></i>普通登录</div>
                        <div class="tab Ltac  Lfs14 Lfll"><i class="arrow"></i>手机动态密码登录</div>
                    </nav>
                    
                    <form id="form2" method="post" action="${pageContext.request.contextPath}/home/login">
                   
                    <div class="subWp Ldn">
                        <div class="item Lmt20 Lcfx Lml40 Lmr40">
                            <span class="label Lfs14 Ltar Lfwb Lfll Lpr10"><i
                                    class="Cicon small_user">&nbsp;</i>用户名</span>
                            <div class="inputbox Lfll Lposr">
                                <div class="tri_box verify_user Lpl5 Lfwb">
                                    <div class="tri_rig triangl"></div>
                                    <div class="tri_rig_b triangle Lpl10">请输入会员手机号/邮箱</div>
                                    <div class="tri_rig triangl triang2"></div>
                                </div>
                                <input name="uname" type="text" placeholder="会员手机号/邮箱" class="input1 Lfs14"
                                       autocomplete="off">
                            </div>
                        </div>
                        <div class="item Lcfx Lml40 Lmr40">
                            <span class="label Lfs14 Ltar Lfwb Lfll Lpr10"><i
                                    class="Cicon small_lock">&nbsp;</i>密　码</span>
                            <div class="inputbox Lfll Lposr">
                                <div class="tri_box verify_password Lpl5 Lfwb">
                                    <div class="tri_rig triangl"></div>
                                    <div class="tri_rig_b triangle Lpl10">请输入密码!</div>
                                    <div class="tri_rig triangl triang2"></div>
                                </div>
                                <input type="password" name="upwd" placeholder="请输入密码" class="input1 Lfs14 notplaceholder"
                                       maxlength="18" autocomplete="off">
                            </div>
                        </div>

                    </div>
                    </form>
                    
                    <div class="subWp2 Ldn">
                        <div class="item Lmt20 Lcfx Lml40 Lmr40">
                            <span class="label Lfs14 Ltar Lfwb Lfll Lpr10"><i
                                    class="Cicon small_user">&nbsp;</i>手机号</span>
                            <div class="inputbox Lfll Lposr">
                                <div class="tri_box subWp2_user Lpl5 Lfwb">
                                    <div class="tri_rig triangl"></div>
                                    <div class="tri_rig_b triangle Lpl10">请输入正确的会员手机号</div>
                                    <div class="tri_rig triangl triang2"></div>
                                </div>
                                <input type="text" placeholder="手机号" class="input1 Lfs14 teiNumber" maxlength="11"
                                       autocomplete="off">

                            </div>
                        </div>


                        <div class="verifybox Lcfx Lml40 Lmr40 ">
                            <div class="item Lcfx Lfll r_item_width Lml40 Lmr40 sSetWidth ">
                                <span class="label Lfs14 Ltar Lfwb Lfll Lpr10 "><i class="Cicon small_lock">&nbsp;</i>密　码</span>
                                <div class="inputbox Lfll Lposr sRestWidth">
                                    <div class="tri_box subWp2_prompt Lpl5 Lfwb ">
                                        <div class="tri_rig triangl"></div>
                                        <div class="tri_rig_b triangle Lpl10">请输入密码!</div>
                                        <div class="tri_rig triangl triang2"></div>
                                    </div>
                                    <input type="password" placeholder="动态密码"
                                           class="input2 Lpl30 Lpr30 Lfs14 notplaceholder" autocomplete="off"
                                           maxlength="6">
                                </div>
                            </div>
                            <div class="sendMessge Lflr reWidth122"><a href="javascript:;"
                                                                       class="d_password Countdown Ltac Ldb reWidth122">获取动态密码</a>
                            </div>
                        </div>


                    </div>
                    <div class="btnbox">
                        <button type="button" id="s_submit" class="Cbtn std_large">登录</button>
                    </div>
                    
                    <div class="loginError"></div>
                    <div class="reglink Lpt10 Lcfx Lml40 Lmr40 Lfs16 Lfwb">
                        <span class="Lfll">享更多特权，</span>
                        <a href="#" class="Lfll">立即注册 <i class="newRederact"> </i></a>
                        <a href="#" class="Lflr">忘记密码？</a>
                    </div>

                    <div class="checkbox">
                        <span class="icon-checkbox"></span>
                        <span class="text">我已阅读并同意<a class="greenServe">《华住会会员计划与服务条款》</a>和<a class="privateServe">《华住隐私声明》</a></span>
                    </div>
                </section>
                <section class="gLoginWp Ldn cpLogin">
                    <div class="item Lmt20 Lcfx Lml40 Lmr40">
                        <span class="label Lfs14 Ltar Lfwb Lfll Lpr10"><i class="Cicon small_user">&nbsp;</i>用户名</span>
                        <div class="inputbox Lfll Lposr">
                            <div class="tri_box verify_user2 Lpl5 Lfwb">
                                <div class="tri_rig triangl"></div>
                                <div class="tri_rig_b triangle Lpl10">请输入卡号或操作员手机号</div>
                                <div class="tri_rig triangl triang2"></div>
                            </div>
                            <input type="text" placeholder="企业卡号" class="input1 Lfs14" autocomplete="off">
                        </div>
                    </div>
                    <div class="item Lcfx Lml40 Lmr40">
                        <span class="label Lfs14 Ltar Lfwb Lfll Lpr10"><i class="Cicon small_lock">&nbsp;</i>密　码</span>
                        <div class="inputbox Lfll Lposr">
                            <div class="tri_box verify_password2 Lpl5 Lfwb">
                                <div class="tri_rig triangl"></div>
                                <div class="tri_rig_b triangle Lpl10">请输入密码!</div>
                                <div class="tri_rig triangl triang2"></div>
                            </div>
                            <input type="password" placeholder="请输入密码" class="input1 Lfs14 notplaceholder"
                                   maxlength="18" autocomplete="off">
                        </div>
                    </div>

                    <div class="btnbox">
                        <button type="button" id="s_submit2" class="Cbtn std_large">登录</button>
                    </div>
                    <div class="loginErrorS"></div>
                    <div class="reglink Lpt10 Lcfx Lml40 Lmr40 Lfs14 Lfwb"><span class="Lfll">享更多特权，</span><a href="#"
                                                                                                              class="Lfll">企业卡注册<i
                            class="newRederact"> </i></a><a href="#" class="Lflr">忘记密码？</a></div>
                </section>

                <section class="union_signin">
                    <p>使用合作网站账号登录：</p>
                    <div class="Lcfx">
                        <a href="#" class="ulink"><i class="Cicon union_qq">&nbsp;</i>QQ登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_weibo">&nbsp;</i>微博登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_alipay">&nbsp;</i>支付宝登录</a>
                        <a href="#" class="ulink"><i class="Cicon union_weixin">&nbsp;</i>微信登录</a>
                    </div>
                </section>
            </aside>
        </div>
    </div>
</section>
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
<div class="J-popups">
    <i class="lay-wrap" style="height: 576px; width: 1349px;"></i>
    <div class="popus-cont" style="top: 222.5px;">
        <a href="javascript:;" class="close"></a>
        <div class="c-cont">
            <p><em class="error_img"></em><span class="error_intro">系统错误，请稍后哦～</span></p>
        </div>
    </div>
</div>

<!-- 弹出极验验证 -->
<div id="popup-captcha"></div>

<!-- 预定员验证邮箱弹窗 -->
<div class="companylogin-popups company-email_validate">
    <i class="lay-wrap" style="height: 576px; width: 1349px;"></i>
    <div class="popus-cont" style="top: 121.5px;">
        <a href="javascript:;" class="close"></a>
        <div class="c-cont">
            <div class="title">验证邮箱</div>
            <div class="title_aside"></div>
            <div class="sub_title">为确保账户的真实性，需验证预订员的企业邮箱</div>
            <div class="company-form">
                <div class="company-form_list company-special emailbox Lcfx">
                    <div class="input-box Lcfx Lfll">
                        <div class="iconnew iconnew-email Lfll"></div>
                        <input type="text" class="email-input Lfll" placeholder="请输入您的公司邮箱">
                    </div>
                    <div class="sendcode_btn Lfll">发送验证码</div>
                </div>
                <div class="company-errortipbox">
                    <div class="company-errortip Lcfx Ldn">
                        <div class="iconnew iconnew-error Lfll"></div>
                        <div class="errortext Lfll">testest</div>
                    </div>
                </div>
                <div class="company-form_list company-normal emailcodebox Lcfx">
                    <div class="input-box Lcfx Lfll">
                        <div class="iconnew iconnew-emailcode Lfll"></div>
                        <input type="text" class="emailcode-input Lfll" placeholder="请输入验证码">
                    </div>
                </div>
                <div class="company-errortipbox">
                    <div class="company-errortip Lcfx Ldn">
                        <div class="iconnew iconnew-error Lfll"></div>
                        <div class="errortext Lfll"></div>
                    </div>
                </div>
            </div>
            <div class="Cbtn std_large company-confirm_btn">确定</div>
        </div>
    </div>
</div>

<!-- 预定员绑定个人会员弹窗 -->
<div class="companylogin-popups company-member_bind">
    <i class="lay-wrap" style="height: 576px; width: 1349px;"></i>
    <div class="popus-cont" style="top: 79.5px;">
        <a href="javascript:;" class="close notclose"></a>
        <div class="c-cont">
            <div class="title">绑定个人会员</div>
            <div class="title_aside"></div>
            <div class="sub_title">立即获得华住酒店铂金会员资格，输入手机号激活，出差旅游均可享受<span>5400+酒店房费85折</span>优惠。</div>
            <div class="company-form">
                <div class="company-form_list company-special phonebox Lcfx">
                    <div class="input-box Lcfx Lfll">
                        <div class="iconnew iconnew-phone Lfll"></div>
                        <input type="text" class="phone-input Lfll" placeholder="请输入您的手机号">
                    </div>
                    <div class="sendcode_btn Lfll">发送验证码</div>
                </div>
                <div class="company-errortipbox">
                    <div class="company-errortip Lcfx Ldn">
                        <div class="iconnew iconnew-error Lfll"></div>
                        <div class="errortext Lfll">testest</div>
                    </div>
                </div>
                <div class="company-form_list company-normal phonecodebox Lcfx">
                    <div class="input-box Lcfx Lfll">
                        <div class="iconnew iconnew-phonecode Lfll"></div>
                        <input type="text" class="phonecode-input Lfll" placeholder="请输入验证码">
                    </div>
                </div>
                <div class="company-errortipbox">
                    <div class="company-errortip Lcfx Ldn">
                        <div class="iconnew iconnew-error Lfll"></div>
                        <div class="errortext Lfll"></div>
                    </div>
                </div>
                <div class="company-form_list company-normal idcodebox Lcfx">
                    <div class="input-box Lcfx Lfll">
                        <div class="iconnew iconnew-id Lfll"></div>
                        <input type="text" class="id-input Lfll" placeholder="请输入身份证号码">
                    </div>
                </div>
                <div class="company-errortipbox">
                    <div class="company-errortip Lcfx Ldn">
                        <div class="iconnew iconnew-error Lfll"></div>
                        <div class="errortext Lfll"></div>
                    </div>
                </div>
            </div>
            <div class="Cbtn std_large company-confirm_btn">确定</div>
            <div class="Cbtn std_large company-cancel_btn">跳过</div>
        </div>
    </div>
</div>

<!-- 预定员验证提示窗 -->
<div class="company-commontip">
    <i class="lay-wrap" style="height: 576px; width: 1349px;"></i>
    <div class="popus-cont" style="top: 228px;">
        <div class="c-cont">
            <div class="title">验证成功!</div>
        </div>
    </div>
</div>

<div class="J-popupsGreen">
    <i class="lay-wrap"></i>
    <div class="popus-cont" style="padding-top:0;padding-bottom:0;">
        <a href="javascript:;" class="close"></a>
        <iframe style="border:0;width:100%;height:100%;" frameborder="0" src="login/index.html"></iframe>
    </div>
</div>
<div class="J-popupsPrivate">
    <i class="lay-wrap"></i>
    <div class="popus-cont">
        <a href="javascript:;" class="close"></a>
        <iframe style="border:0;width:100%;height:100%;" frameborder="0"
                src="login/privacy-clause-pc.html"></iframe>
    </div>
</div>
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
<div id="scriptArea" data-page-id="home/login">

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
 <script src="${pageContext.request.contextPath}/admin/assets/libs/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
//id=s_submit注册事件
$("#s_submit").click(function(){
	$("#form2").submit() //提交表单
})
</script>
</body>
</html>