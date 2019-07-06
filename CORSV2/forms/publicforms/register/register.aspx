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
            <%--    <div style="float:inherit;text-align:center;">
            <h4><span data-content="用户注册" class="on">1</span><b></b><span data-content="注册成功">2</span></h4>
                     </div>--%>
            <form class="form-horizontal m-t" id="signupForm" method="post" action="">
                <div class="form-group">
                    <label class="col-sm-3 control-label">姓氏：</label>
                    <div class="col-sm-8">
                        <input id="firstname" name="firstname" class="form-control" type="text">
                        <span class="help-block m-b-none"><i class="fa fa-info-circle"></i></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">名字：</label>
                    <div class="col-sm-8">
                        <input id="lastname" name="lastname" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">用户名：</label>
                    <div class="col-sm-8">
                        <input id="username" name="username" class="form-control" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">密码：</label>
                    <div class="col-sm-8">
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">确认密码：</label>
                    <div class="col-sm-8">
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                        <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>请再次输入您的密码</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">手机号码：</label>
                    <div class="col-sm-8">
                        <input id="tel" name="phone" placeholder="请输入手机号码" class="form-control" />

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">E-mail：</label>
                    <div class="col-sm-4">
                        <input id="email" name="email" class="form-control" type="email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">图片验证码：</label>
                    <div class="col-sm-4">
                        <input id="imgCode" name="imgCode" placeholder="请输入图片验证码" class="form-control" />
                        <img src="" func="refreshCode" class="pic-code" />
                        <p class="error-msg"></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">手机验证码：</label>
                    <div class="col-sm-4">
                        <input name="verifyCode" maxlength="6" placeholder="请输入验证码" class="form-control" value="" />
                    </div>

                    <div class="col-sm-2" style="text-align: center">
                        <input id="getCode" type="submit" value="获取验证码" class="btn btn-primary" data-value="1" />
                    </div>

                    <p class="error-msg"></p>
                </div>

                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="checkbox" id="agree" name="agree">
                                我已经认真阅读并同意保密协议
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-sm-offset-3">
                    <label></label>
                    <input id="event_submit_do_regist" class="btn btn-primary form-control" type="submit" value="立即注册" name="event_submit_do_regist" />
                    <%--                        <input type="hidden" value="立即注册" name="event_submit_do_regist" />--%>
                </div>

            </form>
        </div>
    </div>
    <script src="../../../js/jquery-1.10.2.min.js"></script>
    <script src="../../../js/md5.js"></script>
    <script src="../../../js/jquery.min.js"></script>
    <script src="../../../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/content.js"></script>

    <%--    <script src="js/jquery.validate.min.js"></script>--%>
    <script src="js/jquery-validate.js"></script>
    <script src="js/messages_zh.min.js"></script>
    <script src="js/form-validate-demo.js"></script>
    <script src="js/stats.js"></script>
    <script src="../../../js/plugins/layer/layer.min.js"></script>
    <script src="../../../js/jquery.form.js"></script>
    <%--    <script src="js/jquery-validate.js"></script>--%>
    <script>
        $("#getCode").click(function () {
            //修改data-value 以便于提交是判断是获取验证码而不是提交表单
            $("#getCode").attr("data-value", "2");
        });
        $("#event_submit_do_regist").click(function () {
            //修改data-value 以便于提交是判断是获取验证码而不是提交表单
            $("#getCode").attr("data-value", "1");
        });
        //$("#event_submit_do_regist").click(function () {
        //    $("#signupForm").validate({
        //        submitHandler: function (form) {
        //            $(form).ajaxSubmit();
        //        }
        //    })
        //});
        //$("#event_submit_do_regist").click(function () {
        //    $("#signupForm").ajaxSubmit({
        //        url: "?action=register",
        //                type: "POST",
        //                success: function (result) {
        //                    var yyy = result;
        //                    alert(result);
        //                    if (result == "1") {

        //                        window.location.href = "../login/login.aspx";
        //                        alert('注册成功,将会跳转到登录界面');

        //                    }
        //                    if (result == "0") //failed! username is not exist 
        //                    {
        //                        layer.msg('用户名或密码错误！', function () {
        //                            //关闭后的操作
        //                        });
        //                        return false;
        //                    }
        //                }
        //    });
        //});
        //$("#event_submit_do_regist").click(function () {
        function edit_info() {

            $.ajax({
                url: "?action=register",
                data: $('#signupForm').serialize(),
                type: "POST",
                success: function (result) {
                    if (result == "1") {
                        window.location.href = "../login/login.aspx";
                        alert('注册成功,将会跳转到登录界面');
                    }
                    if (result == "0") //failed! username is not exist 
                    {
                        layer.msg('注册失败！', function () {
                            //关闭后的操作
                        });
                        return false;
                    }
                }
            });
        };
    </script>
</body>
</html>
