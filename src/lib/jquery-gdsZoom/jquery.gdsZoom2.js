;(function($){
	$.fn.gdsZoom = function(options){
		var defaults = {
			width:400,
			height:300,
			position:'right',
			gap:15
		}
		// 这里的this指向实例
		return this.each(function(){
			// 这里的this指向DOM节点
			var opt = $.extend({},defaults,options);
			var $small = $(this);
			var $smallImg = $small.children('img');

			$small.addClass('gds-zoom');

			var $big = $('<div/>').addClass('gds-zoom-big');

			//定位大图容器
			var left,top;
			if(opt.position === 'right'){
				top = $small.offset().top;
				left = $small.offset().left + $smallImg.outerWidth() + opt.gap;
			}else if(opt.position === 'left'){
				top = $small.offset().top;
				left = $small.offset().left - opt.width - opt.gap;
			}else if(opt.position === 'top'){
				left = $small.offset().left;
				top = $small.offset().top-opt.height-opt.gap;
			}else if(opt.position === 'bottom'){
				top = $small.offset().top + opt.width + opt.gap;
				left = $small.offset().left;
			}

			$big.css({
				left:left,
				top:top
			})
			var $bigImg = $('<img/>');
			$bigImg.appendTo($big);
			$big.appendTo('body');

			var $zoom = $('<span/>').addClass('minzoom');
			$zoom.appendTo($small);

			var img = new Image();
			var ratio;
			img.onload = function(){
				$bigImg.attr('src',img.src);

			}

			$small.on('mouseover',function(){
				img.src = $smallImg.attr('data-big');
				$big.fadeIn();
				$zoom.fadeIn();
				ratio = $bigImg.outerWidth()/$smallImg.outerWidth();

				console.log($bigImg.outerWidth());

				$zoom.css({
					width:opt.width/ratio,
					height:opt.height/ratio
				});
			}).on('mouseleave',function(){
				$big.fadeOut();
				$zoom.fadeOut();
			}).on('mousemove',function(e){
				var left = e.pageX - $small.offset().left-$zoom.outerWidth()/2;
				var top =e.pageY - $small.offset().top - $zoom.outerHeight()/2;
			

				if(top<0){
					top = 0;
				}else if(top > $small.outerHeight()-$zoom.outerHeight()){
					top = $smallImg.outerHeight() - $zoom.outerHeight();
				}

				if(left < 0){
						left = 0;
				}else if(left > $smallImg.outerWidth()-$zoom.outerWidth()){
					left = $small.outerWidth()-$zoom.outerWidth();
				}

				$zoom.css({
					left:left,
					top:top
				});

				$bigImg.css({
					left:-left*ratio,
					top:-top*ratio
				})
			});

		})
	}
})(jQuery)