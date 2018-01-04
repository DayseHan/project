jQuery(function($){
    // ajax加载尾部
    // $('#footer').load('../html/footer.html .footer0',foot);
    $('#footer').load('../html/footer.html .footer0',function(){
        foot();
        $('#link').load('../html/footer.html .link');
    });
    $('#header').load('../html/header.html .header',head);
    //左侧小的轮播图
    var  $main= $('#main');
    $main.find('.l').find('.banner').lhjCarousel({
        width: 220,
        height: 238.5,
        imgs:["../img/list-banner3.jpg","../img/list-banner2.jpg","../img/list-banner1.jpg"],
        index:0,
        page:true,
        pageNum:false,
        // type:"horizontal"
        type:"fade"
    });
    //左侧tab标签切换
    $main.find('.l').find('.bottom').find('.clearfix').on('mouseover','li',function(){
        var $this = $(this)
        $this.addClass('active').siblings('li').removeClass('active');
        idx = $this.index();
        $this.closest('ul').next().find('ul').eq(idx).css('display','block').siblings('ul').css('display','none');
    })
})