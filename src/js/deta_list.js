jQuery(function($){
    // ajax加载尾部
    // $('#footer').load('../html/footer.html .footer0',foot);
    $('#footer').load('../html/footer.html .footer0',function(){
        foot();
        $('#link').load('../html/footer.html .link');
    });
    $('#header').load('../html/header.html .header',head);

    //评论区tab标签
    var $tab = $('#main').find('.main3').find('.r');
    $tab.children('ul').on('click','li',function(){
        $(this).addClass('active').siblings('li').removeClass('active');
        var idx = $(this).index();
        $tab.children('div').eq(idx).css('display','block').siblings('div').css('display','none');
    });

    //左侧小的轮播图
    var  $l= $('#main').find('.main3').find('.l');
    $l.find('.banner').lhjCarousel({
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
    $l.find('.bottom').find('.clearfix').on('mouseover','li',function(){
        var $this = $(this)
        $this.addClass('active').siblings('li').removeClass('active');
        idx = $this.index();
        $this.closest('ul').next().find('ul').eq(idx).css('display','block').siblings('ul').css('display','none');
    });

    //商品数量加减
    var $ipt;
    $('.main2').find('.m').find('.num').on('click','button',function(){
        $ipt = $(this).parent().find('input');
        // console.log($ipt.val());
        if($(this).val() === '-'){
            if(parseInt($ipt.val()) <=1){
                return;
            }
            $ipt.val($ipt.val()-1);
        }else{
            $ipt.val(parseInt($ipt.val())+1);
        }
    });
    //提交评论到数据库刷新局部刷新评论区
    var  $comment= $('.main3').find('.r').find('.comment');
    $comment.find('button').on('click',function(){
        var comments = $comment.find('.sub').find('textarea').val();
        console.log(comments);
        
    })
})