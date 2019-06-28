<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CORSV2.forms.publicforms.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>卫星导航定位基准服务平台 - 登录</title>
    <link rel="shortcut icon" href="../../../themes/images/favicon.ico" />
    <link href="../../../themes/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../themes/css/font-awesome.css?v=4.4.0" rel="stylesheet" />
    <link href="../../../themes/css/animate.css" rel="stylesheet" />
    <link href="../../../themes/css/style.css" rel="stylesheet" />
    <link href="../../../themes/css/login.css" rel="stylesheet" />
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ CORS ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>卫星导航定位基准服务平台</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i></li>
                    </ul>
                    <strong>还没有账号？ <a href="../Register/Register.aspx" style="color: yellow;">立即申请注册&raquo;</a></strong>
                </div>
            </div>
            <div class="col-sm-5">
                <form runat="server" id="form">
                    <h4 class="no-margins" style="color: black;">登录：</h4>
                    <p class="m-t-md" style="color: black;">登录到卫星导航定位基准服务平台</p>
                    <input type="text" class="form-control uname" id="UserName" placeholder="用户名" />
                    <input type="password" class="form-control pword m-b" id="PassWord" placeholder="密码" />
                    <a href="#">忘记密码？</a>
                    <input name="code" maxlength="6" placeholder="请输入验证码" data-content="请输入验证码" class="format-input code" tabindex="3" />
                    <img id="verifyCode" src="?action=getcode" class="code" />
                    <a id="refreshCode" class="fr code">刷新</a>
                    <button class="btn btn-success btn-block" type="button" id="buttonlogin">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy;  CORS
           
            </div>
        </div>
    </div>

</body>
<script src="../../../js/md5.js"></script>
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../../js/plugins/layer/layer.min.js"></script>

<script type="text/javascript">
    //刷新验证码
    $("#verifyCode").click(function () {
        refreshVerifyCode(); //刷新验证码
    });
    $("#refreshCode").click(function () {
        refreshVerifyCode(); //刷新验证码
    });

    refreshVerifyCode();
    //刷新验证码
    function refreshVerifyCode() {
        $("#verifyCode").attr("src", "?action=getcode&t=" + new Date().valueOf());
    }

    $("#buttonlogin").click(function () {
        var password = $("#PassWord").val();
        var username = $("#UserName").val();
        if (username.trim() == "") {
            layer.tips('请输入用户名', '#UserName', {
                tips: [3, '#a94442']
            });
            $("#UserName").focus();
            return;
        }
        else {
            if (password.trim() == "") {
                layer.tips('请输入密码', '#PassWord', {
                    tips: [3, '#a94442']
                });
                $("#PassWord").focus();
                return;
            }
            else {
                // verify password
                $.ajax({
                    url: "Login.aspx?action=login",
                    data: {
                        UserName: username,
                        PassWord: hex_md5(password)
                    },
                    type: "POST",
                    success: function (result) {
                        if (result == "1") {
                            window.location.href = "../../Index.aspx";
                        }
                        if (result == "0") //failed! username is not exist 
                        {

                            layer.msg('用户名或密码错误！', function () {
                                //关闭后的操作
                            });
                            return false;
                        }
                    }
                });
            }
        }
    })
</script>
</html>
