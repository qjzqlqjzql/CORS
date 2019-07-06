<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_order.aspx.cs" Inherits="CORSV2.forms.user.order.add_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta charset="utf-8" />
    <title>CORS服务选购</title>
    <script src="../../../js/jquery-1.10.2.min.js"></script>
    <script src="../../../js/jquery.form.js"></script>
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/shopcart.css" rel="stylesheet" />

</head>
<body class="" style="">
    <div class="qc-navigation qc-navigation-hover qc-navigation-mini" style="top: 0">
        <div class="navigation-inner ">
            <div class="logo">
                <h1>
                    <a href="//cloud.tencent.com/" class="logo-text" hotrep="menu.logo">
                        <i class="icon-logo"></i>
                        <!--<img src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home/qcloud-logo-mini.png">-->
                    </a>
                </h1>
            </div>

            <span class="topbar-pay-dropdown-stick"></span>
            <div class="topbar-pay-dropdown">
                <h2><a href="javascript:;"><span>选购其他云产品</span> <i class="ico ico-trangledown"></i></a></h2>

            </div>
        </div>
    </div>
<form  method="post" id="order_form"  enctype="multipart/form-data">
        <div class="body">
            <div class="shop-event" style="display: none" id="actArea">
            </div>

            <div class="mod-shop" id="appArea">
                <div data-reactid=".0">
                    <div class="shop-head-title" data-reactid=".0.0">
                        <div class="shop-head-mod clearfix" data-reactid=".0.0.0">
                            <h2 data-reactid=".0.0.0.0">云服务器 CVM</h2>
                            <div class="button-wrap" data-reactid=".0.0.0.1"><a href="javascript:;" data-hot="cvmbuy.orderhistory" class="shop-btn m weak" data-position="right" data-reactid=".0.0.0.1.0"><i class="shop-list-icon" data-reactid=".0.0.0.1.0.0"></i><span data-reactid=".0.0.0.1.0.1">购买记录</span></a></div>
                        </div>
                    </div>
                    <div class="shop-body" data-reactid=".0.1">
                        <div data-reactid=".0.1.0"></div>
                        <div class="shop-body-tab inner" data-reactid=".0.1.1">
                            <ul data-reactid=".0.1.1.0">
                                <li class="shop-body-tab-item activied" data-reactid=".0.1.1.0.1:$lite"><a href="javascript: void(0);" data-reactid=".0.1.1.0.1:$lite.0"><span data-reactid=".0.1.1.0.1:$lite.0.0">快速配置</span></a></li>
                                <li class="shop-body-tab-item" data-reactid=".0.1.1.0.1:$custom"><a href="javascript: void(0);" data-reactid=".0.1.1.0.1:$custom.0"><span data-reactid=".0.1.1.0.1:$custom.0.0">自定义配置</span></a></li>
                            </ul>
                            <span data-reactid=".0.1.1.1"></span>
                        </div>
                        <div class="shop-container cvm-compatible-v1" style="margin-top: 0;" data-reactid=".0.1.2">
                            <div style="display: ;" data-reactid=".0.1.2.0">

                                <ul class="shop-list">
                                    <li class="list">
                                        <label class="shop-list-tit">
                                            <span>地域</span>
                                        </label>
                                        <div class="shop-list-con">
                                            <div id="liteRegionList">
                                                <span class="my-region-area ui-block-control my-region-area1"><span class="ui-block-title" style="width: 101px;"><span>华南地区</span></span><span class="ui-block-title" style="width: 101px;"><span>华东地区</span></span><span class="ui-block-title" style="width: 101px;"><span>华北地区</span></span><span class="ui-block-title" style="width: 202px;"><span>西南地区</span></span><span class="ui-block-title" style="width: 303px;"><span>亚太东南</span></span></span>
                                                <div class="my-region-list shop-ui-block ui-block-auto my-region-list1">
                                                    <div class="shop-ui-block ui-block-auto" data-reactid=".0"><a href="javascript:void(0);" data-value="1" data-name="广州" class="b-item b-selected b-first" data-reactid=".0.0"><span class="text" data-reactid=".0.0.0">广州</span><span data-reactid=".0.0.1"></span></a><a href="javascript:void(0);" data-value="4" data-name="上海" class="b-item" data-reactid=".0.1"><span class="text" data-reactid=".0.1.0">上海</span><span data-reactid=".0.1.1"></span></a><a href="javascript:void(0);" data-value="8" data-name="北京" class="b-item" data-reactid=".0.2"><span class="text" data-reactid=".0.2.0">北京</span><span data-reactid=".0.2.1"></span></a><a href="javascript:void(0);" data-tip="成都节点可覆盖中国西南地区用户" data-value="16" data-name="成都" class="b-item" data-reactid=".0.3"><span class="text" data-reactid=".0.3.0">成都</span><span data-reactid=".0.3.1"></span></a><a href="javascript:void(0);" data-tip="重庆节点覆盖中国西南地区用户" data-value="19" data-name="重庆" class="b-item" data-reactid=".0.4"><span class="text" data-reactid=".0.4.0">重庆</span><span data-reactid=".0.4.1"></span></a><a href="javascript:void(0);" data-tip="香港节点覆盖东南亚地区用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="5" data-name="香港" class="b-item" data-reactid=".0.5"><span class="text" data-reactid=".0.5.0">香港</span><span data-reactid=".0.5.1"></span></a><a href="javascript:void(0);" data-tip="新加坡节点覆盖东南亚地区用户，带宽主要面向海外，大陆访问延时较高<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="9" data-name="新加坡" class="b-item" data-reactid=".0.6"><span class="text" data-reactid=".0.6.0">新加坡</span><span data-reactid=".0.6.1"></span></a><a href="javascript:void(0);" data-tip="曼谷节点覆盖亚太东南地区用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="23" data-name="曼谷" class="b-item b-last" data-reactid=".0.7"><span class="text" data-reactid=".0.7.0">曼谷</span><span data-reactid=".0.7.1"></span></a></div>
                                                </div>
                                                <span class="my-region-area ui-block-control ui-block-control-break my-region-area2"><span class="ui-block-title" style="width: 101px;"><span>亚太南部</span></span><span class="ui-block-title" style="width: 202px;"><span>亚太东北</span></span><span class="ui-block-title" style="width: 101px;"><span>美国西部</span></span><span class="ui-block-title" style="width: 101px;"><span>美国东部</span></span><span class="ui-block-title" style="width: 101px;"><span>北美地区</span></span><span class="ui-block-title" style="width: 202px;"><span>欧洲地区</span></span></span>
                                                <br class="my-region-br">
                                                <div class="my-region-list shop-ui-block ui-block-auto shop-ui-block-break my-region-list2">
                                                    <div class="shop-ui-block ui-block-auto" data-reactid=".1"><a href="javascript:void(0);" data-tip="孟买节点覆盖亚太南部用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="21" data-name="孟买" class="b-item b-first" data-reactid=".1.0"><span class="text" data-reactid=".1.0.0">孟买</span><span data-reactid=".1.0.1"></span></a><a href="javascript:void(0);" data-tip="首尔节点覆盖东北亚用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="18" data-name="首尔" class="b-item" data-reactid=".1.1"><span class="text" data-reactid=".1.1.0">首尔</span><span data-reactid=".1.1.1"></span></a><a href="javascript:void(0);" data-tip="东京节点覆盖东北亚用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="25" data-name="东京" class="b-item" data-reactid=".1.2"><span class="text" data-reactid=".1.2.0">东京</span><span data-reactid=".1.2.1"></span></a><a href="javascript:void(0);" data-tip="硅谷节点覆盖美国西部用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="15" data-name="硅谷" class="b-item" data-reactid=".1.3"><span class="text" data-reactid=".1.3.0">硅谷</span><span data-reactid=".1.3.1"></span></a><a href="javascript:void(0);" data-tip="弗吉尼亚节点覆盖美国东部用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="22" data-name="弗吉尼亚" class="b-item" data-reactid=".1.4"><span class="text" data-reactid=".1.4.0">弗吉尼亚</span><span data-reactid=".1.4.1"></span></a><a href="javascript:void(0);" data-tip="多伦多节点覆盖北美地区用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="6" data-name="多伦多" class="b-item" data-reactid=".1.5"><span class="text" data-reactid=".1.5.0">多伦多</span><span data-reactid=".1.5.1"></span></a><a href="javascript:void(0);" data-tip="法兰克福节点覆盖欧洲地区用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="17" data-name="法兰克福" class="b-item" data-reactid=".1.6"><span class="text" data-reactid=".1.6.0">法兰克福</span><span data-reactid=".1.6.1"></span></a><a href="javascript:void(0);" data-tip="莫斯科节点覆盖欧洲地区用户，带宽主要面向海外，大陆访问延时较高。<br>注意：该地域的云服务器重装时不支持Linux和Windows系统互换" data-value="24" data-name="莫斯科" class="b-item b-last" data-reactid=".1.7"><span class="text" data-reactid=".1.7.0">莫斯科</span><span data-reactid=".1.7.1"></span></a></div>
                                                </div>
                                            </div>
                                            <p class="shop-tip-word" id="">处在不同地域的云产品内网不通，购买后不能更换。建议选择靠近您客户的地域，以降低访问延迟、提高下载速度</p>
                                        </div>
                                    </li>
                                    <li class="list">
                                        <label class="shop-list-tit">
                                            <span>服务类型</span>
                                        </label>
                                        <div class="shop-list-con">
                                            <div id="liteDeviceList">
                                                <ul class="shop-checkblock" data-reactid=".2">
                                                    <li>
                                                        <label id="m_service_label" class="shop-checkblock-item" data-value="dm" style="border-color: rgb(0, 121, 219);">
                                                            <h3 class="shop-checkblock-item-title">提供亚米级服务</h3>
                                                            <p class="shop-checkblock-item-desc">适用于估计坐标</p>
                                                            <input id="m_service" type="radio" name="demo-product" value="" checked="" class="shop-checkblock-item-radio" /></label></li>
                                                    <li>
                                                        <label id="cm_service_label" class="shop-checkblock-item" data-value="cm" style="border-color: #d8d2d2;">
                                                            <h3 class="shop-checkblock-item-title">提供厘米级服务</h3>
                                                            <p class="shop-checkblock-item-desc">适用于平时作业</p>
                                                            <input id="cm_service" type="radio" name="demo-product" value="" class="shop-checkblock-item-radio" /></label></li>
                                                    <li>
                                                        <label id="mm_service-label" class="shop-checkblock-item" data-value="mm">
                                                            <h3 class="shop-checkblock-item-title">提供毫米级服务</h3>
                                                            <p class="shop-checkblock-item-desc">适用于精密定位</p>
                                                            <input id="mm_service" type="radio" name="demo-product" value="" class="shop-checkblock-item-radio" /></label></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list" style="display: none;">
                                        <label class="shop-list-tit">
                                            <span></span>
                                        </label>
                                        <div class="shop-list-con" id="liteMarketImageList"></div>
                                    </li>
                                    <li class="list" style="">
                                        <label class="shop-list-tit">
                                            <span>增值服务</span>
                                        </label>
                                        <div class="shop-list-con" id="liteSystemImageList">
                                            <ul class="shop-os-list shop-os-list-4" data-reactid=".1">
                                                <li class="shop-os-item-box"  data-name="坐标转换" data-reactid=".1.0">
                                                    <div class="shop-os-item" data-value="CoorTransEnable" id="coor_tran" style="border-color:rgb(219, 219, 219);">
                                                        <div class="shop-os-logo" data-reactid=".1.2.0.0">
                                                            <img src="../../../themes/icon/坐标转换.png" alt="" data-reactid=".1.0.0.0.0">
                                                        </div>
                                                        <div class="shop-os-con" data-reactid=".1.0.0.1">
                                                            <h3 class="shop-os-tit" data-reactid=".1.0.0.1.0">坐标转换</h3>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="shop-os-item-box" data-value="1" data-name="高程转换 " data-reactid=".1.1">
                                                    <div class="shop-os-item" data-value="HeightTransEnable" id="height_tran" style="border-color:rgb(219, 219, 219);">
                                                        <div class="shop-os-logo" data-reactid=".1.1.0.0">
                                                            <img src="../../../themes/icon/高程转换.png" alt="" data-reactid=".1.1.0.0.0">
                                                        </div>
                                                        <div class="shop-os-con" data-reactid=".1.1.0.1">
                                                            <h3 class="shop-os-tit" data-reactid=".1.1.0.1.0">高程转换  </h3>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="shop-os-item-box" data-value="2" data-name="SHP文件转换" data-reactid=".1.2">
                                                    <div class="shop-os-item" data-value="SHPTransEnable" id="picture_tran" style="border-color:rgb(219, 219, 219);">
                                                        <div class="shop-os-logo" data-reactid=".1.2.0.0">
                                                            <img src="../../../themes/icon/图件转换.png" alt="" data-reactid=".1.2.0.0.0">
                                                        </div>
                                                        <div class="shop-os-con" data-reactid=".1.2.0.1">
                                                            <h3 class="shop-os-tit" data-reactid=".1.2.0.1.0">SHP文件转换</h3>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="shop-os-item-box" data-value="3" data-name="观测文件质量检查" data-reactid=".1.3" >
                                                    <div class="shop-os-item" data-value="ObsQualityEnable"  data-reactid=".1.3.0" style="border-color:rgb(219, 219, 219);">
                                                        <div class="shop-os-logo" data-reactid=".1.3.0.0">
                                                            <img src="../../../themes/icon/质量检查.png" alt="" data-reactid=".1.3.0.0.0">
                                                        </div>
                                                        <div class="shop-os-con" data-reactid=".1.3.0.1">
                                                            <h3 class="shop-os-tit" data-reactid=".1.3.0.1.0">观测文件质量检查</h3>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                    </li>
                                </ul>
                                <div class="slice"></div>
                                <ul class="shop-list">
                                    <li class="list">
                                        <label class="shop-list-tit">
                                            <span>购买数量</span>
                                        </label>
                                        <div class="shop-list-con">
                                            <div class="shop-ui-block" id="liteGoodsNum">
                                                <div class="shop-input-num " data-reactid=".4">
                                                    <span class="shop-input-num-inner" data-reactid=".4.0">
                                                        <input type="text" class="num" value="1" id="apply_num" />
                                                        <span class="plus" data-opt="add" id="apply_add">
                                                            <i class="shop-num-plus-icon" data-reactid=".4.0.1.0"></i>
                                                        </span>
                                                        <span class="minus" data-opt="sub" id="apply_sub">
                                                            <i class="shop-num-minus-icon" data-reactid=".4.0.2.0"></i>
                                                        </span>
                                                    </span>
                                                    <span class="shop-tip-word">台</span>
                                                    <span class="shop-tip-word" style="display: none;" data-reactid=".4.2"></span>
                                                </div>
                                            </div>
                                            <p class="shop-tip-word err-style" id="liteGoodsNumTip" style="display: none"></p>
                                        </div>
                                    </li>
                                    <li class="list">
                                        <label class="shop-list-tit">
                                            <span>购买时长</span>
                                        </label>
                                        <div class="shop-list-con">
                                            <div class="shop-ui-block" id="liteDuration">
                                                <div class="shop-ui-block ui-block-70" data-reactid=".3">
                                                    <a href="javascript:void(0);" data-value="1" data-name="1" class="b-item" data-reactid=".3.0" style="background: rgb(215, 230, 248)">
                                                        <span class="text">1个月</span><span data-reactid=".3.0.1"></span>
                                                    </a>
                                                    <a href="javascript:void(0);" data-value="3" data-name="3" class="b-item" data-reactid=".3.2">
                                                        <span class="text">3个月</span><span data-reactid=".3.2.1"></span>
                                                    </a>
                                                    <a href="javascript:void(0);" data-value="6" data-name="半年" class="b-item" data-reactid=".3.3">
                                                        <span class="text">半年</span>
                                                    </a>
                                                    <a href="javascript:void(0);" data-value="12" data-name="1年" class="b-item" data-reactid=".3.4">
                                                        <span class="text">1年</span>                                                                                                                                                                                                                                                                     </a>
                                                </div>
                                            </div>
                                            <span class="shop-tip-word">
                                                <a href="javascript:;" id="liteDurationChange">其他时长
                                                </a>
                                            </span>

                                        </div>
                                    </li>
                                </ul>
                                <div class="shop-submit-wrap fixed" id="litePriceWrap">
                                    <div class="shop-submit">
                                        <div class="cost">
                                            <div class="tit">费用:</div>
                                            <div class="price lite-total-price">
                                                <div class="price-control"><em>79.50</em><span class="unit-txt">元</span></div>
                                            </div>
                                        </div>
                                        <a href="javascript:;" class="shop-btn pay" id="liteBuySubmit" data-hot="cvmbuy.lite.confirmbuy">立即购买</a>
                                        <span class="submit-tips" id="liteBuySubmitErrorTip" style="font-size: 12px; display: none;"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <span data-reactid=".0.2"></span>
                </div>
            </div>
        </div>
    </form>
    <script>
        //传到后台的订单时间
        var time = 1;
        var servertype = "dm";
        var otherserver = new Array();
        $(".shop-checkblock-item").click(function () {
            $(".shop-checkblock-item").css({ "border-color": "rgb(216, 210, 210)" });
            $(this).css({ "border-color": "rgb(0, 121, 219)" });
            servertype = $(this).attr("data-value");
        });
        $(".shop-os-item").click(function () {
            if ($(this).css("border-color") == "rgb(219, 219, 219)") {
                $(this).css({ "border-color": "rgb(0, 121, 219)" });

            }
            else {
                $(this).css({ "border-color": "rgb(219, 219, 219)" });
            }
        })
        $(".b-item").click(function () {
            time = $(this).attr("data-value");
            $(".b-item").css({ "backgroundColor": "rgb(255, 255 ,255)" });
            $(this).css({ "backgroundColor": "rgb(215, 230, 248)" });
        })
    </script>
    <script>
        //申请账号个数
        var apply_num;
        $('#apply_add').click(function () {
            if ($('#apply_num').val() != "10") {
                apply_num = Number($('#apply_num').val()) + 1;
                $('#apply_num').val(apply_num);
            }
        })
        $('#apply_sub').click(function () {
            if ($('#apply_num').val() != "1") {
                apply_num = Number($('#apply_num').val()) - 1;
                $('#apply_num').val(apply_num);
            }
        })

    </script>
    <script>
        $('#liteBuySubmit').click(function () {
           
            $('.shop-os-item').each(function (key, value) {
                if ($(this).css("border-color")== "rgb(0, 121, 219)")
                {
                    otherserver.push($(this).attr("data-value"));      //如果是其他标签 用 html();
                }
            });
            $('#order_form').ajaxSubmit({
                type: 'POST',
                url: "?action=order",
                data: {
                    time: time,
                    servertype: servertype,
                    applynum:apply_num,
                    otherserver: otherserver.join(',')//转换成字符串
                },
                traditional: true,//防止深度序列化
                success: function (data) {
                    if (data.code == 200) {                        
                        return false;
                    }
                    if(data.length>5)
                    {
                        window.location.href = "check_order.aspx?order_number="+data;
                    }
                },
            });
        });
    </script>
</body>
</html>
