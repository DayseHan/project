jQuery(function($){
    $('#footer').load('../html/footer.html .footer0',foot);
    $('.form-inline').find('.reg').on('click',function(){
        var username = $('#username').val();
        var password = $('#password').val();
        $.ajax({
            type: "post",
            url: '../api/php/user2.php',
            data:{
                type:'login',
                username:username,
                password:password
            },
            // async: false,
            // datatype: "jsonp",
            success: function (data) {
                if(data){
                    alert('登陆成功');
                    window.location.href = ('../index.html');
                }else{
                    alert('用户名或密码错误');
                }
            }
        });
    })
})



