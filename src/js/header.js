function head(){
    var $nav3 = $('#header').find('.nav3');
    //ajax加载导航栏数据
    $.ajax({
        type:"get",
        url:'../api/php/goods.php?type=nav',
        success:function(data){
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
            })
            $nav3.find('.two').html(nav2);

            //二级导航事件
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
                        // console.log(res)
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

            //点击查询，跳转列表页
            $nav3.find('.two').on('click','a',function(){
                var data = $(this).text();
                console.log($(this),data);
                // console.log(encodeURI(encodeURI(`../html/goods_list.html?_data=${_data}`)))
                window.location.href = encodeURI(encodeURI(`../html/goods_list.html?_data=${data}`));
                
            });

        }
    })

    

    //头部搜索
    var $search = $('#search');
    $search.on('click',function(){
        $search.val()
        $.ajax({
            type:'get',
            url:'../api/php/goods.php',
            data:{
                type:'search',
                search:$search.val()
            },
            success:function(){
                
            }

        })
    });
}