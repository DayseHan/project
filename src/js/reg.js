jQuery(function($){
     $('#footer').load('../html/footer.html .footer0',foot);
    var $username = $('#username');
    var $password = $('#password');
    var $password2 = $('#password2');
    var $code_input = $('#code_input');
    var $yzm2 = $('#yzm2');
    var $yzm2_btn = $('#yzm2_btn');
    var $reg = $('.reg');
    var res;
    var verifyCode = new GVerify("v_container");
    var code = parseInt(Math.random()*900000 + 100000);

    $code_input.blur(function(){
        res = verifyCode.validate($code_input.val());
    });

    $yzm2_btn.on('click',function(){
        if(!res){
            alert("图形验证码错误");
            return;
        }
        var username = $username.val();
        console.log(code);
        var username = $username.val();
        var reg = /^1[34578]\d{9}$/i;
        if(reg.test(username)){
            // alert('用户名格式正确');
            $.ajax({
                type: "post",
                url: '../api/php/user2.php',
                data:{
                    type:'check',
                    username:username
                },
                success: function (data) {
                    if(data){
                        alert('该手机已注册可直接登陆');
                        window.location.href = ('../html/login.html');
                    }else{
                        // $reg.attr('disabled',false);
                        $.ajax({
                            type:'post',
                            url: 'https://api.miaodiyun.com/20150822/industrySMS/sendSMS',
                            data:{
                                accountSid:'4c913ce1b3894f1b85f13414a345da00',
                                to:username,
                              sig:'11afbe4501b04eaf8bbf6f2dff401cfd',
                              timestamp:'1512798254',
                              smsContent:`【迎客栈】尊敬的用户，您的验证码为:${code}，若非本人操作请忽略此短信。`
                            },
                            success:function(data){
                                alert('验证码已发至您的手机，请注意查收');
                            }
                        })
                    }
                }
            });
        }else if(username != ''){
            alert('手机号码格式有误')
        }
    });

    $reg.on('click',function(){
        var username = $username.val();
        var password = $password.val();
        var password2 = $password2.val();

        if(!/^[^\s]{1,19}$/.test(password)){
            alert('你输入的密码不符合要求');
            return false;
        }

        if(password!=password2){
            alert('两次输入的密码不一致');
            return;
        }

        if(!res){
            alert("图形验证码错误");
            return;
        }

        if($yzm2.val() == code){
            $.ajax({
                type:'post',
                url: '../api/php/user2.php',
                data:{
                    type:"reg",
                    username:username,
                    password:password
                },
                success:function(data){
                    console.log(data);
                    if(data){
                        alert('注册成功');
                        window.location.href = ('../index.html');
                    }else{
                        alert('注册失败，请稍后再试')
                        window.location.href = ('../html/reg.html');
                    }
                }
            })
        }else{
            alert('手机验证码错误！')
        }
    })
   
})