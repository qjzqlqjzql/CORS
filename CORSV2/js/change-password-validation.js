/* 增加自定义规则, 不等于某个字段*/
$.validator.addMethod("notEqualTo", function (value, element, param)
{
    var target = $(param);
    if (value) return value != target.val();
    else return this.optional(element);
}, "Does not match");

/* 增加自定义规则, 不等于某个字段*/
$.validator.addMethod("isPwd", function (value, element, param)
{
    var result= !/\d/.test( value ) ? false :
        /[a-z|A-Z]/.test( value );

    return this.optional(element) || result;

}, "Does not match");

var PasswordValidation = function () {

    var handleValidation1 = function() {
        // for more info visit the official plugin documentation: 
            // http://docs.jquery.com/Plugins/Validation

            var form1 = $('#change_password_form');
            var error1 = $('.alert-danger', form1);
            var success1 = $('.alert-success', form1);

            form1.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                onfocusout: function(element){
                    $(element).valid();
                },
                ignore: "",
                rules: {
                    name: {
                        minlength: 2,
                        required: true
                    },
                    old_password: {
                        required: true,
                        remote:{//验证原始密码是否存在
                            type:"POST",
                            dataType: "json",
                            url:"index.php?s=/Member/Account/checkOldPassword.html",             //servlet
                            data:{
                                old_password:function(){
                                    return $("#old_password").val();
                                }
                            }
                        }
                    },
                    new_password: {
                        required: true,
                        rangelength:[8,16],
                        notEqualTo:"#old_password",
                        isPwd:true
                    },
                    confirm_password: {
                        required: true,
                        equalTo: "#new_password",
                        notEqualTo:"#old_password"
                    }
                },
                messages: {
                    old_password: {
                        required:"请输入原始密码",
                        remote:"原始密码有误!"
                    },
                    new_password: {
                        required: "请输入新密码",
                        rangelength: "密码长度必须在8-16个字符",
                        isPwd:"必须同时包含数字和字母",
                        notEqualTo: "不能与旧密码一致",
                    },
                    confirm_password: {
                        required: "请输入密码",
                        minlength: "密码长度不能小于8 个字母",
                        equalTo: "两次密码输入不一致",
                        notEqualTo: "不能与旧密码一致",
                    }
                },

                invalidHandler: function (event, validator) { //display error alert on form submit              
                    success1.hide();
                    error1.show();
                    App.scrollTo(error1, -200);
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label
                        .closest('.form-group').removeClass('has-error'); // set success class to the control group
                },

                submitHandler: function (form) {
                    var sms_code=$("#sms_code").val();
                    if(!sms_code || sms_code.length<6){
                        layer.msg('短信验证码格式不对!');
                        $("#sms_code").focus();
                        return false;
                    }
                    var old_password=$("#old_password").val();
                    var new_password=$("#new_password").val();
                    var confirm_password=$("#confirm_password").val();

                    //异步修改密码
                    $.ajax({
                        type: 'POST',
                        url: "index.php?s=/Member/Account/changePasswordDo.html",
                        data: {
                            "old_password":old_password,
                            "new_password":new_password,
                            "confirm_password":confirm_password,
                            "sms_code":sms_code
                        },
                        success: function(data){
                            if(data.code==200){
                                layer.msg('密码修改成功,即将重新登陆...');
                                window.setTimeout("window.location='index.php?s=/Home/Member/logOut.html';", 3000 );
                            }else{
                                layer.msg(data.msg);
                                return false;
                            }
                        },
                        dataType: "json"
                    });

                }
            });

    }

    return {
        //main function to initiate the module
        init: function () {
            handleValidation1();
        }

    };

}();