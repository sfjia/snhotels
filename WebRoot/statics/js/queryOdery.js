/* @since:2013/4/9　	* @author:270029616@qq.com ~~~ ! */

// Ken Popup
var KP = {
	options : {
		id			: "#KP",	
		title		: "提示",	
		content		: "#KPC",			// 内容区域
		wsize		: [300, 160],		// iframe 设置宽高
		position	: [0, 0],			// 指定位置
		drag		: false				// 不可拖拽			
	},
	// 遮罩
	Mask : {
		cfg : {
			box		: ".mask",													// 盒子
			opacity	: 0.3														// 透明度				
		},
		// 显示
		show : function () {
			var $_mask = $(this.cfg.box);										// 遮罩层

			if(!$_mask.length) {
				$_mask = $('<div class="mask" />').appendTo($("body"));							
				$_mask
					.height($(document).height())
					.css("opacity", this.cfg.opacity)
					.click( function(){
						// handler
					});
			}	
		},
		
		hide : function () {
			$(this.cfg.box).remove();
		}		
	},
	/*
	 *	add
	 *	title 窗口标题
	 *	w	  窗口宽度
	 *	h	  窗口高度
	 *
	 **/
	show : function(title, w, h){
		var $KP = $(this.options.id),												// 窗口盒子	
			$KPC_html = "";

		if (!$KP.length) {
			var wSize = [w == undefined ? KP.options.wsize[0] : w, h == undefined ? KP.options.wsize[1] : h];			// 窗口大小
			var wTitle = title == undefined ? KP.options.title : title;													// 窗口标题			

			$KP = $('<div class="KP" id="KP" style="width:'+ wSize[0] +'px;height:'+  wSize[1] +'px" />')
					.appendTo($("body"));
			
			$KPC_html = '<div class="hd">'+
						'	<a href="javascript:void(0)" class="ic1 close" onclick="KP.close()">x</a>'+
						'	<strong id="KPTit">'+ wTitle +'</strong>'+
						'</div>'+
						'<div class="bd" id="KPC" style="height:'+ (wSize[1]-75) +'px"></div>';			

			$KP.html($KPC_html);
		}
		
		KP.Mask.show();

		$KP.css({
					"top"	: ($(window).height() - $KP.outerHeight()) / 2 + $(window).scrollTop(),
					"left"	: ($(window).width() - $KP.outerWidth()) / 2
				}).show();

		if(KP.options.drag) KP.drag();
		

		// ESC close KP
		$(document)
			.keydown(function(e){
				if(e.which == 27) KP.close();
			});
	},
	// close
	close : function(){
		$(this.options.id).remove();
		KP.Mask.hide();
	},
	
	// 窗口拖拽
	drag : function(){
		//初始化参数
		var obj = this;
		this.bar = KP.options.id;
		this.box = KP.options.id;
		
		$(obj.bar).children(".hd").css("cursor", "move").css("color","#fff");

		// 点击开始
		function start(e){		
			obj.offsetX = e.clientX - $(obj.box).offset().left;
			obj.offsetY = e.clientY - $(obj.box).offset().top;

			$(document)
				.bind("mousemove",move)
				.bind("mouseup",stop);

			e.preventDefault();
		}
		
		// 拖动
		function move(e){
			var left  = e.clientX - obj.offsetX;
			var top  = e.clientY - obj.offsetY;
			$(obj.box)
				.css({	
					"left"	: left,
					"top"	: top
				});

			e.preventDefault();
		}
		
		// 停止拖动
		function stop(){
			$(document)
				.unbind("mousemove",move)
				.unbind("mouseup",stop);
		}		

		$(document).ready(function(){
			$(obj.bar).children(".hd")
				.bind("mousedown",start);
		});
	}
};


