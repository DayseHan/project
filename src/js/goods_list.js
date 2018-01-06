jQuery(function($){
    // ajax加载尾部
    var  $main= $('#main');
    $('#footer').load('../html/footer.html .footer0',foot);
    function GetQueryString(name){
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if(r!=null)return  unescape(r[2]); return null;
    }
    var List = decodeURI(GetQueryString("_data"), "utf-8");
    // var List = window.location.search;
        // console.log(List);
    //商品列表main
    console.log($main.find('.top').find('span'));
    $main.find('.top').find('span').html('&nbsp;&nbsp;>&nbsp;&nbsp;'+List);
    if(List != null){
        $.ajax({
                type:'get',
                url:'../api/php/goods.php',
                data:{
                    type:'list',
                    _data:List
                },
                success:function(data){
                    var res = $.parseJSON(data);
                    var html = '';
                    // console.log(res);
                    $.map(res,function(item,index){
                        html += `
                        <li class="fl" data-id="${item.id}">
                            <a class="img"><img src="${item.imgurl}" alt="" /></a>
                            <p><a>${item.name}</a></p>
                            <div class="money clearfix">
                                <span class="sp1">￥${item.price1}</span>
                                <span class="sp2">￥${item.price2}</span><br />
                                <span class="sp3">销量：0<a href="#"></a></span>
                                <span class="sp4">评价：0<a href="#"></a></span><br />
                                <i class="fr"><a href="./deta_list.html">立即购买</a></i>
                            </div>
                        </li>`;
                    });
                    var $ul = $main.find('.r').find('.list').find('ul');
                    $ul.html(html);
                    $ul.on('click','a',function(){
                        var id = $(this).closest('li').attr('data-id');
                        window.location.href = `../html/deta_list.html?_id=${id}`;
                    })
                }
            })
    };
    //左侧tab1
    $.ajax({
        type:'get',
        url:'../api/php/goods.php',
        data:{
            type:'goods_list_l',
            pos:'hot_list2'
        },
        success:function(data){
            var res = $.parseJSON(data);
            var html = '';
            // console.log(res);
            $.map(res,function(item,index){
                html += `
                        <li data-id="${item.id}">
                            <a class="l"><img src="${item.imgurl}" alt=""></a>
                            <p><span><a>${item.name}</a></span></p>
                            <span class="sp1">￥${item.price2}</span>
                        </li>`;
            })
            $main.find('.l').find('.bottom').find('.tab1').html(html);
        }
    });

    //左侧tab2
    $.ajax({
        type:'get',
        url:'../api/php/goods.php',
        data:{
            type:'goods_list_l',
            pos:'hot_list3'
        },
        success:function(data){
            var res = $.parseJSON(data);
            var html = '';
            // console.log(res);
            $.map(res,function(item,index){
                html += `
                        <li data-id="${item.id}">
                            <a class="l"><img src="${item.imgurl}" alt=""></a>
                            <p><span><a>${item.name}</a></span></p>
                            <span class="sp1">￥${item.price2}</span>
                        </li>`;
            })
            $main.find('.l').find('.bottom').find('.tab2').html(html);
        }
    });
    
    $('#footer').load('../html/footer.html .footer0',function(){
        foot();
        $('#link').load('../html/footer.html .link');
    });
    $('#header').load('../html/header.html .header',function(){
        head();
         
    });
    //左侧小的轮播图
    
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
    });


})