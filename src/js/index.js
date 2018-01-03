jQuery(function($){
    // ajax加载尾部
    $('#footer').load('../html/footer.html .footer0',foot);
    $('#header').load('../html/header.html .header');
    //楼梯
    $('#ul_stair').lhjStair();
    // 大的轮播图
    $('#banner').find('.banner').lhjCarousel({
        width:740,
        height:450,
        imgs:["img/banner1.jpg","img/banner2.jpg","img/banner3.jpg","img/banner4.jpg","img/banner5.jpg"],
        index:0,
        page:true,
        pageNum:false,
        // type:"horizontal"
        type:"fade"
    });

    $('#free').lhjCarousel({
        width:960,
        height:150,
        index:0,
        page:true,
        pageNum:false,
        type:"fade"
    });
    //banner-r的tab切换
    $('#banner').find('.se').on('mouseover',function(){
        $('#caonimei').show().siblings().hide();
    });
    $('#banner').find('.se2').on('mouseover',function(){
        $('#caonimei2').show().siblings().hide();
    });

    function action($this){console.log($this);
        $this.addClass('baise').siblings('li').removeClass('baise');
        var idx = $this.index();
        $this.closest('.min').find('.r').find('ul').eq(idx).css('display','block').siblings('ul').css('display','none'); 
    };
    $('#main').find('.min').find('.title').on('mouseover','li',function(){console.log(666);
            action($(this));
    });

    //倒计时
    // 1）指定结束时间
        var end = '2018-1-10';

        groupBuy();

        // 2）不断那当前时间跟结束时间对比，计算差值
        var timer = setInterval(groupBuy,1000);

        function groupBuy(){
            // 每秒计算差值,得到秒数
            var offset = Math.floor((Date.parse(end) - Date.now())/1000);

            // 5）倒计时结束时，处理
            if(offset<=0){
                clearInterval(timer);
                btnBuy.src = 'img/btn_buy.jpg';
                countDown.style.display = 'none';
            }

            var secLeft = offset%60;
            var minLeft = Math.floor(offset/60)%60;
            var hourLeft = Math.floor(offset/60/60)%24;
            var day = Math.floor(offset/60/60/24);

            // 补0操作
            secLeft = (secLeft<10 ? '0' : '') + secLeft;
            minLeft = (minLeft<10 ? '0' : '') + minLeft;
            hourLeft = (hourLeft<10 ? '0' : '') + hourLeft;
            day = (day<10 ? '0' : '') + day;

            // 4）拼接时间格式，写入页面
            var html = `<span>${day}</span><i>:</i><span>${hourLeft}</span><i>:</i><span>${minLeft}</span><i>:</i><span>${secLeft}</span>`;
            // console.log(html);
            $('#group_buy').html(html);
        }
        
});