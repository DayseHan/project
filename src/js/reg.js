jQuery(function($){
    var verifyCode = new GVerify("v_container");
    $('.reg').on('click',function(){
        var res = verifyCode.validate($(".yzm").val());
        if(res){
            alert("验证正确");
        }else{
            alert("验证码错误");
        }
    });

    $('#footer').load('../html/footer.html .footer0',foot);
})