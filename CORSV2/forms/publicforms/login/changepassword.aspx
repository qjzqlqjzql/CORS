<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="CORSV2.forms.publicforms.login.changepassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>问北位置-控制台</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320">
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="../../../themes/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../../themes/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../themes/css/uniform.default.css" rel="stylesheet" />
    <link href="../../../themes/css/select2_metro.css" rel="stylesheet" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <link href="../../../themes/css/jquery.gritter.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="../../../themes/css/style-metronic.css" rel="stylesheet" />
    <link href="../../../themes/css/style.css" rel="stylesheet" />
    <link href="../../../themes/css/style-responsive.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins.css" rel="stylesheet" />
    <link href="../../../themes/css/light.css" rel="stylesheet" />
    <link href="../../../themes/css/custom.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins/layer/skin/layer.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins/layer/skin/layer.ext.css" rel="stylesheet" />
    <script src="../../../js/jquery-1.10.2.min.js"></script>
    <link href="../../../themes/css/plugins/dataTables/DT_bootstrap.css" rel="stylesheet" />
    <link href="../../../themes/css/plugins/webuploader/webuploader.css" rel="stylesheet" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />  
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">

<div id="body_loading" class="dataTables_processing" style="z-index: 999999;">
    <i class="fa fa-coffee"></i>&nbsp;请稍等,正在努力加载中...
</div>

<div class="modal fade" id="ajax_modal" role="basic" aria-hidden="true">
    <img src="/Public/Member/img/ajax-modal-loading.gif" alt="" class="loading">
</div>

<div class="clearfix"></div>
    <link href="../../../themes/css/ucenter.css" rel="stylesheet" />
    <link href="../../../themes/css/user_progress.css" rel="stylesheet" />
<!-- BEGIN CONTAINER -->
<div class="page-container">
	
	
	

	<!-- BEGIN PAGE -->
	<div class="page-content">

		<!-- BEGIN PAGE HEADER-->
		<div class="row">
			<div class="col-md-12">
				<!-- BEGIN PAGE TITLE & BREADCRUMB-->
				<ul class="page-breadcrumb breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="#">控制台</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li><a href="#">修改密码</a></li>
				</ul>
				<!-- END PAGE TITLE & BREADCRUMB-->
			</div>
		</div>
		<!-- END PAGE HEADER-->
		<!-- BEGIN DASHBOARD STATS -->
		<div class="row">
			<div class="col-md-12" style="text-align: center">
				<h2 style="font-weight: 700">修改密码</h2>
			</div>

			<div class="col-md-12">
				<div class="progress"><span data-content="验证原始密码" class="on">1</span><b></b><span data-content="修改成功">2</span></div>
			</div>


			<form action="#" id="change_password_form" class="form-horizontal">
				<div class="form-body">
					<div class="alert alert-danger display-hide"  style="display:none;">
						<button class="close" data-close="alert"></button>
						出错啦，请检查表单内容！
					</div>
					<div class="alert alert-success display-hide" style="display:none;">
						<button class="close" data-close="alert"></button>
						提交成功！
					</div>
					<div class="form-group">
						<label class="control-label col-md-5">用户名</label>
						<div class="col-md-6">
							<p class="form-control-static">qjzql</p>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-5">手机号码</label>
						<div class="col-md-6">
							<p class="form-control-static">134****5421</p>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-5"><span class="required">*</span>原始密码</label>
						<div class="col-md-6">
							<input id="old_password" name="old_password" style="width: 40%;" type="password" class="form-control" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-5"><span class="required">*</span>新建密码</label>
						<div class="col-md-6">
							<input id="new_password" name="new_password" style="width: 40%;" type="password" class="form-control" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-5"><span class="required">*</span>确认密码</label>
						<div class="col-md-6">
							<input id="confirm_password" name="confirm_password" style="width: 40%;" type="password" class="form-control" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-5"><span class="required">*</span>手机验证码</label>
						<div class="col-md-6">
							<input name="sms_code" id="sms_code" type="text" class="form-control" style="width: 150px;float: left;margin-right: 10px;"/>
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" id="getCode">获取验证码</button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-actions fluid">
					<div class="col-md-offset-5 col-md-7">
						<button type="submit" class="btn green">提交</button>
						<button type="button" class="btn red">取消</button>
					</div>
				</div>
			</form>
		</div>
		<!-- END DASHBOARD STATS -->
		<div class="clearfix"></div>
	</div>
	<!-- END PAGE -->
