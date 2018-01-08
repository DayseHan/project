jQuery(function($){
function saveStorage(){
    localStorage.setItem("username",username);
    localStorage.setItem("password",password);
}
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
                    storage = window.localStorage
                    storage["username"] = username;  
                    storage["password"] = password; 
                    // storage["id"] = password; 
            
                    console.log(storage["username"]);
                    window.location.href = '../index.html';
                    // window.location.href = (`../index.html?username=${username}`);
                   
                }else{
                    alert('用户名或密码错误');
                }
            }
        });
    })
})



