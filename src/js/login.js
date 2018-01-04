jQuery(function($){
    $('#footer').load('../html/footer.html .footer0',foot);
    var $uaername = $('#username');
    $uaername.blur(function(){
        var username = $uaername.val();
        $.ajax({
            type: "post",
            url: '../api/php/user2.php',
            data:{
                type:'check',
                username:username
            },
            // async: false,
            // datatype: "jsonp",
            success: function (data) {
                console.log(data);
            }
        });
    })
})



