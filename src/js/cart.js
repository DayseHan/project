jQuery(function($){
    $('#header').load('../html/header.html .header',head);
    $('#footer').load('../html/footer.html .footer0',function(){
        foot();
        $('#link').load('../html/footer.html .link');
    });
    var $ul = $('#main').find('.tab').children('ul');
    $ul.on('mouseover','li',function(){
        var $this = $(this);
        var idx = $this.index();
        $this.addClass('active').siblings('li').removeClass('active');
        $this.closest('ul').next().find('ul').eq(idx).css('display','block').siblings('ul').css('display','none');
    })
})