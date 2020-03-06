<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.card.js"></script>

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

function mClick(va){
	var email = $("#email").val();
	email = email.substring(0,email.indexOf("@"));
	$("#email").val(email + va);
	$(".email_div").css('display','none'); 
}
function hDiv(){
	$(".email_div").css('display','none'); 
}

</script>   

<script type="text/javascript">

	$().ready(function() {
		var $regForm = $("#regForm");
		var $idno = $("#idno");
		var $phone = $("#phone");
		var $email = $("#email");
		var $mycode = $("#mycode");
		
		 // 表单验证
			$regForm.validate({
			
				rules: {
					"hotelUser1.idno": {
						required:true,
						isIdCardNo:true,
						minlength:15,
						maxlength:18,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"hotelUser1.phone": {
						required: true,
						phone:true,
						remote:{
							type:"POST",
							url: "${base}/checkUserInfo.htm"
						}
					},
					"hotelUser1.email": {
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
					"hotelUser1.idno": {
						required: "请填写身份证号码",
						isIdCardNo:"身份证格式不正确",
						minlength:"身份证号最小为15位",
						maxlength: "身份证号最大为18位",
						remote:"该身份号已经注册"
					},
					"hotelUser1.phone": {
						required: "请填写手机号码",
						phone:"手机号码格式不正确",
						remote:"该手机号已经注册"
					},					
					"hotelUser1.email": {
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
			
	});
	
	function checkCardNo(){
		var cardno = $("#cardno").val();
		if(cardno.length != 0){
			var idno = $("#idno").val();
			if(idno.length == 0){
				alert("请输入身份证号码!");
			}else{
				   $.ajax({ 
			       type: "post", 
			       url: "${base}/checkUserInfo.htm", 
				   data: {"hotelUser1.idno":idno, "hotelUser1.cardno":cardno}, 
				   dataType:'json', 
			       success: function (data) { 
			       		if(data){
			       			$("#cardmsg").html("");
			       			$("#regButton").removeAttr("disabled");
			       		}else{
			       			$("#cardmsg").html("该会员卡不存在或与身份证不匹配");
			       			$("#regButton").attr("disabled","true");
			       		}
			       }, 
			       error: function (XMLHttpRequest, textStatus, errorThrown) { 
			       	alert(errorThrown); 
			       } 
			       });
			}
		}
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
        <a href="" style=" color:#ab7b3e; padding-right:5px; font-family:'宋体';">元d洲酒店集团</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#ab7b3e;font-family:'宋体';">商祺会</a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">></a><a style=" color:#ab7b3e; padding-right:5px;font-family:'宋体';">会员注册</a>
        </div><!--right_neirong_title5 end-->
        <div style="width:705px; margin:48px auto 0 auto; border-bottom:1px solid #EBDED3;">
           <div style=" color:#916B3F; font-size:26px; padding-bottom:5px;">品悦卡在线申请</div>
           <div style="padding:10px 0 10px 10px; color:#666666;">带<sup style="color:#FF0000; vertical-align:top;">*</sup>为必填项</div>
           </div>
           <div style=" width:705px; margin:10px auto 0 auto; color:#666666;">
              <form id="regForm" name="regForm" action="${base}/user/updateUser.htm" method="post">
              <input name="hotelUser1.id" type="hidden" value="${hotelUser.id}"/>
              <input type="hidden" id="birthdays" name="hotelUser1.birthday" value="${hotelUser.birthday}"/>
              <input type="hidden"  name="hotelUser1.webusername" value="${hotelUser.webusername}"/>
              <input type="hidden"  name="hotelUser1.idtype" value="${hotelUser.idtype}"/>
              <input type="hidden" name="hotelUser1.idno" value="${hotelUser.idno}"/>
              <input type="hidden" name="hotelUser1.cardno" value="${hotelUser.cardno}"/>
			  <#if hotelUser.cardno != null>
			  	<input type="hidden" name="hotelUser1.phone" value="${hotelUser.phone}"/>
              <input type="hidden"  name="hotelUser1.firstname" value="${hotelUser.firstname}"/>
              <input type="hidden"  name="hotelUser1.lastname" value="${hotelUser.lastname}"/>
			  </#if>
                <table width="100%" cellpadding="0" cellspacing="0">
                   <tbody>
                      <tr>
                        <td style=" width:110px; padding:7px;"></td>
                         <td align="" style=" padding:7px;"><label style=" margin-right:5px;"><input type="radio" name="hotelUser1.level"  style="vertical-align:middle;" value="1" <#if hotelUser.level == 1>checked</#if>/>品悦卡</label><label><input type="radio" name="hotelUser1.level" style="vertical-align:middle;" value="3" <#if hotelUser.level == 3>checked</#if>/>合作伙伴</label></td>
                         <td></td>
                         <td></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>用户名：</td><td style=" padding:7px;"><input type="text" id="username" disabled name="hotelUser1.webusername" value="${hotelUser.webusername}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>姓：</td><td style=" padding:7px;"><input type="text" onkeyup="value=value.replace(/^[a-zA-Z0-9]+/g,'')" id="firstname" <#if hotelUser.cardno != null>disabled</#if> name="hotelUser1.firstname"  value="${hotelUser.firstname}" style=" width:100px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                         <!--<td align="right" style=" padding:7px;">拼音姓：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.firstnamePy" value="${hotelUser.firstnamePy}" style=" width:100px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>-->
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>名：</td><td style=" padding:7px;"><input type="text" id="lastname" onkeyup="value=value.replace(/^[a-zA-Z0-9]+/g,'')" <#if hotelUser.cardno != null>disabled</#if> name="hotelUser1.lastname"  value="${hotelUser.lastname}" style=" width:100px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                         <!--<td align="right" style=" padding:7px;">拼音名：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.lastnamePy" value="${hotelUser.lastnamePy}" style=" width:100px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>-->
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>性别：</td><td style=" padding:7px;"><select name="hotelUser1.sex" style=" width:50px; border:1px solid #8F9094; height:21px; padding:1px 2px 1px 0;"><option value="1" <#if hotelUser.sex == 1>selected</#if>>男</option><option value="2" <#if hotelUser.sex == 2>selected</#if>>女</option></select></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>证件类型：</td><td style=" padding:7px;"><select name="hotelUser1.idtype" disabled style=" width:100px; border:1px solid #8F9094; height:21px; padding:1px 2px 1px 0;"><option value="1" <#if hotelUser.idtype == 1>selected</#if>>身份证</option></select></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>证件号：</td><td style=" padding:7px;"><input type="text" id="idno" readonly name="hotelUser1.idno" disabled onchange="cBirthday();" value="${hotelUser.idno}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">生日：</td><td style=" padding:7px;"><input type="text" id="birthday" disabled name="hotelUser1.birthday" value="${hotelUser.birthday}" onclick="WdatePicker()" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">会员卡号：</td><td style=" padding:7px;"><input id="cardno" type="text" name="hotelUser1.cardno" disabled value="${hotelUser.cardno}" <#if hotelUser.cardno != null>disabled</#if> maxLength="14" onblur="checkCardNo();" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;"  onkeyup="this.value=check(this.value)"/><span id="cardmsg"></span></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>手机号码：</td><td style=" padding:7px;"><input type="text" id="phone" maxLength="11" <#if hotelUser.cardno != null>disabled</#if> name="hotelUser1.phone" value="${hotelUser.phone}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>电子邮箱：</td><td style=" padding:7px;"><input type="text" id="email"   name="hotelUser1.email" value="${hotelUser.email}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">固定电话：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.telephone" value="${hotelUser.telephone}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">QQ：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.qq" value="${hotelUser.qq}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">传真：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.fax" value="${hotelUser.fax}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">公司名称：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.company" value="${hotelUser.company}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">职务：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.position" value="${hotelUser.position}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">省份：</td>
                         <td style=" padding:7px;">
                         <input type="text" id="areaSelect" name="areaId" class="hidden" value="<#if hotelUser.area!>${hotelUser.area}<#elseif hotelUser.city!>${hotelUser.city}<#else>${hotelUser.province}</#if>" defaultSelectedPath="${hotelUser.province!},${hotelUser.city!},${hotelUser.area!}" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">地址：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.address" value="${hotelUser.address}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;">邮编：</td><td style=" padding:7px;"><input type="text" name="hotelUser1.postcode" value="${hotelUser.postcode}" style=" width:180px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /></td>
                      </tr>
                      <tr>
                         <td align="right" style=" padding:7px;"><sup style="color:#FF0000; vertical-align:text-top;">*</sup>验证码：</td><td style=" padding:7px;"><input type="text" id="mycode" name="mycode" style=" width:90px; border:1px solid #8F9094; height:20px; padding:0px 3px;" /><img id = "code_img" src="${base}/rand.htm" style="vertical-align:middle;"/><a href="javascript:void(0);" class = "code_c">换一张</a></td>
                      </tr>
                      <tr>
                         <td></td>
                         <td style=" padding:7px;"><input type="submit" id="regButton"  value="修改" style="font-size:12px; color:#fff; font-weight:bold; background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:27px; text-align:center; border: 0 none;" /></td>
                         <td></td>
                         <td></td>
                      </tr>
                   </tbody>
                </table>
              </form>
              <div style="position: absolute;display: none; "  class="email_div">
                            <div style="position:relative; z-index: 10010; left: 130px; top: -389px; width: 186px; overflow: hidden; border:1px solid #8F9094; background:#fff;">
                  <ul><li class="note" style=" padding:5px 0 0 10px; color:#333333;">请选择邮箱类型</li></ul>
                  <ul node-type="panel" class="list_panel">
                     <li onclick="mClick('@sina.com');"   class="list_item">@sina.com</li>
                     <li onclick="mClick('@163.com');"   class="list_item">@163.com</li>
                     <li onclick="mClick('@126.com');"   class="list_item">@126.com</li>
                     <li onclick="mClick('@qq.com');"   class="list_item">@qq.com</li>
                     <li onclick="mClick('@sina.cn');"   class="list_item">@sina.cn</li>
                     <li onclick="mClick('@hotmail.com');"   class="list_item">@hotmail.com</li>
                     <li onclick="mClick('@gmail.com');"   class="list_item">@gmail.com</li>
                     <li onclick="mClick('@sohu.com');"   class="list_item">@sohu.com</li>
                     <li onclick="mClick('@139.com');"   class="list_item">@139.com</li>
                     <li onclick="mClick('@189.cn');"   class="list_item">@189.cn</li>
                   </ul>
             </div>
             </div><!--email_div end-->
              
           </div>
        </div>
     </div><!--right_neirong5 end-->
  </div><!--content_pre5 end -->
  <#include "/content/common/footer.ftl">