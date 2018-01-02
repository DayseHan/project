;(function($){
    $.fn.lhjStair = function(options){
        var defaults = {
            class:'active',
            range:850
        }
        var opt = $.extend({},defaults,options);
        
        var now,selector,target,timer,v,self,$lis,ele,height,top,y;
        self = this;
        $lis = this.find('li');
        //滚动时高亮当前楼层
        $(window).scroll(function(){
            //滚动距离大于850时显示楼梯ul
            y = window.scrollY;
            if(y >= opt.range){
                self.fadeIn();
            }else if(y <= opt.range){
                self.fadeOut();
            }
            $lis.map(function(){
                ele = $(this).attr('data-id');
                height = $(`#${ele}`).outerHeight();
                top = $(`#${ele}`).offset().top;
                if(y >= top && y <= top+height){
                    $(this).addClass(opt.class).siblings('li').removeClass(opt.class);
                }
            })
        });
        //点击ul=>li,高亮并跳到对应楼层
        this.on('click','li',function(){
            clearInterval(timer);
            $(this).addClass(opt.class).siblings('li').removeClass(opt.class);
            selector = $(this).attr('data-id');
            target = $(`#${selector}`).offset().top;
            now = window.scrollY;
            timer = setInterval(function(){
                v = (target - now)/10>0?Math.ceil((target - now)/10):Math.floor((target - now)/10);
                // console.log(v);
                if(v == 0){
                    clearInterval(timer);
                    window.scrollTo(0,target);
                }
                now+=v;
                window.scrollTo(0,now);
            },21)
        });
        return this;
    }
})(jQuery);