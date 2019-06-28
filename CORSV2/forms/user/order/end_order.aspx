<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="end_order.aspx.cs" Inherits="CORSV2.forms.user.order.end" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>订单支付 -CORS服务</title>
    <meta name="keywords" content="CORS服务">
    <meta name="description" content="购买享优惠，免费领取代金券">
    <meta name="baidu-site-verification" content="EmN5HW4k98" />
    <script>
        var speedMark = new Date();
</script>
<link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/global.css?max_age=2000002" rel="stylesheet" media="screen"/>
<link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/shopcart/css/shopcart.css?max_age=2000003" rel="stylesheet" media="screen" />
<link href='//imgcache.qq.com/qcloud/app/resource/ac/favicon.ico' rel='icon' type='image/x-icon'/>
<style>
</style>

</head>
    <body>
<div class="qc-navigation qc-navigation-hover qc-navigation-mini" style="top:0">
    <div class="navigation-inner ">
        <div class="logo">
            <h1>
                <a href="http://www.qcloud.com/" class="logo-text" hotrep="menu.logo">
                    <i class="icon-logo"></i>
                    <!--<img src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home/qcloud-logo-mini.png">-->
                </a>
            </h1>
        </div>
    

        <!-- 右侧操作 start-->
        <div class="operation">
            <div class="search">
                <input type="text" class="search-ipt" id="topbarSearchInput">
                <button type="button" class="bt-search" id="topbarSearchBtn" hotrep="menu.search"><i class="icon-search"></i></button>
            </div>
            <div class="login">
                
                <a href="http://console.cloud.tencent.com/beian" class="text" hotrep="menu.beian"><span>备案</span></a>
                <span class="stick">|</span>
                
                <div class="login-op">
                    <div class="state-log-out" style="display:none" id="h_login">
                        <a href="javascript:;"class="text" id="h_login_btn">登录</a>
                        <a href="http://manage.qcloud.com/developerCenter/registUser.php" class="text btn-sign-up" id="h_login_regist"><span>注册</span></a>
                    </div>
                    <div class="state-log-in" style="display:none" id="h_logined">
                        <a href="https://console.qcloud.com" class="user-id"><span class="user-name"></span><i class="triangle-down"></i></a>
                        <!-- 退出浮层 -->
                        <div class="nav-down-style nav-down-style-1" style="display:none" id="h_loginout">
                            <ul class="nav-down-menu">
                                <li>
                                    <a href="https://passport.qcloud.com/" hotrep="menu.logout">退出</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a href="https://console.qcloud.com/" class="qc-btn link-mc" hotrep="menu.console"><span>控制台</span></a>
        </div>
        <!-- 右侧操作 end -->
    </div>
</div>
    <div class="body">
        <div class="mod-pay">
            <!--head start-->
            <div class="pay-head">
                <div class="pay-head-mod clearfix">
                    <div class="pay-head-title">
                        <h2>支付</h2>
                    </div>
                    <div class="pay-head-step">
                        <ul>
                            <li class="first succeed"><em>1</em><span>核对信息</span></li>
                            <li class="curr"><em>2</em><span>支付</span></li>
                            <li class="curr"><em>3</em><span>支付结果</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--head end-->

            <!--body start-->
            <div class="pay-body" id="pay_wrap">
            
                <div class="payment-wrap">
                    <div class="payment-top clearfix">
                        <div class="payment-left">
                            <div class="payment-tit">
                                <span>交易对象：</span>
                                <em>武汉大学</em>
                            </div>
                        </div>
                        <div class="payment-right">
                            <div class="cost">
                                <span class="tit">订单金额:</span>
							<span class="price">
								<span class="unit-icon">¥</span>
								<em>62.50</em>
							</span>
                            </div>
                        </div>
                    </div>
                
                    <div class="payment-mod clearfix" data-balance="0">
                    
                        <div class="payment-center payment-balance" style="text-align:center;" >
                            <label >
                                <span  style=" font-size: 32px;">支付成功</span>
                            </label>
                            
                        </div>
                    
                    </div>
                    
   
                    
             
                
                </div>
                <div id="iframeContainer" class="dialog-layer" style="display:none;z-index: 1000;">
                    <a class="close" title="关闭" href="javascript:;" id="iframeClose"><i>×</i></a>
                </div>
                <div class="shop-mask" id="iframeMask" style="display:none;"></div>
            <!--body end-->

            </div>
        </div>
    </div>
    

</body>
</html>
