function head(){
    var $nav3 = $('#header').find('.nav3');
    //二级导航
    var timer1,timer2;
    $nav3.find('.all_nav').on('mouseover',function(){
        $nav3.find('.two').show();
    }).on('mouseout',function(){
        timer1 = setTimeout(function(){
            $nav3.find('.two').hide();
        },100)
    })
    //三级导航
    $nav3.find('.two').on('mouseover','li',function(){
        clearTimeout(timer1);
        var $this = $(this);
        $this.parent().show().next().show();
        $this.addClass('active').siblings('li').removeClass('active');
    });
    $nav3.find('.two').on('mouseleave',function(){
        timer2 = setTimeout(function(){
            $(this).next().hide();
            $(this).hide();
        }.bind(this),100)
    });

    $nav3.find('.three').on('mouseover',function(){
        clearTimeout(timer2);
        try{
            clearTimeout(timer3);
        }catch(err){
            
        }
        var $this = $(this);
        $this.prev().show();
        $this.show();
    }).on('mouseout',function(){
        var $this = $(this);
        $this.prev().hide();
        $this.hide();
    })
}