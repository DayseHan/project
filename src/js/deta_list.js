jQuery(function($){
    // ajax加载尾部
    $('#footer').load('../html/footer.html .footer0',foot);
    $('#header').load('../html/header.html .header');
    var  $main= $('#main');
    $main.find('.l').find('.banner').lhjCarousel({
        width: 220,
        height: 238.5,
        imgs:["../img/list-banner3.jpg","../img/list-banner2.jpg","../img/list-banner1.jpg"],
        index:0,
        page:true,
        pageNum:false,
        type:"horizontal"
        // type:"fade"
    });
    $main.find('.l').find('.bottom').find('.clearfix').on('mouseover','li',function(){
        var $this = $(this)
        $this.addClass('active').siblings('li').removeClass('active');
        idx = $this.index();
        $this.closest('ul').next().find('ul').eq(idx).css('display','block').siblings('ul').css('display','none');
    })
})