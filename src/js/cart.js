require(['config'],function(){
    require(['jquery','carousel','header','footer'],function($,c){
        jQuery(function($){

            //购物车
            storage = window.localStorage
            //ajax加载头部和尾部
            $('#header').load('../html/header.html .header',function(){
                head();
                try{
                    // var arr_id = $.parseJSON(str_id[1]);
                    $.ajax({
                        type:'get',
                        url:'../api/php/goods.php',
                        data:{
                            type:'cart',
                            username:storage["username"]
                        },
                        success:function(data){
                            
                            var res1 = $.parseJSON(data);
                            res = res1[0].cart;
                            var arr_id = $.parseJSON(res);

                            var $cart2 = $('#main').find('.cart2');
                            var total=0;
                            $cart2.find('.moren').remove();
                            $.map(arr_id,function(item,index){
                                // console.log(item);
                                $.ajax({
                                    url:'../api/php/goods.php',
                                    data:{
                                        type:'cart_search',
                                        cart_id:item
                                    },
                                    success:function(data){
                                        var res = $.parseJSON(data)
                                        // console.log(res);
                                        $cart2.append(`
                                                <dt data-id="${res[0].id}">
                                                    <i ><input type="checkbox"></i>
                                                    <i><img src="${res[0].imgurl}" alt="" /></i>
                                                    <i >${res[0].name}</i>
                                                    <i >
                                                        <span>￥${res[0].price2}</span><br />
                                                        <span>￥${res[0].price1}</span>
                                                    </i>
                                                    <i >
                                                        <button class="jian fl" value="-">-</button>
                                                        <input type="text" class="fl" value="1"/>
                                                        <button class="jia fl">+</button>
                                                    </i>
                                                    <i >${res[0].price2}</i>
                                                    <i class="del"  data-price2="${res[0].price2}">X</i>
                                                </dt>`);
                                        total += Number(res[0].price2);
                                        $cart2.next().find('i').eq(3).html(`已选商品&nbsp;&nbsp;(&nbsp;&nbsp;${$cart2.find('dt').length}&nbsp;&nbsp;)&nbsp;&nbsp;件`).next().html(`合计￥&nbsp;&nbsp;${total}&nbsp;&nbsp;`);
                                            

                                    }
                                });
                            });

                            $cart2.on('click','.del',function(){
                                console.log(this)
                                var $dt = $(this).closest('dt');
                                var $self = $(this);
                                $.ajax({
                                    url:'../api/php/goods.php',
                                    data:{
                                        type:'del',
                                        id:$dt.attr('data-id'),
                                        username:storage["username"]
                                    },
                                    success:function(data){
                                        console.log(data);
                                        $dt.remove();
                                        cart();
                                        // total += Number(res[0].price2);
                                        console.log($self.attr('data-price2'));
                                        $cart2.next().find('i').eq(3).html(`已选商品&nbsp;&nbsp;(&nbsp;&nbsp;${$cart2.find('dt').length}&nbsp;&nbsp;)&nbsp;&nbsp;件`).next().html(`合计￥&nbsp;&nbsp;${total-$self.attr('data-price2')}&nbsp;&nbsp;`);
                                    }
                                })
                            })

                        }
                    });
                    
                }catch(err){}
            });
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
        }); 
    })
})