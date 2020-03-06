var slide =  {
	options : {
		cur			: 0,
		speed		: 3500,
		duration	: 700,
		box			: "#slide",
		item		: ".slideItem",
		pic			: "#slidePic"
	},

	// 初始化
	init : function () {

		// 创建小点点
		$(this.options.box).prepend('<ul class="slideItem"></ul>');

		if (slideData.length > 0) {
			$.each(slideData, function(i, n){
				var s = slide.options.cur==i ? ' class=\"on\"' : "";
				$(".slideItem")
					.css("opacity", 0.85)
					.append('<li'+ s +'>'+(i+1)+'</li>');
			});

			var $item = $(slide.options.item).find("LI");				
			
			$item.each(function(i){
				$(this).click(function(){
					slide.start.smallPicShow(i);
				});
			});
			
			this.start.smallPicShow(this.options.cur);	
			
			$(this.options.box)
								.hover(	function(){clearInterval(slideStart);},
										function(){	slideStart = setInterval("slide.start.loop()", slide.options.speed);});
		
			var slideStart = setInterval("slide.start.loop()", slide.options.speed);			
		}
	},
		
	// 开始
	start : {		
		// 小点点
		smallPicShow : function () {			
			$(slide.options.pic)
								.attr("title", title)
								.hide()
								.css("background-image","url("+ pic +")")
								.fadeIn(slide.options.duration);								
			
			
			if (slideData[n].link != undefined){ // 有链接
				$(slide.options.pic).html("<a target='_blank' href="+ link +"title="+ title +"></a>");
			}
		},
		// 循环
		loop : function () {
			var $item = $(slide.options.item).find("LI");
			slide.options.cur ++;
			if (slide.options.cur > $item.length - 1) slide.options.cur = 0; 
			
			//slide.start.smallPicShow(slide.options.cur);
		}
	}
};

slide.init();