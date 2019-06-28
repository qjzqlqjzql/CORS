<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pay_order.aspx.cs" Inherits="CORSV2.forms.user.order.pay_order" %>

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
    <link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/global.css?max_age=2000002" rel="stylesheet" media="screen" />
    <link href="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/shopcart/css/shopcart.css?max_age=2000003" rel="stylesheet" media="screen" />
    <link href='//imgcache.qq.com/qcloud/app/resource/ac/favicon.ico' rel='icon' type='image/x-icon' />
    <script src="../../../js/jquery-1.10.2.min.js"></script>
    <link href="../../../themes/css/plugins/webuploader/webuploader.css" rel="stylesheet" />

    <style>
</style>

</head>
<body>
    <div class="qc-navigation qc-navigation-hover qc-navigation-mini" style="top: 0">
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
                        <div class="state-log-out" style="display: none" id="h_login">
                            <a href="javascript:;" class="text" id="h_login_btn">登录</a>
                            <a href="http://manage.qcloud.com/developerCenter/registUser.php" class="text btn-sign-up" id="h_login_regist"><span>注册</span></a>
                        </div>
                        <div class="state-log-in" style="display: none" id="h_logined">
                            <a href="https://console.qcloud.com" class="user-id"><span class="user-name"></span><i class="triangle-down"></i></a>
                            <!-- 退出浮层 -->
                            <div class="nav-down-style nav-down-style-1" style="display: none" id="h_loginout">
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
                            <li class=""><em>3</em><span>支付结果</span></li>
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
                                <em>腾讯云</em>
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


                        <li class="clearfix" style="height: auto;">
                            <label class="labelLeft"><span class="required"></span>上传支付订单收据（盖章）：</label>
                            <div class="labelRight">
                                <div id="secrecy_agreement_path_file" class="uploader-list">
                                    <img class="certify-img" src="">
                                </div>
                                <div class="filePicker" id="secrecy_agreement_path">选择图片</div>

                                <i class="errorTips errorZuzhi" hidden="true" style="display: none;">
                                    <span class="fa fa-warning"></span><em></em>
                                </i>

                                <i class="tipsFile">图片大小不要超过5M，支持PNG，JPG格式</i>
                                <br>
                            </div>
                        </li>

                    </div>

                    <div class="payment-mod">
                        <div class="payment-mod-tit clearfix">
                            <div class="payment-left payment-balance">
                                <label>
                                    <input type="checkbox" class="shop-checkbox pay_other_checkbox" checked="checked" disabled="disabled" />
                                    <span>使用其他支付方式</span>
                                    <span class="payment-icon-txt" id="commonTips">(在线支付支持以下4种支付渠道，点击“立即支付”后您可在新开页面选择其中任意一种渠道进行支付。)</span>
                                    <span class="payment-icon-txt" id="commonTips">交易限额说明</span>
                                    <i class="shop-plaint-icon" data-tip="<p style='width:300px;'>1. 腾讯云平台的交易限额：0.01-9999999元；</p><p style='width:300px;'>2. 微信支付/QQ钱包/网银会依据银行要求进行交易额度的限制，以保证您的资金安全。不同支付平台、不同银行、不同卡类型对应限额额度不同，具体额度请以您实际支付中的提示为准或<a target='_blank' href='https://cloud.tencent.com/document/product/555/7444#5.-.E7.94.A8.E5.BE.AE.E4.BF.A1.E6.94.AF.E4.BB.98.E3.80.81qq.E9.92.B1.E5.8C.85.E3.80.81.E8.B4.A2.E4.BB.98.E9.80.9A.E7.BB.99.E8.85.BE.E8.AE.AF.E4.BA.91.E8.B4.A6.E6.88.B7.E5.85.85.E5.80.BC.E6.97.B6.E6.9C.89.E9.99.90.E9.A2.9D.E5.90.97.EF.BC.9F'>参考文档</a>;</p><p style='width:300px;'>3. 大额交易建议您可使用线下汇款充值。</p>"></i>
                                </label>
                            </div>
                            <div class="payment-right payment-balance pay_other_show">
                                <div class="cost">
                                    <span class="tit">支付:</span>
                                    <span class="price">
                                        <span class="unit-icon">¥</span>
                                        <em class="pay_other_value" style="font-weight: bold;">62.50</em>

                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="shop-tab">
                            <div class="payment-icon-list">
                                <div class="payment-icon-list-inner">
                                    <ul>
                                        <li>
                                            <img src="https://mc.qcloudimg.com/static/img/31ff29aa7c86f41aa690617e796cc6ae/wx.png" alt=""></li>
                                        <li>
                                            <img src="https://mc.qcloudimg.com/static/img/bbbb0a8f787841a1fa779044b85b99e7/qq.png" alt=""></li>
                                        <li>
                                            <img src="https://mc.qcloudimg.com/static/img/017c58478b50aebdd36cc12ffbb35c35/visa.png" alt=""></li>
                                        <li>
                                            <img src="https://mc.qcloudimg.com/static/img/396c830c5565516f1c019cde90fee848/cup.png" alt=""></li>
                                    </ul>

                                    <div style="margin-top: 5px">
                                        <p class="payment-icon-txt" id="commonTips">使用国际信用卡支付时，请使用<span style="color: #ed711f; vertical-align: baseline;">中国大陆以外发行的国际信用卡。</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pay-submit-wrap step2">
                        <div class="pay-submit">
                            <div class="cost">
                            </div>
                            <a href="javascript:;" class="shop-btn pay" id="pay_pay_btn" hotrep="new_pay.pay"><span></span>立即支付</a>
                        </div>
                    </div>

                </div>
                <div id="iframeContainer" class="dialog-layer" style="display: none; z-index: 1000;">
                    <a class="close" title="关闭" href="javascript:;" id="iframeClose"><i>×</i></a>
                </div>
                <div class="shop-mask" id="iframeMask" style="display: none;"></div>
                <!--body end-->

            </div>
        </div>
    </div>

    <div class="qc-footer c-footer c-footer-short J-qc-footer" data-type="cn_zh">
        <textarea style="display: none" class="element-for-seo">  </textarea>

        <div class="c-footer-blogroll">
            <div class="c-footer-inner">
                <div class="c-hidden c-visible-xs mobile-part">
                    <div class="c-footer-select J-qcRegionSelector">
                        <a href="javascript:;" class="c-footer-select-trigger J-qcRegionTrigger"><i class="icon"></i><span class="J-qcFooterRegion">中国站</span></a>

                        <div class="c-footer-dropdown J-qcFooterRegionList">
                            <ul class="c-footer-dropdown-menu">
                                <li class="actived"><a href="javascript:;" class="J-qcRegionOption J-qcFooterSwitcher" data-region="cn_zh" hotrep="hp.footer.region.cn">中国站</a></li>
                                <li><a href="https://intl.cloud.tencent.com" class="J-qcRegionOption J-qcFooterSwitcher" data-region="intl" hotrep="hp.footer.region.intl">International</a></li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="c-footer-blogroll-extra">
                    <div class="c-footer-select J-qcRegionSelector">
                        <a href="javascript:;" class="c-footer-select-trigger J-qcRegionTrigger"><i class="icon"></i><span class="J-qcFooterRegion">中国站</span></a>

                        <div class="c-footer-dropdown J-qcFooterRegionList">
                            <ul class="c-footer-dropdown-menu">
                                <li class="actived"><a href="javascript:;" class="J-qcRegionOption J-qcFooterSwitcher" data-region="cn_zh" hotrep="hp.footer.region.cn">中国站</a></li>
                                <li><a href="https://intl.cloud.tencent.com" class="J-qcRegionOption J-qcFooterSwitcher" data-region="intl" hotrep="hp.footer.region.intl">International</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../../js/plugins/zoomify/zoomify.min.js"></script>
    <script src="../company/js/webuploader.js"></script>
    <link href="../../../js/plugins/webuploader/webuploader.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins/layer/skin/layer.css" rel="stylesheet" />
    <script>
        var BASE_URL = "/Public/Member/plugins/webuploader";
        var thumbnailWidth = 1000;
        var thumbnailHeight = 1000;
        var field = "";
        //上传按钮响应
        $("body").on("click", ".filePicker", function () {
            field = $(this).attr("id");
            uploader.option('formData',
                { "field": field }
            );

        });


        function initUploader() {
            return WebUploader.create({

                // 选完文件后，是否自动上传。
                auto: true,

                // swf文件路径
                swf: BASE_URL + '/js/Uploader.swf',

                // 文件接收服务端。
                server: '?action=AddData',

                // 选择文件的按钮。可选。
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                pick: '.filePicker',

                // 只允许选择图片文件。
                accept: {
                    title: 'Images',
                    extensions: 'gif,jpg,jpeg,bmp,png',
                    mimeTypes: 'image/jpg,image/jpeg,image/png'
                },
                formData: {
                    field: "test"
                },
                duplicate: true
            });
        }

        // 初始化Web Uploader
        var uploader = initUploader();

        // 当有文件添加进来的时候
        uploader.on('fileQueued', function (file) {

        });


        // 当文件开始上传之前做校验,文件大小不超过5M
        uploader.on('beforeFileQueued', function (file) {
            if (file.size > 5 * 1024 * 2014) {
                layer.msg("文件大小不能超过5M!");
                return false;
            }
        });

        // 文件上传过程中创建进度条实时显示。
        uploader.on('uploadProgress', function (file, percentage) {
            var $li = $('#' + file.id),
                $percent = $li.find('.progress span');

            // 避免重复创建
            if (!$percent.length) {
                $percent = $('<p class="progress"><span></span></p>')
                    .appendTo($li)
                    .find('span');
            }

            $percent.css('width', percentage * 100 + '%');
        });

        // 文件上传成功，给item添加成功class, 用样式标记上传成功。
        uploader.on('uploadSuccess', function (file) {
            var $li = $(
                    '<div id="' + file.id + '">' +
                    '<img class="certify-img">' +
    //                '<div class="info">' + file.name + '</div>' +
                    '</div>'
                ),
                $img = $li.find('img');


            // $list为容器jQuery实例,替换原来的图片
            $("#" + field + "_file").html($li);

            // 创建缩略图
            uploader.makeThumb(file, function (error, src) {
                if (error) {
                    $img.replaceWith('<span>不能预览</span>');
                    return;
                }

                $img.attr('src', src);
            }, thumbnailWidth, thumbnailHeight);

            $('img').zoomify();
            $('.centerBtnCompany').removeAttr("disabled");
        });

        // 文件上传失败，显示上传出错。
        uploader.on('uploadError', function (file) {
            var $li = $('#' + file.id),
                $error = $li.find('div.error');

            // 避免重复创建
            if (!$error.length) {
                $error = $('<div class="error"></div>').appendTo($li);
            }

            $error.text('上传失败');
        });

        // 完成上传完了，成功或者失败，先删除进度条。
        uploader.on('uploadComplete', function (file) {
            $('#' + file.id).find('.progress').remove();
        });

        ////上传结果反馈
        //uploader.on("uploadAccept", function (file, data) {
        //    if (data.code != "200") {
        //        layer.msg(data.msg);
        //        // 通过return false来告诉组件，此文件上传有错。
        //        return false;
        //    }
        //});
    </script>

</body>
</html>