</div>
    <script src="../../../js/plugins/jquery-validate/jquery.validate.min.js"></script>
    <script src="../../../js/change-password-validation.js"></script>
    <script src="../../../js/plugins/layer/layer.js"></script>
    <link href="../../../js/plugins/layer/skin/layer.css" rel="stylesheet" />
<script>
    $(document).ready(function () {
        PasswordValidation.init();
        left_num = 120;
        $('body').on('click', '#getCode', function () {
            //检查其他字段是否检测完毕
            var is_other_pass = $("#change_password_form").valid();
            //
            if (is_other_pass) {
                $.ajax({
                    type: 'POST',
                    url: "/index.php?s=/Member/Account/sendChangePasswordPhoneSms.html",
                    data: {},
                    success: function (data) {
                        if (data.hasError) {
                            layer.msg('验证码短信发送失败,请重试!');
                        } else {
                            layer.msg('验证码短信发送成功!');
                            left_num = 120;
                            //开始倒计时...
                            $("#getCode").attr("disabled", true);
                            window.setTimeout(ctimer, 1e3);
                        }
                    },
                    dataType: "json"
                });
            }
        });
        //短信验证码倒计时
        function ctimer() {
            left_num--;
            if (left_num < 0) {
                $("#getCode").attr("disabled", false);
                $("#getCode").text("获取验证码");
            } else {
                $("#getCode").text(left_num + "秒后重发");
                window.setTimeout(ctimer, 1e3);
            }
        }
    });
</script>

        <script src="../../../js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../../../js/bootstrap.js"></script>
    <script src="../../../js/twitter-bootstrap-hover-dropdown.min.js"></script>
    <script src="../../../js/jquery.slimscroll.min.js"></script>
    <script src="../../../js/jquery.cookie.min.js"></script>
    <script src="../../../js/jquery.uniform.min.js"></script>
    <script src="../../../js/jquery.form.js"></script>
    <script src="../../../js/select2_pinyin.js"></script>
    <script src="../../../js/select2.min.js"></script>
    <script src="../../../js/plugins/boostrap-datetimepicker/moment.min.js"></script>
    <script src="../../../js/plugins/boostrap-datetimepicker/daterangepicker.js"></script>
    <script src="../../../js/plugins/layer/layer.js"></script>
    <script src="../../../js/plugins/layer/layer.ext.js"></script>

<!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="../../../js/app.js"></script>
    <script src="../../../js/jquery.dataTables.js"></script>
    <script src="../../../js/plugins/dataTables/DT_bootstrap.js"></script>
    <script src="../../../js/plugins/webuploader/webuploader.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        App.init(); // initlayout and core plugins
    });
</script>
<script>
    //每次关闭ajax_model时, 要清除内容
    $("#ajax_modal").on("hide.bs.modal", function () {
        $(this).removeData();
        $(this).html('<img src="/Public/Member/img/ajax-modal-loading.gif" alt="" class="loading">');
    }
	);
</script>
<script>
    $(".select2-select").select2();
</script>
<script>
    window.onload = function () {
        //do something
        $("#body_loading").hide();
    }
    //生成url
    function getUrl(url, params) {
        if (!params) {
            return url;
        }
        var urlmodel = '3';
        var connectstring = "&";
        if (urlmodel == '0') {
            connectstring = "&";
        } else if (urlmodel == '1') {
            connectstring = "?";
        } else if (urlmodel == '2') {
            connectstring = "?";
        } else {
            connectstring = "&";
        }
        url += connectstring;
        for (var key in params) {
            url += key + "=" + params[key] + "&";
        }
        return url;
    }
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
