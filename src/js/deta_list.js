require(['config'],function(){
    require(['jquery','carousel','gdszoom','header','footer'],function($,c){
        jQuery(function($){
            // ajax加载尾部
            // $('#footer').load('../html/footer.html .footer0',foot);
            storage = window.localStorage
            $('#footer').load('../html/footer.html .footer0',function(){
                foot();
                $('#link').load('../html/footer.html .link');
            });
            $('#header').load('../html/header.html .header',function(){
                head();
                //获取传入的id
                // var id = window.location.search.slice(5);
                var str = window.location.search.slice(1);
                var arr = str.split('=');
                // console.log(arr);
                $.ajax({
                    type:'get',
                    url:'../api/php/goods.php',
                    data:{
                        type:'deta_list',
                        id:arr[1]
                    },
                    success:function(data){
                        var res = $.parseJSON(data);
                        // console.log(`${res[0].name}`);
                        var html =  `
                            <div class="l fl">
                                <div class="goods">
                                    
                                    <img src="${res[0].imgurl}" data-big="${res[0].bigimg}">
                                </div>
                            </div>
                            <div class="m fl">
                                <h3 class="h3 title">${res[0].name}</h3>
                                <h3 class="h3 price1">零售价：<span>${res[0].price1}元</span> <i>商品编号：${res[0].id}</i> </h3>
                                <h3 class="h3 price2">会员价：<span>￥${res[0].price2}</span></h3>
                                <h3 class="h3 sell">累计销量：<span>0</span> 累计评论：<i>0</i></h3>
                                <h3 class="h3 serve">支持服务:
                                    <a href="#"><i class="i1">闪</i>快递极速达</a>
                                    <a href="#"><i class="i2">邮</i>全省满88包邮</a>
                                    <a href="#"><i class="i3">店</i>实体门店保障</a>
                                </h3>
                                <h3 class="h3 num clearfix">
                                    <span>购买数量:</span>
                                    <button class="jian fl" value="-">-</button>
                                    <input type="text" class="fl" value="1"/>
                                    <button class="jia fl">+</button>
                                </h3>
                                <h3 class="btn">
                                    <button>立即购买</button>
                                    
                                    <button class="btn2" data-id="${res[0].id}">加入购物车</button>
                                </h3>
                            </div>
                            <div class="r fr">
                                <div class="top">
                                    <img src="${res[0].brand_img}" />
                                    <span>${res[0].brand}</span>
                                </div>
                                <ul class="bottom">
                                    
                                </ul>
                                <div class="img">
                                    <a><img src="${res[0].action}"></a>
                                </div>
                            </div>`
                        $('#main').find('.main2').html(html);
                        $('#main').find('.main1').find('span').html(`&nbsp;&nbsp;>&nbsp;&nbsp;${res[0].type}&nbsp;&nbsp;>&nbsp;&nbsp;${res[0].name}`)
                        $('#main').find('.main2').find('.r').find('.img').on('click',function(){
                            window.location.href = encodeURI(encodeURI(`../html/goods_list.html?_data=奶粉专区`));
                        })

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
                        //放大镜
                        $('#main').find('.main2').find('.l').find('.goods').gdsZoom();

                        //飞入购物车效果
                        $g_list = $('#main').find('.m');
                        $c_list = $('#cart');
                        $g_list.on('click','.btn2',function(){
                            // console.log(this);
                            var $self = $('<img/>').attr('src',`${res[0].imgurl}`).appendTo('body').css({
                                position:'absolute',
                                left:$(this).offset().left,
                                top:$(this).offset().top,
                                height:$(this).height()*2.4
                            }).animate({
                                left:$c_list.offset().left,
                                top:$c_list.offset().top,
                                height:$(this).height()*0.7
                            },function(){
                                $self.remove();
                                $.ajax({
                                    type:'get',
                                    url:'../api/php/goods.php',
                                    data:{
                                        type:'cart',
                                        data:''
                                    }
                                })
                            });

                            $.ajax({
                                type:'get',
                                url:'../api/php/goods.php',
                                data:{
                                    type:'add',
                                    username:storage["username"],
                                    id:$(this).attr('data-id')
                                },
                                success:function(data){
                                    console.log(data);
                                    cart();
                                }
                            });



                        });
                    }
                })
            });

            
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

            
            //提交评论到数据库刷新局部刷新评论区
            var  $comment= $('.main3').find('.r').find('.comment');
            $comment.find('button').on('click',function(){
                var comments = $comment.find('.sub').find('textarea').val();
                console.log(comments);
                
            })
        });
    })
})