<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">  
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.cookie.js"></script>
<meta http-equiv="refresh" content="3;url=${base}/user/usercenter.htm">



<script type="text/javascript">  
function cBirthday(){
	var idno = $("#idno").val();
	$("#birthday").val("");
	if(idno.length != 0){
		y = idno.substring(6,10);
		m = idno.substring(10,12);
		d = idno.substring(12,14);
		$("#birthday").val(y+"-"+m+"-"+d);
	$("#birthdays").val(y+"-"+m+"-"+d);	}
	
}
$().ready( function() {
	var $areaSelect = $("#areaSelect");
	
	// 地区选择菜单
	$areaSelect.lSelect({
			url: "${base}/area/ajaxArea.htm"// AJAX数据获取url
	});
			var $code_c = $(".code_c");
		var $code_img = $("#code_img");
		var $mycode=$("#mycode");
	
		$code_c.click(function() {
			$code_img.attr("src", "${base}/rand.htm?timestamp" + (new Date()).valueOf());
		});
		
		function randimg(){
			$code_img.attr("src", "${base}/rand.htm?timestamp" + (new Date()).valueOf());
		}
	
});

function eClick(){
	$(".email_div").css('display','block'); 
	
}
function hDiv(){
	$(".email_div").css('display','none'); 
}

function mClick(va){
	var email = $("#email").val();
	a = email.indexOf("@");
	if(a >= 0){
		email = email.substring(0,email.indexOf("@"));
	}
	$("#email").val(email + va);
	$(".email_div").css('display','none'); 
}

</script>   
<script type="text/javascript" src="${base}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.card.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.validate.methods.js"></script>
<script type="text/javascript">
	$().ready(function() {
		var $regForm = $("#regForm");
		var $username = $("#username");
		var $password = $("#password");
		var $passwordc = $("#passwordc");
		var $idno = $("#idno");
		var $phone = $("#phone");
		var $email = $("#email");
		var $mycode = $("#mycode");
		
		
		 // 表单验证
			$regForm.validate({
				rules: {
					"hotelUser.webusername":{
						required: true,
						username: true,
						minlength: 4,
						maxlength: 16,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"hotelUser.password":{
						required: true,
						strongTxt:true,
						minlength:8,
						maxlength:16
					},
					"passwordc":{
						required: true,
						equalTo:"#password"
					},
					"hotelUser.idno": {
						required:true,
						isIdCardNo:true,
						minlength:15,
						maxlength:18,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"hotelUser.phone": {
						required: true,
						phone:true,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"hotelUser.email": {
						required: true,
						email2:true,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"mycode": {
						required: true,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"isAgreeAgreement":{
						required:true
					}
				},
				messages: {
					"hotelUser.webusername": {
						required: "请填写用户名",
						username: "用户名只允许包含中文、英文、数字和下划线",
						minlength: "用户名必须大于等于4",
						maxlength: "用户名必须小于等于16",
						remote: "用户名已存在或包含敏感字符，请重新填写"
					},
					"hotelUser.password": {
						required: "请填写密码",
						minlength: "密码必须大于等于8",
						maxlength: "密码必须小于等于16"
					},
					"passwordc": {
						required: "请再次输入密码",
						equalTo: "两次密码输入不一致"
					},
					"hotelUser.idno": {
						required: "请填写身份证号码",
						isIdCardNo:"身份证格式不正确",
						minlength:"身份证号最小为15位",
						maxlength: "身份证号最大为18位",
						remote:"该身份号已经注册"
					},
					"hotelUser.phone": {
						required: "请填写手机号码",
						phone:"手机号码格式不正确",
						remote:"该手机号已经注册"
					},					
					"hotelUser.email": {
						required: "请填写Email",
						email2: "Email格式不正确",
						remote: "Email已存在"
					},
					"mycode": {
						required: "请输入验证码",
						remote:"验证码错误"
					},
					"isAgreeAgreement":{
						required:"请阅读会员协议"
					}
				},
				errorPlacement: function(error, element) {
				  error.appendTo(element.parent());
				},
				submitHandler: function(form) {
					form.submit();
				}
			});
			$("#regButton").click(function(){
				regForm.submit();
			});
			
	});
</script>

 <div class="content_pre5" style=" float:left; background:#fffeed; padding-bottom:0px;">
     <div class="left_neirong" style=" float:left; width:230px; background-color:#e6ddd1;">
      <#include "/content/common/search_hotel_book.ftl">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong5" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title5">
        <a href="" style=" color:#ab7b3e; padding-right:5px; font-family:'宋体';">远洲酒店集团</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#ab7b3e;font-family:'宋体';">商祺会</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">会员注册</a>
        </div><!--right_neirong_title5 end-->
        <div style="width:705px; margin:48px auto 0 auto; border-bottom:1px solid #EBDED3;">
           <div style=" color:#916B3F; font-size:26px; padding-bottom:5px;">注册成功，3秒钟后跳到用户中心</div>
           </div>
              
           </div>
        </div>
     </div><!--right_neirong5 end-->
  </div><!--content_pre5 end --><#include "/content/common/footer.ftl">