require.config({
	// 默认data-main文件所在的目录
	// baseUrl:'js',

	// 别名/虚拟路径
	paths:{
		'jquery':'../lib/jquery-3.2.1',
		
		'gdszoom':'../lib/jquery-gdsZoom/jquery.gdsZoom',

		'stair':'../lib/stair',

		'gVerify':'../lib/gVerify',
		'carousel':'../lib/jquery.Carousel/jquery.Carousel',
		'header':'./header',
		'footer':'./footer'
	},
	shim:{
		// 设置依赖
		gdszoom:['jquery'],
		stair:['jquery'],
		gVerify:['jquery'],
		carousel:['jquery'],
		carousel:['jquery'],
		header:['jquery'],
		footer:['jquery'],

	}
});

// require(['config'],function(){
//     require(['jquery','carousel','stair','header','footer'],function($,c){
        
//     })
// });

// <script src="./js/require.js" data-main="./js/index"></script>
