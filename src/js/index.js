require(['config'],function(){
    require(['jquery','carousel','stair','header','footer'],function($,c){
        jQuery(function($){
            // ajax加载尾部
            $('#footer').load('../html/footer.html .footer0',function(){
                foot();
                $('#link').load('../html/footer.html .link');
            });

            $('#header').load('../html/header.html .header',function(){
                head();
                
                
                $('a').css('cursor','pointer');
                    // var $nav3 = $('#header').find('.nav3');
                //ajax加载导航栏数据
                $.ajax({
                    type:"get",
                    url:'../api/php/goods.php?type=nav',
                    success:function(data){
                        var $nav3 = $('#header').find('.nav3');
                        var res = $.parseJSON(data);
                        // console.log(res);
                        var arr = [];
                        $.map(res,function(item,index){
                            $.inArray(item.type2,arr) == -1 ? arr.push(item.type2):null;
                        });
                        // console.log(arr);
                        var nav2 = "";
                        $.map(arr,function(item,index){
                            nav2 += `<li><a>${item}</a></li>`;
                        });
                        $nav3.find('.two').html(nav2);

                        //二级导航事件
                        var timer1,timer2;
                        //三级导航
                        $nav3.find('.two').on('mouseover','li',function(){
                            clearTimeout(timer1);
                            var $this = $(this);
                            var $parent = $this.parent();
                            $this.addClass('active').siblings('li').removeClass('active');
                            $parent.show().next().show();
                            $.ajax({
                                type:'get',
                                url:'../api/php/goods.php',
                                data:{
                                    type:'daoh',
                                    type2:$this.find('a').text(),
                                },
                                success:function(data){
                                    var nav3 = '';
                                    var res = $.parseJSON(data);
                                    // console.log(data);
                                    $.map(res,function(item,index){
                                        nav3 += `<a>${item.data}</a>`;
                                    })
                                $parent.next().html(nav3);
                                }
                            })
                            

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
                        });




                        var $nav3 = $('#header').find('.nav3');

                        $nav3.find('.all_nav').on('mouseout',function(){
                            timer1 = setTimeout(function(){
                                $nav3.find('.two').show();
                            },100)
                        })

                        $nav3.find('.two').on('mouseleave',function(){
                        timer3 = setTimeout(function(){
                            $(this).next().hide();
                            $(this).show();
                        }.bind(this),100);
                        });

                        $nav3.find('.three').on('mouseout',function(){
                            var $this = $(this);
                            $this.prev().show();
                            $this.hide();
                        });

                    }
                })







           });
            //ajax加载商品数据
            $.ajax({
                type:"get",
                url:'../api/php/goods.php?type=all',
                success:function(data){
                    var res = $.parseJSON(data);
                    var time_up = '';
                    var news_top = news_bottom = hot_top = hot_bottom = nonal3 = nonal6 = nonal12 = nonal13 = nonalr =time_up;
                    $.map(res,function(item,idx){
                        // console.log(item,idx);
                        var imgurl = item.imgurl.slice(1);
                        if(item.grade == 'time_up'){
                            time_up+=`
                                <li data-id="${item.id}" class="fl">
                                    <a class="img"><img src="${imgurl}" alt="" /></a>
                                    <div class="qty clearfix">
                                        <i></i><span>0件已抢</span>
                                    </div>
                                    <div class="money clearfix">
                                        <span class="sp1">￥${item.price1}</span>
                                        <span class="sp2">￥${item.price2}</span>
                                        <i class="fr"><a>马上抢</a></i>
                                    </div>
                                    <p><a>${item.name}</a></p>
                                </li>`;
                        }else if(item.grade == 'news_top'){
                            news_top += `
                                <li data-id="${item.id}">
                                    <a class="l"><img src="${imgurl}" alt="" /></a>
                                    <p><span><a>${item.name}</a></span><img src="./img/rq.png" height="79" width="74" alt="" /><br />
                                    <span class="sp1">￥${item.price1}</span>
                                    <span class="sp2">￥${item.price2}</span><br />
                                    <i class="fr"><a>购买</a></i>
                                    </p>
                                </li>`;
                        }else if(item.grade == 'news_bottom'){
                            news_bottom += `
                                <li data-id="${item.id}">
                                    <span class="hot"><img src="./img/rq.png" alt="" /></span>
                                    <a class="big"><img src="${imgurl}" alt="" /></a>
                                    <a href="#" class="title">${item.name}</a>
                                    <span class="sp1">￥${item.price1}</span>
                                    <span class="sp2">￥${item.price2}</span>
                                </li>`;
                        }else if(item.grade == 'hot_top'){
                            hot_top += `
                                    <li data-id="${item.id}">
                                    <a class="l"><img src="${imgurl}" alt="" /></a>
                                    <p><span><a>${item.name}</a></span><img src="./img/rq.png" height="79" width="74" alt="" /><br />
                                    <span class="sp1">￥${item.price1}</span>
                                    <span class="sp2">￥${item.price2}</span><br />
                                    <i class="fr"><a>购买</a></i>
                                    </p>
                                </li>`
                        }else if(item.grade == 'hot_bottom'){
                            hot_bottom += `
                            <li data-id="${item.id}">
                                <span class="hot"><img src="./img/rq.png" alt="" /></span>
                                <a class="big"><img src="${imgurl}" alt="" /></a>
                                <a href="#" class="title">${item.name}</a>
                                <span class="sp1">￥${item.price1}</span>
                                <span class="sp2">￥${item.price2}</span>
                            </li>`;
                        }else if(item.grade == 'idx_3'){
                            nonal3 += `<li data-id="${item.id}">
                                        <a class="big"><img src="${imgurl}" alt="" /></a>
                                        <a href="#" class="title2">${item.name}</a>
                                        <span class="sp1">￥${item.price1}</span>
                                        <span class="sp2">￥${item.price2}</span>
                                    </li>
                                    `
                        }else if(item.grade == 'idx_6'){
                            nonal6 += `<li data-id="${item.id}">
                                        <a class="big"><img src="${imgurl}" alt="" /></a>
                                        <a href="#" class="title2">${item.name}</a>
                                        <span class="sp1">￥${item.price1}</span>
                                        <span class="sp2">￥${item.price2}</span>
                                    </li>
                                    `
                        }else if(item.grade == 'idx_12'){
                            nonal12 += `<li data-id="${item.id}">
                                        <a class="big"><img src="${imgurl}" alt="" /></a>
                                        <a href="#" class="title2">${item.name}</a>
                                        <span class="sp1">￥${item.price1}</span>
                                        <span class="sp2">￥${item.price2}</span>
                                    </li>
                                    `
                        }else if(item.grade == 'idx_13'){
                            nonal13 += `<li data-id="${item.id}">
                                        <a class="big"><img src="${imgurl}" alt="" /></a>
                                        <a href="#" class="title2">${item.name}</a>
                                        <span class="sp1">￥${item.price1}</span>
                                        <span class="sp2">￥${item.price2}</span>
                                    </li>
                                    `
                        }
                        if(item.grade == 'idx_r'){
                            nonalr += `<li data-id="${item.id}">
                                    <a class="l"><img src="${imgurl}" alt="" /></a>
                                    <p><span><a>${item.name}</a></span></p>
                                    <span class="sp2">￥${item.price2}</span>
                                </li>
                                    `
                        }
                    });
                    var $main = $('#main');
                    $main.find('.time').find('ul').html(time_up).find('li').eq(3).css('margin-right','0');
                    $('#L10').find('.top').find('ul').html(news_top);
                    $('#L10').find('.bottom').find('ul').html(news_bottom).find('li').eq(4).css('margin-right','0');
                    $('#L11').find('.top').find('ul').html(hot_top);
                    $('#L11').find('.bottom').find('ul').html(hot_bottom).find('li').eq(4).css('margin-right','0');
                    var $min = $main.find('.min');
                    $min.find('.r1').html(nonal3);
                    $min.find('.r2').html(nonal6);
                    $min.find('.r3').html(nonal12);
                    $min.find('.r4').html(nonal13);
                    $main.find('.fr').find('.hot2').html(nonalr);

                    $main.find('.contain').on('click','a',function(){
                        var id = $(this).closest('li').attr('data-id');
                        window.location.href = `../html/deta_list.html?_id=${id}`;
                    });
                }
            })



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

            function action($this){
                $this.addClass('baise').siblings('li').removeClass('baise');
                var idx = $this.index();
                $this.closest('.min').find('.r').find('ul').eq(idx).css('display','block').siblings('ul').css('display','none'); 
            };
            $('#main').find('.min').find('.title').on('mouseover','li',function(){
                    action($(this));
            });

            // 指定倒计时结束时间
                var end = '2018-3-15';

                groupBuy();

                //当前时间跟结束时间对比，计算差值
                var timer = setInterval(groupBuy,1000);

                function groupBuy(){
                    // 每秒计算差值,得到秒数
                    var offset = Math.floor((Date.parse(end) - Date.now())/1000);

                    // 倒计时结束时，处理
                    if(offset<=0){
                        clearInterval(timer);
                        btnBuy.src = 'img/btn_buy.jpg';
                        countDown.style.display = 'none';
                    }

                    var secLeft = offset%60;
                    var minLeft = Math.floor(offset/60)%60;
                    var hourLeft = Math.floor(offset/60/60)%24;
                    var day = Math.floor(offset/60/60/24);

                    // 补0
                    secLeft = (secLeft<10 ? '0' : '') + secLeft;
                    minLeft = (minLeft<10 ? '0' : '') + minLeft;
                    hourLeft = (hourLeft<10 ? '0' : '') + hourLeft;
                    day = (day<10 ? '0' : '') + day;

                    // 拼接时间格式
                    var html = `<span>${day}</span><i>:</i><span>${hourLeft}</span><i>:</i><span>${minLeft}</span><i>:</i><span>${secLeft}</span>`;
                    // console.log(html);
                    $('#group_buy').html(html);
                }
                
        });
    })
})
