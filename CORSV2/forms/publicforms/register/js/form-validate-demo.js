//以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级
$.validator.setDefaults({
    highlight: function (element) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    },
    success: function (element) {
        element.closest('.form-group').removeClass('has-error').addClass('has-success');
    },
    errorElement: "span",
    errorPlacement: function (error, element) {
        if (element.is(":radio") || element.is(":checkbox")) {
            error.appendTo(element.parent().parent().parent());
        } else {
            error.appendTo(element.parent());
        }
    },
    errorClass: "help-block m-b-none",
    validClass: "help-block m-b-none"


});


//手机号码验证  
jQuery.validator.addMethod("isMobile", function (value, element) {
    var length = value.length;
    var isPhone = /^([0-9]{3,4}-)?[0-9]{7,8}$/;
    var mobile = /^((\+?86)|(\(\+86\)))?(13[0-9]{9}|14[0-9]{9}|17[0-9]{9}|15[0-9]{9}|18[0-9]{9})$/;
    return this.optional(element) || (length == 11 && mobile.test(value) || isPhone.test(value));
}, "请正确填写手机号码");

//$.validator.setDefaults({
//    submitHandler: function () {
//        alert("提交事件!");
//    }
//});
//以下为官方示例
$().ready(function () {
    // validate the comment form when it is submitted
   // $("#signupForm").validate();

    // validate signup form on keyup and submit
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        onsubmit: true,// 是否在提交是验证
        rules: {
            firstname: "required",
            lastname: "required",
            username: {
                required: true,
                minlength: 2,
                remote: {
                    url: "?action=check_username",     //后台处理程序
                    dataType: "text",           //接受数据格式   
                    data: {                     //要传递的数据
                        username: function () {
                            return $("#username").val();
                        }
                    }
                    //success: function (response)
                    //{
                    //    //var errors = {};
                    //    //var message = (previous.message = response || validator.defaultMessage(element, "remote"));
                    //    //errors[element.name] = $.isFunction(message) ? message(value) : message;
                    //    //validator.showErrors(errors);
                    //    //alert(response);
                    //    //var valid = response === true || response === "true";//如果返回true，则会进入到if语句，错误提示消失  
                    //    //alert(valid);
                    //    //if (valid)
                    //    //{
                    //    //    alert("正确时888888怎样处理");
                    //    //   // $.validator.defaultMessage(element, "remote");
                    //    //}
                    //    //else
                    //    //{
                    //    //    alert("正确时6766rty怎样处理");


                    //    //}

                    //},
                    //error: function (response) {
                    //    alert("正确时怎trty样处理");

                    //}
                }

            //    remote: function (value, element, param) {
            //        if (this.optional(element)) {
            //            return "dependency-mismatch";
            //        }

            //        var previous = this.previousValue(element),
            //           validator, data;

            //        if (!this.settings.messages[element.name]) {
            //            this.settings.messages[element.name] = {};
            //        }
            //        previous.originalMessage = this.settings.messages[element.name].remote;
            //        this.settings.messages[element.name].remote = previous.message;

            //        param = typeof param === "string" && { url: param } || param;

            //        if (previous.old === value) {
            //            return previous.valid;
            //        }

            //        previous.old = value;
            //        validator = this;
            //        this.startRequest(element);
            //        $.ajax($.extend(true, {
            //            url: "?action=check_username",     //后台处理程序
            //            type: "post",               //数据发送方式
            //            dataType: "json",           //接受数据格式   
            //            data: {                     //要传递的数据
            //                username: function () {
            //                    return $("#username").val();
            //                }
            //            },
            //            success: function (response) {
            //                var valid = response === true || response === "true",
            //                   errors, message, submitted;

            //                validator.settings.messages[element.name].remote = previous.originalMessage;
            //                if (valid) {
            //                    submitted = validator.formSubmitted;
            //                    validator.prepareElement(element);
            //                    validator.formSubmitted = submitted;
            //                    validator.successList.push(element);
            //                    delete validator.invalid[element.name];
            //                    validator.showErrors();
            //                } else {
            //                    errors = {};
            //                    message = response || validator.defaultMessage(element, "remote");
            //                    errors[element.name] = previous.message = $.isFunction(message) ? message(value) : message;
            //                    validator.invalid[element.name] = true;
            //                    validator.showErrors(errors);
            //                }
            //                previous.valid = valid;
            //                validator.stopRequest(element, valid);
            //            }
            //        }, param));
            //        return "pending";
            //    }
            },
            password: {
                required: true,
                minlength: 5,
            },
            confirm_password: {
                required: true,
                minlength: 5,
                equalTo: "#password"
            },
            email: {
                required: true,
                email: true
            },
            tel: {
                required: true,
                tel: true
            },
            phone: {
                required: true,
                isMobile: true
            },
            topic: {
                required: "#newsletter:checked",
                minlength: 2
            },
            agree: "required"
        },
        messages: {
            firstname: icon + "请输入你的姓",
            lastname: icon + "请输入您的名字",
            username: {
                required: icon + "请输入您的用户名",
                minlength: icon + "用户名必须两个字符以上",
                remote: icon + "用户名已存在",
            },
            password: {
                required: icon + "请输入您的密码",
                minlength: icon + "密码必须5个字符以上"
            },
            confirm_password: {
                required: icon + "请再次输入密码",
                minlength: icon + "密码必须5个字符以上",
                equalTo: icon + "两次输入的密码不一致"
            },
            email: icon + "请输入您的E-mail",
            tel: icon + "请输入您的电话号码",
            phone: {
                required: "请输入您的电话号码",
                isMobile: "请正确填写手机号码"
            },
            agree: {
                required: icon + "必须同意协议后才能注册",
                element: '#agree-error'
            }
        },
        submitHandler: function (form) {
            if($("#getCode").attr("data-value")=="2")
            {
                alert("gg");
            }
            else
            {  //此处为表单验证通过后   才出发表单提交事件
                edit_info()
            }
          
        
        }
        //submitHandler: function(form) { //通过之后回调
        //    //进行ajax传值
        //$.ajax({
        //    url : "{:U('user/index')}",
        //    type : "post",
        //    dataType : "json",
        //    data: {
        //        user: $("#user").val(),
        //        password: $("#password").val() 
        //    },
        //    success : function(msg) {
        //        //要执行的代码
        //    }
        //});
        //}
    });

    // propose username by combining first- and lastname
    $("#username").focus(function () {
        var firstname = $("#firstname").val();
        var lastname = $("#lastname").val();
        if (firstname && lastname && !this.value) {
            this.value = firstname + "." + lastname;
        }
    });
});
