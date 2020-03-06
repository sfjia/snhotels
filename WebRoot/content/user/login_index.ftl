<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript">  
function loginSub(){
  	var webusername = $("#username").val();
	var password = $("#passwords").val();
	if(webusername == ""){
		alert("请输入帐号");
		return;
	}
	if(password == ""){
		alert("请输入密码");
		return;
	}
	document.loginSubForm.submit();
}

function caTotalMoney(){
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice;
	$("#totalAmount").html(totalAmount);
}
function ajaxLogin(){
	var webusername = $("#usernames").val();
	var password = $("#passwordss").val();
		$.ajax({ 
       type: "post", 
       url: "${base}/ajaxLogin.htm", 
	   data: {"hotelUser.webusername":webusername, "hotelUser.password":password}, 
	   dataType:'json', 
       success: function (data) { 
       		if(data.size == 0){
       				alert("用户名或密码错误");
       				return;
       		}else{
       			window.location.href="${base}/user/usercenter.htm";
       		}
       }, 
       error: function (XMLHttpRequest, textStatus, errorThrown) { 
       	alert(errorThrown); 
       } 
       });
	}
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
        <a href="" style=" color:#ab7b3e; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#ab7b3e;font-family:'宋体';">悦廷会</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">会员登录</a>
        </div><!--right_neirong_title5 end-->
        <div style=" width:700px; height:360px; margin:25px auto 0 auto;">
           <ul style=" width:700px; float: left;">
              <li style=" float:left; position:relative; width:354px; margin-top:50px;">
                 <form name="loginSubForm" action="${base}/user/loginDo.htm" method="post">
                    <div style=" color:#80501b; font-size:24px; margin-bottom:25px;">会员登录</div>
                    <div style=" position:absolute; top:-40px; right:25px;"><img src="${base}/statics/img/v-0.png" /></div>
                    <div style=" color:#666666; font-family:'宋体'; margin-bottom:15px;">请输入您的会员账号和密码，尊享远州悦廷会优惠及礼遇！</div>
                    <div style=" margin-bottom:15px;"><label style=" color:#666666; font-size:14px; font-family:'宋体';">账&nbsp;&nbsp;号: <input type="text" id="usernames" name="hotelUser.webusername" style=" width:194px; height:24px; line-height:24px; border:1px solid #a1a1a1; color:#a1a1a1; font-size:12px;padding-left:4px;" value="会员卡号/手机/邮箱/QQ" 
                             onblur="if(this.value == ''){this.value = '会员卡号/手机/邮箱/QQ'}" onfocus="if(this.value == '会员卡号/手机/邮箱/QQ'){this.value = ''}"></label></div>
                    <div style=" margin-bottom:15px;"><label style=" color:#666666; font-size:14px; font-family:'宋体';">密&nbsp;&nbsp;码: <input type="password" id="passwordss" name="hotelUser.password" onkeydown="if(event.keyCode==13){ajaxLogin();}" style=" width:194px; height:24px; line-height:24px; border:1px solid #a1a1a1;padding-left:4px;" / value=""></label></div>
                    <div style=" padding-left:55px;"><input type="button" onclick="ajaxLogin();" value="登 录" style=" width:66px; height:25px; line-height:25px; text-align:center; color:#fff; font-size:14px; background:#cc9b60; border:0 none; margin-right:10px; cursor:pointer;" /> <a  style=" font-family:'宋体'; color:#ab7b3e;" id="Find_password">忘记密码？</a></div>
                 </form>
              </li>
              <li style=" float:left; background:url(${base}/statics/img/line.png); width:1px; height:360px;"></li>
              <li style=" float:left; width:320px; padding-left:25px;">
                      <ul style=" margin-top:10px; color:#666666; font-family:'宋体';">
                         <li style=" background:url(${base}/statics/img/yuitinghui-2.png) no-repeat 0 4px; color:#95704a; font-size:14px; padding-left:25px; padding-bottom:10px;font-weight:bold; font-family:'宋体';">消费积分，丰厚奖励</li>
                         <li style=" line-height:20px;">持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡</li>
                      </ul>
                      
                      <ul style=" margin-top:25px; color:#666666;font-family:'宋体';">
                         <li style=" background:url(${base}/statics/img/yuitinghui-2.png) no-repeat 0 4px; color:#95704a; font-size:14px; padding-left:25px; padding-bottom:10px;font-weight:bold;font-family:'宋体';">消费积分，丰厚奖励</li>
                         <li style=" line-height:20px;">持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡</li>
                      </ul>
                      
                      <ul style=" margin-top:25px; color:#666666;font-family:'宋体';">
                         <li style=" background:url(${base}/statics/img/yuitinghui-2.png) no-repeat 0 4px; color:#95704a; font-size:14px; padding-left:25px; padding-bottom:10px; font-weight:bold;font-family:'宋体';">消费积分，丰厚奖励</li>
                         <li style=" line-height:20px;">持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡持元洲会员消费卡</li>
                      </ul>
                      <ul style=" margin-top:25px;"><li><a href="${base}/user/regIndex.htm"><input type="button" value="立即申请" style=" background:#22ac38; border:0 none; width:80px; height:25px; line-height:25px; text-align:center; color:#fff;font-size:14px; cursor:pointer;" /></a></li></ul>
              </li>
           </ul>
        </div>
     </div><!--right_neirong5 end-->
  </div><!--content_pre5 end -->
  <#include "/content/common/footer.ftl">