<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_order.aspx.cs" Inherits="CORSV2.forms.user.order.check_order" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>订单支付 - 腾讯云</title>
    <meta name="keywords" content="云服务器,购买,腾讯云">
    <meta name="description" content="购买享优惠，免费领取代金券。腾讯云为企业提供近30款云产品，助力企业轻松跨入“互联网+”时代，产品包含云服务器、云数据库、云缓存Memcached、负载均衡、弹性web引擎等核心产品，立即购买多重优惠来袭！">
    <meta name="baidu-site-verification" content="EmN5HW4k98" />
    <script>
        var speedMark = new Date();
</script>
<link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/global.css?max_age=2000002" rel="stylesheet" media="screen"/>
<link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/shopcart/css/shopcart.css?max_age=2000003" rel="stylesheet" media="screen" />
<link href='//imgcache.qq.com/qcloud/app/resource/ac/favicon.ico' rel='icon' type='image/x-icon'/>
<style>
</style>

    <style type="text/css">
        span.buy-warn-tip{
        color: red;
        vertical-align: initial;
        margin-left: 0px;
    }
    </style>
</head>
<!--[if IE 8 ]> <body class="ie8 "> <![endif]-->
<!--[if gt IE 8]><!--> <body class=""> <!--<![endif]-->

    
    <!--[if lt IE 9]>
<link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/global-components.css?max_age=31536000" rel="stylesheet" media="screen"/>
<script src="//imgcache.qq.com/qcloud/main/scripts/release/common/libs/updateTips.js?max_age=31536000&v=20161118"></script>
<![endif]-->
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
                        <h2>核对信息</h2>
                    </div>
                    <div class="pay-head-step">
                        <ul>
                            <li class="first curr"><em>1</em><span>核对信息</span></li>
                            <li class=""><em>2</em><span>支付</span></li>
                            <li class=""><em>3</em><span>支付结果</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--head end-->

            <!--body start-->
            <div class="pay-body">
                <div id="check_container">
                
                    <div class="pay-table-panel">
                        <div class="shop-table-panel">
                            <div class="shop-table-fixed-head">
                                <table class="shop-table-box">
                                    <colgroup>
                                        <col style="width:140px;">
                                        <col style="width:275px;">
                                        <col style="width:100px">
                                        <col style="width:90px;">
                                        <col style="width:90px;">
                                    
                                        <col style="width:100px;">
                                        <col style="width:100px;">
                                        <col style="width:110px;">
                                        <col style="width:50px;">
                                    </colgroup>
                                    <thead>
                                    <tr tabindex="0">
                                        <th>
                                            <div class="first-txt">
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="产品名称">产品名称</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="配置信息">配置信息</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="单价">单价</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="数量">数量</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="付费方式">付费方式</span>
                                                </span>
                                            </div>
                                        </th>
                                    
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="购买时长">购买时长</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span class="text-overflow" title="优惠">优惠</span>
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    
                                                    <span class="text-overflow" title="费用">费用</span>
                                                    
                                                </span>
                                            </div>
                                        </th>
                                        <th>
                                            <div>
                                                <span class="shop-th-sort-btn">
                                                    <span></span>
                                                </span>
                                            </div>
                                        </th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>

                            <div class="shop-table-fixed-body">
                                <table class="shop-table-box shop-table-rowhover" id="orderTable">
                                    <colgroup>
                                        <col style="width:140px;">
                                        <col style="width:275px;">
                                        <col style="width:100px">
                                        <col style="width:90px;">
                                        <col style="width:90px;">
                                    
                                        <col style="width:100px;">
                                        <col style="width:100px;">
                                        <col style="width:110px;">
                                        <col style="width:50px;">
                                    </colgroup>
                                    <tbody>
                                
                                    
                                        <tr tabindex="0">
                                            <td>
                                                <div class="first-txt">
                                                
                                                    <span>新购云服务器</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-list-wrap">
                                            
                                                
                                                    <p >地域 : 成都</p>
                                                
                                                    <p >可用区 : 成都一区</p>
                                                
                                                    <p >机型 : 系列2、标准型1核CPU、1G内存</p>
                                                
                                                    <p >镜像 : Windows Server 2012 R2 数据中心版 64位中文版</p>
                                                
                                                    <p >存储 : 系统盘（50G高效云硬盘）</p>
                                                
                                                    <p >网络 : vpc-itg3uzwe|subnet-headxpe3</p>
                                                
                                                    <p >带宽 : 按带宽计费（带宽1Mbps）</p>
                                                
                                                    <p >名称 : windows-1GB-cd-7248</p>
                                                
                                            
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                
                                                    62.50元/月
                                                
                                                </div>
                                            </td>
                                            <td>
                                                <div>1</div>
                                            </td>
                                            <td>
                                                <div>
                                                
                                                    <span class="underline" data-tip="先购买再使用">预付费</span>
                                                
                                                </div>
                                            </td>

                                        

                                            <td>
                                                <div>
                                                
                                                    
                                                    1个月
                                                    
                                                
                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-list-wrap">
                                                
                                                    无
                                                
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                
                                                    
                                                    <div class="shop-td-cost">
                                                    
                                                        <p class="shop-td-price">
                                                            <em>62.50元</em>
                                                        
                                                        
                                                        </p>
                                                    
                                                    </div>
                                                
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    
                                
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>                
                    <div>                                           
                        <div class="pay-order-discounts J-pay-order-discounts">
    <ul class="discounts-list-wrap">
      <li class="item">
        <div class="J-vouchers-loading">
            <label class="text-gray coupon-item-loading">
                <i class="shop-loading-gray-icon"></i>加载中...
            </label>
        </div>
        <div class="discounts-vouchers-wrap J-vouchers-wrap" style="display:none;">
          <ul class="discounts-list-wrap J-vouchers-list-wrap">
          </ul>
        </div>
      </li>
    </ul>
  </div>
                    

                        <div class="pay-fixed-mod">
                            <div class="pay-submit-wrap check_pay_submit_wrap">
                                <div class="pay-submit">
                                    <div class="cost">
                                        <span class="tit">总计费用:</span>
                                        <span class="price" data-id="realTotalCost">
                                            <span class="unit-icon">¥</span>
                                            <em class="check_real_total_cost">62.50</em>
                                        </span>
                                    </div>
                                    <div class="pay-btn-wrap check_pay_btn_wrap">
                                        
                                        <a href="javascript:;" class="shop-btn weak check_pay_btn check_apply_agent_pay_btn" style="display:none" data-type="agentClientPayBtn" hotrep="new_pay.agent"  ><span></span>代理支付</a>
                                        <a href="javascript:;" class="shop-btn pay check_pay_btn check_self_pay_btn" style="display:none" data-type="agentClientPayBtn" hotrep="new_pay.self" ><span></span>自行支付</a>
                                        <a href="javascript:;" class="shop-btn pay check_pay_btn check_self_pay_btn"  data-type="generalUserPayBtn" hotrep="new_pay.confirm" ><span></span>
                                            
                                                确认购买
                                            
                                        </a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
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
   


   

</body>
</html>