$(function(){
	
	// nav hover
	$(".nav>li")
		.hover(
			function(){	
				$(this).children("ol").css({
					"width"	: $(this).outerWidth() - 1,
					"top"	: $(this).position().top + $(this).height(),
					"left"	: $(this).position().left + 1
				});
				$(this).addClass("on"); 
			},
			function(){	$(this).removeClass("on");}
		);

	$("#tender")
		.click(function(){
			KP.options.drag = true;
			KP.show("查询/更改订单", 300, 206);
			$(KP.options.content).load("http://www.hua3d.com/sarechOrder.htm");
		});
	
	$("#Find_password")
	.click(function(){
		KP.options.drag = true;
		KP.show("找回密码", 500, 306);
		$(KP.options.content)
			.load("http://localhost:8080/user/findPassword.htm");
	});
	
	$("#remind")
	.click(function(){
		KP.options.drag = true;
		KP.show("登陆提示", 500, 306);
		$(KP.options.content)
		.load("http://www.hua3d.com/travel/remind.htm");
	});
	$("#getPromotion")
	.click(function(){
		KP.options.drag = true;
		KP.show("获取优惠卷", 500, 306);
		$(KP.options.content)
		.load("http://localhost:8080/getPromotion.htm");
	});
});
function showRoomMsg(val,hotelCode){
	KP.options.drag = true;
	KP.show(" ", 700, 556);
	$(KP.options.content)
		.load("http://www.hua3d.com/popRommMsg.htm?hotelRoom.roomCode="+val + "&hotelRoom.hotelCode=" + hotelCode);

}
//发送验证码
function sendAuthCode(){
	var webusername = $("#username2").val();
	if(webusername.length<=0){
		alert("用户名不能为空！");
		return false;
	}
	$.ajax({ 
   url: 'http://localhost:8080/sendAuthCode.htm',
   async:false,
   type: 'post', 
   dataType:'json', 
   data: {'hotelUser.webusername':webusername}, 
   success: function (json) { 
   		if(json=="1"){
   			alert("该帐号不存在");
   		}
   }, 
   error: function (XMLHttpRequest, textStatus, errorThrown) { 
   	alert(errorThrown); 
   } 
   });
}
//检查验证码
function checkAuthCode(){
	var webusername = $("#username2").val();
	var authCode = $("#authCode").val();
	$.ajax({ 
   url: 'http://www.hua3d.com/checkAuthCode.htm',
   async:false,
   type: 'post', 
   dataType:'json', 
   data: {'hotelUser.webusername':webusername,'authCode':authCode}, 
   success: function (json) { 
   		if(json=="1"){
   			alert("密码已重置，重置密码为：666666，请登陆修改密码");
   			window.location.href="http://www.hua3d.com/user/loginIndex.htm";
   		}
   }, 
   error: function (XMLHttpRequest, textStatus, errorThrown) { 
   	alert(errorThrown); 
   } 
   });
}

//发送优惠卷验证码
function sendPromotionCode(){
	var phone_pro = $("#phone_pro").val();
	var promotionId_pro = $("#promotionId_pro").val();
	var regPhone =/^(13[0-9]|18[0|2|5|6|8]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/;  
 	if (!regPhone.test(phone_pro)){
 		alert("请输入正确的手机号");
 		return false;
 	} 
	$.ajax({ 
   url: 'http://localhost:8080/sendPromotionCode.htm',
   async:false,
   type: 'post', 
   dataType:'json', 
   data: {'couponPro.phone':phone_pro,'couponPro.promotionId':promotionId_pro}, 
   success: function (json) { 
   		if(json){
   			alert("验证码已发出，请注意查收");
   		}else{
   			alert("不能重复获取优惠卷");
   		}
   }, 
   error: function (XMLHttpRequest, textStatus, errorThrown) { 
   	alert(errorThrown); 
   } 
   });
}

//检查优惠卷验证码
function checkPromotionCode(){
	var phone_pro = $("#phone_pro").val();
	var authCode_pro = $("#authCode_pro").val();
	var promotionId_pro = $("#promotionId_pro").val();
	$.ajax({ 
   url: 'http://localhost:8080/checkPromotionCode.htm',
   async:false,
   type: 'post', 
   dataType:'json', 
   data: {'authCodePro':authCode_pro,'couponPro.phone':phone_pro,'couponPro.promotionId':promotionId_pro} , 
   success: function (json) { 
   		if(json){
   			alert("优惠卷领取成功");
   		}else{
   			alert("一个手机号只能获取一次优惠卷");
   		}
   }, 
   	error: function (XMLHttpRequest, textStatus, errorThrown) { 
   	alert(errorThrown); 
   } 
   });
}
