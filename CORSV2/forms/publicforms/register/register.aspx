<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="CORSV2.forms.publicforms.register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="shortcut icon" href="../../../themes/images/favicon.ico" />
    <link href="../../../themes/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../themes/css/font-awesome.css?v=4.4.0" rel="stylesheet" />
    <link href="../../../themes/css/animate.css" rel="stylesheet" />
    <link href="../../../themes/css/style.css" rel="stylesheet" />
    <link href="../../../themes/css/login.css" rel="stylesheet" />
    <link href="../../../themes/css/global-new.css" rel="stylesheet" />
    <link href="../../../themes/css/header.css" rel="stylesheet" />
    <link href="../../../themes/css/init.css" rel="stylesheet" />
    <link href="../../../themes/css/page.css" rel="stylesheet" />
    <link href="../../../themes/css/img-sprites-shop.css" rel="stylesheet" />
    <link href="../../../themes/css/slick.css" rel="stylesheet" />
</head>
<body>
    <div class="layout-content reg-container">
        <div class="content-container">
            <h3>用户账号注册</h3>
            <h4><span data-content="用户注册" class="on">1</span><b></b><span data-content="注册成功">2</span></h4>
            <form class="form-control" method="post">
                <input name='_csrf_token' type='hidden' value='PEcoVtxnFLFRyKH8w70Aw4'>
                <input type="hidden" name="action" value="regist_action" />

                <div class="p-row">
                    <label>用户类型：</label>
                    常规用户
                    <input style="width: initial;" type="radio" checked="checked" name="user_group_id" value="1">
                    &nbsp;&nbsp;&nbsp;&nbsp;
        开发者用户
                    <input style="width: initial;" type="radio" disabled name="user_group_id" value="2">
                    <span class="important">*</span>
                    <p class="error-msg"></p>
                </div>

                <div class="p-row ">
                    <label>用户名：</label><input role="username" placeholder="4-14位字母，或字母和数字组合，设置后不能修改" data-content="4-14位字母，或字母和数字组合，设置后不能修改" class="format-input" name="username" value="">
                    <span class="important">*</span>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row  ">
                    <label>登录密码：</label><input type="password" role="pwd" placeholder="8-16位数字和字母组合，字母区分大小写" data-content="登录密码为8-16位数字和字母组合，字母区分大小写" class="format-input" name="password" value="">
                    <span class="important">*</span>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row  ">
                    <label>再次输入密码：</label><input type="password" role="checkpwd" placeholder="8-16位数字和字母组合，字母区分大小写" data-content="请再次输入密码" class="format-input" name="password2" value="">
                    <span class="important">*</span>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row ">
                    <label>手机号码：</label><input role="phone" placeholder="请输入手机号码" data-content="请输入正确的手机" class="format-input" name="phone" value="">
                    <span class="important">*</span>
                    <p class="alert">手机支持中国大陆地区+86号码</p>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row ">
                    <label>邮箱：</label><input role="email" placeholder="请输入邮箱" data-content="请输入正确的邮箱" class="format-input" name="email" value="">
                    <span class="important">*</span>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row img-code ">
                    <label>图片验证码：</label><input role="imgCode" name="imgCode" placeholder="请输入图片验证码" data-content="请输入正确的图片验证码" class="format-input pic-input"><img src="/index.php?s=/Home/Member/verify.html" func="refreshCode" class="pic-code">
                    <p class="error-msg"></p>
                </div>
                <div class="p-row ">
                    <label>手机验证码：</label><input role="verifyCode" name="verifyCode" maxlength="6" placeholder="请输入验证码" data-content="验证码错误" class="format-input code" value="">
                    <div class="btn btn-default size-form code" id="getCode">获取验证码</div>
                    <p class="error-msg"></p>
                </div>
                <div class="p-row is-protocol">
                    <label></label>
                    <input type="checkbox" name="agreeProtocol" checked>我同意并接受<a target="_blank" href="/index.php?s=/Home/About/registrationAgreement.html">《问北位置注册服务协议》</a>
                </div>
                <div class="p-row">
                    <label></label>
                    <input class="btn btn-primary btn-disabled" disabled="disabled" func="submit" type="submit" value="立即注册" name="event_submit_do_regist" />
                    <input type="hidden" value="立即注册" name="event_submit_do_regist" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
<script src="../../../js/md5.js"></script>
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../../js/plugins/layer/layer.min.js"></script>
<script src="../../../js/app-new.js"></script>
<script src="../../../js/reg.js"></script>
