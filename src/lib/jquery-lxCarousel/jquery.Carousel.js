// ;(function($){
// 	$.fn.lxCarousel = function(options){
// 		var defaults = {
// 			// 宽高
// 			width:320,
// 			height:320,

// 			autoPlay:true,
// 			// 图片
// 			imgs:[],
// 			//默认索引值
// 			index:1,
// 			// 轮播类型
// 			type:'vertical',
// 			duration:3000
// 		};

// 		var opt = $.extend({},defaults,options);

// 		var $self = $(this);
// 		$self.addClass('lx-carousel');
// 		$self.css({
// 			width:opt.width,
// 			height:opt.height
// 		});

// 		var lx = {
// 			init:function(){
// 				var $ul = $('<ul/>');
// 				$ul.html(opt.imgs.map(function(url){
// 					return '<li><img src="'+url+'"></li>';
// 				}).join('')).appendTo($self);

// 				if(opt.buttons){
// 					$('<span/>').addClass('btn-prev').html('&lt;').appendTo($self);
// 					$('<span/>').addClass('btn-next').html('&gt;').appendTo($self);
// 				}
// 				$self.hover(function(){
// 					clearInterval($self.timer);
// 				},function(){
// 					lx.move();
// 				}).on('click','.btn-prev',function(){
// 					opt.index--;
// 					lx.show();
// 				}).on('click','.btn-next',function(){
// 					opt.index++;
// 					lx.show();
// 				})
// opt.len = opt.imgs.length;
// 				this.show();
// 				this.move();
// 			},
// 			move:function(){
				
// 				$self.timer = setInterval(function(){
// 					opt.index++;
// 					console.log(this);
// 					this.show();
// 				}.bind(this),opt.duration);
// 				return this;
// 			},
// 			show:function(){
				
// 				if(opt.index>=opt.len){
// 					opt.index = 0;
// 				}else if(opt.index<0){
// 					opt.index = opt.len-1;
// 				}

// 				var $ul = $self.find('ul');
// 				$ul.animate({
// 					top:-opt.index*opt.height
// 				});

// 				return this;
// 			},
// 		}

// 		lx.init();
// 		return this;
// 	}
// })(jQuery);

;(function($){
	$.fn.lxCarousel = function(options){
		var defaults = {
			// 宽高
			width:320,
			height:320,

			autoPlay:true,

			// 默认索引值
			index:0,

			// 页码与左右按钮
			page:true,
			buttons:false,
			// 轮播类型
			type:'vertical',//horizontal,seamless,fade,

			duration:3000
		}

		this.each(function(idx,ele){
			var $self = $(ele);
			var opt = $.extend({},defaults,options);
			console.log(options);
			$self.addClass('lx.carousel');

			$self.css({
				width:opt.width,
				height:opt.height
			});

			var lx ={
				init:function(){
					var $ul = $('<ul/>');
					$ul.html(opt.imgs.map(function(url){
						return '<li><img src="'+ url +'"></li>';
					}).join('')).appendTo($self);

					if(opt.buttons){
						$('<span/>').addClass('btn-prev').html('&lt;').appendTo($self);
						$('<span/>').addClass('btn-next').html('&gt;').appendTo($self);
					}
					$self.hover(function(){
						clearInterval($self.timer);
					},function(){
						lx.move();
					}).on('click','.btn-prev',fucntion(){
						opt.index--;
						lx.show();
					}).on('click','btn-next',function(){
						opt.index++;
						lx.show();
					});
					opt.len = opt.imgs.length;
					this.show();
					this.move();
					return this;
				},
				move:function(){
					$self.timer = setInterval(function(){
						opt.index++;
						this.show();
					}.bind(this),opt.duration);
					return this;
				},
				show:function(){
					if(opt.index>=opt.len){
						opt.index = 0;
					}else if(opt.index<0){
						opt.index = opt.len-1;
					}

					var $ul = $self.find('ul').animate({
						top:-opt.index*opt.height
					})

					return this;
				}
			}
			lx.init();
		})
		return this;
	}
})(jQuery);