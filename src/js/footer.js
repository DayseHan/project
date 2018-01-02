function foot(){
    //底部ul无缝滚动
    var $list = $('#ul_list');
    var timer,left_li;
    
    function list(){
        timer = setInterval(function(){
            if($list.position().left - 360 <= -4320){
                left_li = -360;
                $list.css({left:0});
            }else{
                left_li = $list.position().left - 360;
            }
            $list.animate({
                left:left_li
            })
        },2300);
    }
    list();
    $list.on('mouseover',function(){
        clearInterval(timer);
        
    });
    $list.on('mouseout',function(){
        list();
    });
    //返回顶部效果
    var timer_bot;
    var $bot = $('.bot');
    $(window).scroll(function(){
        if(window.scrollY >0 ){
            $bot.css('display','block');
        }else{
            $bot.css('display','none');
        }

    })
    $bot.on('click',function(){
        timer_bot = setInterval(function(){
            var y = window.scrollY;
            var v = Math.floor(0-y/10);
            if(v == 0){
                clearInterval(timer_bot);
                window.scrollTo(0,0);
            }
            y+= v;
            window.scrollTo(0,y);
        },18)
        
    });
}