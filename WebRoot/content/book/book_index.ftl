<#include "/content/common/meta.ftl">

<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
	<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript">  
function bookSub(){
	var realname = $("#realname").val();
	var idno = $("#idno").val();
	if(realname.length == 0){
		alert("请输入真实姓名");
		return;
	}else{
		reg=/[^\x00-\x80]/;
   if(!reg.test(realname)){
       alert("姓名必须为汉字!");
       return;
	}
	}
	var phone = $("#phone").val();
	
	var email = $("#email").val();
	if(phone.length == 0 || phone.length!= 11){
		alert("请输入正确的手机号码");
		return;
	}else{
		if(/^13\d{9}$/g.test(phone)||(/^15[0-35-9]\d{8}$/g.test(phone))||  
		(/^18[05-9]\d{8}$/g.test(phone))){    
		            //return true;  
		            if(/[^\x00-\x80]/.test(phone)){
		            	alert("手机号码不能为汉字");
		            	return;
		            }
		}else{  
					alert("请输入正确的手机号码");
		            return;  
		}  
	}
	
	if(email.length == 0){
		alert("请输入email");
		return;
	}else{
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
       var re = reg.test(email);
       if(!re){
			alert("请输入正确的email");
		    return;       
		   }
		   if(/[^\x00-\x80]/.test(email)){
		            	alert("email不能为汉字");
		            	return;
		            }
	}
	 if(/[^\x00-\x80]/.test(idno)){
		            	alert("身份证号码不能为汉字");
		            	return;
		            }
	var protocal = $("#protocal").val();
	if(protocal == 0){
		alert("请同意订房协议");
	}
	var remark = $("#remark").val();
	if(remark ==  "其他入住要求请填写..."){
		$("#remark").val("");
	}
	
	document.getElementById('bookSubForm').action = "bookDo.htm";
	if ($("#payByNet").attr("class")=='xm') {
		var pyflg=$("input[name='hotelOrder.paymentbank']:checked").val();
		if (pyflg=='alipay') {
			document.getElementById('bookSubForm').action = "/payment/postAliPay.htm?payType=1";
		}else if (pyflg=='ipsrmb') {
			document.getElementById('bookSubForm').action = "/payment/postIpsRmbPay.htm";
		} else if (pyflg=='ipscat') {
			document.getElementById('bookSubForm').action = "/payment/postIpsCatPay.htm";
		} 
	}
	
	
	
	
     $("#bookSubForm").submit();
	//document.bookSubForm.submit();
}
var bed = 100;
function caTotalMoney(){
	var hasBed = $("#hasBed").val();
	var bDays = ${bDays};
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	if(hasBed == 0){
		totalAmount = totalAmount + bed;
		$("#hasBed").attr("value", 1);
	}else{
		$("#hasBed").attr("value", 0);
	}
	$("#totalAmount").html(totalAmount);
}

function selCalMoney(){
	var hasBed = $("#hasBed").val();
	var bDays = ${bDays};
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	if(hasBed == 1){
		totalAmount = totalAmount + bed;
	}else{
	}
	$("#totalAmount").html(totalAmount);
	$("#totalOrderPay").val(totalAmount);
	sjson();
}


function chStatus(){
	var protocal = $("#protocal").val();
	if(protocal == 1){
		$("#protocal").checked = false;
		$("#protocal").val(0)
	}
	if(protocal == 0){
		$("#protocal").checked = true;
		$("#protocal").val(1);
	}
}

function editable(select1){
   if(select1.value == ""){
      var newvalue = prompt("请输入","");
      if(newvalue){
         addSelected(select1,newvalue,newvalue);
      }
   }
}

function addSelected(fld1,value1,text1){
    if (document.all)    {
            var Opt = fld1.document.createElement("OPTION");
            Opt.text = text1;
            Opt.value = value1;
            fld1.options.add(Opt);
            Opt.selected = true;
    }else{
            var Opt = new Option(text1,value1,false,false);
            Opt.selected = true;
            fld1.options[fld1.options.length] = Opt;
    }
}
var rzxxs = ${roomColumnList.size()};
function sjson(){
	var temp="{";
	for(i =0;i< rzxxs;i++){
		var ywy = $("#ywy" + i).val();
		var name = $("#rzname" + i).html();
		temp = temp + '"' + name + '":'+ '"' + ywy + '",';
	}
	var arrivaltime = $("#arrivaltime").val();
	temp = temp + '"抵店时间"' + ':' + '"' + arrivaltime + '前"}';
	$("#sremark").val(temp);
		
}
$().ready( function() {
	var temp="{";
	for(i =0;i< rzxxs;i++){
		var ywy = $("#ywy" + i).val();
		var name = $("#rzname" + i).html();
		temp = temp + '"' + name + '":'+ '"' + ywy + '",';
	}
	var arrivaltime = $("#arrivaltime").val();
	temp = temp + '"抵店时间"' + ':' + '"' + arrivaltime + '前"}';
	$("#sremark").val(temp);
	
});
function check(str){ 
	var temp="" 
	for(var i=0;i<str.length;i++) 
	     if(str.charCodeAt(i)>0&&str.charCodeAt(i)<255) 
	        temp+=str.charAt(i) 
	return temp 
} 
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

  <div class="content_pre" style=" float:left; background:#fff; padding-bottom:20px;">
     <div class="left_neirong" style=" float:left; width:230px; background-color:#e6ddd1; padding-bottom:316px;">
      <#include "/content/common/search_hotel_book.ftl">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
         
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong2" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title2">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">客房预订</a>
        </div><!--right_neirong_title2 end-->
        <div class="right_neirong_buzhou"><img src="${base}/statics/img/tow.png" /></div><!--right_neirong_buzhou end-->
        <div class="right_wrap" style=" width:730px; margin:10px auto 0px auto;">
        <form action="bookDo.htm" method="post" id="bookSubForm" name="bookSubForm">
        <input type="hidden" name="hotelOrder.actualprice" value="${actualprice}" id="actualprice"/>
        <input type="hidden" name="hotelOrder.roomtypecode" value="${roomtypecode}"/>
        <input type="hidden" name="hotelOrder.hotelcode" value="${hotelCode}"/>
        <input type="hidden" name="hotelName" value="${hotelName}"/>
        <input type="hidden" name="hotelOrder.arrivaldate" value="${arrivalDate}"/>
        <input type="hidden" name="hotelOrder.leavedate" value="${leaveDate}"/>
        <input type="hidden" name="hotelOrder.roomtypename" value="${roomtypename}"/>
        <input type="hidden" name="hotelOrder.paymentmode" value="2" id="paymentmode"/>
        <input type="hidden" name="hotelOrder.totalOrderPay" id="totalOrderPay" value="${actualprice*bookAmount*bDays}"/>
        <input type="hidden" name="memberType" value="${memberType}"/>
        <input id="sremark" type="hidden" name="hotelOrder.sremark" value=""/>
        <input id="hasBed" type="hidden" name="hotelOrder.addbed" value="0"/>
        <input type="hidden" name="cityCode" value="${cityCode}"/>
          <div class="right_top_1">
             <ul class="right_top_2">
                <li style="color:#fff; padding-left:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">预订房型</li>
                <li style="color:#80501b; font-family:'宋体'; padding-left:25px;font-size:16px; background:#f5f5f5; height:40px; line-height:40px; font-weight:bold; margin-bottom:2px; ">
                <span style=" margin-right:30px;">${hotelName}</span><span><a style=" margin-right:15px;">入住时间：${arrivalDate}</a><a>退房时间：${leaveDate}</a></span>
                </li>
                <li style="color:#666666; font-family:'宋体'; padding-left:25px;font-size:12px; background:#ededed; height:40px; line-height:40px;">
                <span>感谢您选择了<select style=" border:1px solid #8f9094; padding:2px;" name="hotelOrder.roomqty" id="bookAmount" onchange="selCalMoney();">
					<#list 1 .. max as index>
						<option value="${index}" <#if index == bookAmount>selected</#if>>${index}</option>
					</#list>                    
                </select>间<a style=" color:#a40000;">${roomtypename}</a>，远州酒店期待您的入住！</span>
                <span style=" margin-left:170px;"><#if memberType == 1>会员价总金额</#if><#if memberType == 2>散客价总金额</#if>：<a style=" color:#a40000; font:24px \5fae\8f6f\96c5\9ed1,\9ed1\4f53;">￥<span id="totalAmount">${actualprice*bookAmount*bDays}</span></a></span>
                </li>
                   
            </ul><!--right_top_2 end-->
          </div><!--right_top_1 end-->
          <div class="right_middle" style=" padding-top:25px;">
                <div style="color:#fff; padding-left:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">入住信息（请正确填写，所有项目必填）</div>
               <div class="st" style="background:#fff">
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="35">
                            <td style=" color:#666666; padding-left:10px;  background:#ededed;text-align:right;width:70px;" >姓名：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5 ;width:275px;">
                            <input type="text" id="realname" onkeyup="value=value.replace(/^[a-zA-Z0-9]+/g,'')"  name="hotelOrder.customername" value="<#if hotelUser!= null>${hotelUser.firstname}${hotelUser.lastname}</#if>" style=" width:98px; height:20px; border:1px solid #a1a1a1; margin-left:0px; margin-right:15px;position:relative;top:1px;" />
                            </td>
                            <td style=" color:#666666; padding-left:10px;  background:#ededed;width:70px;text-align:right;" >称呼：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                            <select id="arrivaltime" onchange="sjson();" style=" border:1px solid #8f9094; padding:1px;" name="hotelOrder.sex">
								<option <#if hotelUser!= null><#if hotelUser.sex ==1 >selected</#if><#else>selected</#if> value="1">先生</option>
								<option <#if hotelUser!= null><#if hotelUser.sex ==2 >selected</#if></#if>value="2">女士</option>
                            </select>
                            </td>
                          </tr>
                          <tr height="35">
                        <td style=" color:#666666; padding-left:10px;  background:#ededed;text-align:right;">手机：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                            <input type="text" id="phone" value="<#if hotelUser!= null>${hotelUser.phone}</#if>" maxLength="11" name="hotelOrder.phone"  style=" width:98px; height:20px; border:1px solid #a1a1a1; margin-left:0px;" onkeyup="value=value.replace(/[^0-9]/g,'')" />
							<#if user== null>
                            	<font style=" color:#f90;padding-left:12px;text-align:right;">请填写正确手机号</font> &nbsp;&nbsp;&nbsp;
                             </#if>                          
                            </label></td>
                    	    <td style=" color:#666666; padding-left:10px;  background:#ededed;text-align:right;"> 验证码：</td>
                           <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;"><input type="text" id="phonecode" value="" name="hotelOrder.phonecode"  style=" width:50px; height:20px; border:1px solid #a1a1a1; margin-left:0px;" /> <input type="button" id="phone" value="获取"   style=" width:45px; height:20px;  margin-left:0px;" /></td>
                          <tr height="35">
                               <td style=" color:#666666;padding-left:20px;background:#ededed;text-align:right;">电子邮箱：</td>
                             <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                             <input type="text" id="email" value="<#if hotelUser!= null>${hotelUser.email}</#if>" name="hotelOrder.email" style=" width:180px; _width:150px; height:20px; border:1px solid #a1a1a1; margin-left:0px;" <#if hotelUser== null>onclick="eClick();"</#if> onkeyup="this.value=check(this.value)" />
                             </td>                             

                            <td style=" color:#666666;padding-left:20px;background:#ededed;text-align:right;">抵店时间：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;"><select id="arrivaltime" onchange="sjson();" style=" border:1px solid #8f9094; padding:1px;" name="hotelOrder.arrivaltime">
									<#list 1 .. 24 as a>
										<option <#if a == 12>selected</#if> value="${a}:00">${a}:00</option>
									</#list>                               	
                            </select>前</td>
                          </tr>
                          <tr height="120" bgcolor="#ededed">
							<td style=" color:#666666; padding-left:20px; padding-top:10px; padding-bottom:10px;" colspan="5">
                            </select><span style="vertical-align:top;display:block;margin-bottom:7px;">入住要求：<!--加床：<input id="hasBed" name="hotelOrder.addbed" style="vertical-align:top;" type="checkbox" value="0" onclick="caTotalMoney();" />&nbsp;&nbsp;-->
                            <#list roomColumnList as roomC>
                            	<span id="rzname${roomC_index}">${roomC.name}</span>:
	                            <select id="ywy${roomC_index}" onchange="sjson();">
	                            <#list roomColumnArticleList as column>
	                            	<#if column.columnId == roomC.id>
	                            		<option vaue="${column.name}" >${column.name}</option>
	                            	</#if>
	                            </#list>
	                            </select>
                            </#list>
						</span><textarea id="remark" name="hotelOrder.remark" cols="80" rows="2" style="border:1px solid #8f9094;resize:none;color:#a1a1a1;height:60px;height:60px\9;" onblur="if(this.value == ''){this.value = '其他入住要求请填写...'}" onfocus="if(this.value == '其他入住要求请填写...'){this.value = ''}" max>其他入住要求请填写...</textarea></td>                          </tr>
                          
                        </tbody>
                     </table>
              </div><!--st end-->
          </div><!--right_middle2 end-->
          <div class="right_down" style="padding-top:20px; float:left; width:730px;">
                <div style="color:#fff; padding-left:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">支付方式</div>
                  <div style=" background:#e6ddd1; float: left; width:730px;">
                     <ul class="xt" style=" float:left; margin-bottom:10px;">
                       <li id="payByNet">选择在线支付</li>
                     
                       <li class="xm">选择前台支付</li>
                     </ul>
                     <div style=" width:640px; margin:0px auto 0 auto; clear:both;" class="wrp">
                       <div style="display:none"  class="wrp-1 wrp-2">
                    <#if user != null>
                       <div style=" border:1px solid #a88f66; background:#fff;">
                          <ul style=" padding-top:10px; padding-left:20px; padding-bottom:10px;background:#fffeee;  ">
                            <li style=" margin-bottom:15px;color:#363636;">担保订单和预付房费订单，酒店会将房间保留至到店次日中午12时，取消必须提前24小时通知酒店。如果未在规定的时间内取消（或当晚未到店），酒店将收取一晚房费。</li>
                            <li style="color:#363636;">如您行程有变，不能及时入住或需提前离店，请提前通知我们或酒店前台。</li>
                          </ul>
                          <ul style=" padding-top:10px; padding-left:20px; padding-bottom:140px; ">
                             <li><label><input type="radio" name="hotelOrder.paymentbank" style=" position:relative; top:-10px;" id="alipay" value="alipay"  checked/><img src="${base}/statics/img/zhifubao.png"  /><span style=" position:relative; top:-10px; color:#666666;">支付宝（包括支付宝账户支付以及大部分国内借记卡和信用卡）</span></label></li>
                       <#--    <li><label><input type="radio" name="hotelOrder.paymentbank" style=" position:relative; top:-10px;" id="ipsrmb" value="ipsrmb"/><img src="${base}/statics/img/ips.png" /><span style=" position:relative; top:-10px; color:#666666;">环迅国内银行卡（包括大部分国内借记卡和信用卡）</span></label></li>-->
                          </ul>
                          </div>
                     </#if>
                       </div>
                    
                    <div style=" display:block;" class="wrp-1"><input type="hidden" name="hotelOrder.paymentbank" value="front"/>您的订单将保留到抵店之日的18:00。超过此时间后，酒店将会对客房进行重新分配，敬请注意！</div>
                   <div style=" padding:10px 0 10px 0px;"><input id="protocal" checked type="checkbox"  onclick="chStatus();" value="1" style=" position:relative;top:2px;"/><span style="color:#363636; margin-left:10px;">我已阅读并同意<a style="color:#ab7b3e;">"远州酒店集团官网版声明及隐私条款"</a></span></div>
                    <#if user != null>
                    <script>
                       jQuery(function(){
						   
						 jQuery(".xt li").click(function(){
							 var i=jQuery(this).index();
							 jQuery(".xt li").removeClass("xm")
							 jQuery(this).addClass("xm")
							 jQuery(".wrp div.wrp-1").css("display","none")
							 jQuery(".wrp div.wrp-1").eq(i).css("display","block")
							 if(i == 0){
							 	$("#paymentmode").val("1");
							 	$("#paymentWay1").val("1");
							 	$("#paymentWay2").val("2");
							 }else{
							 	$("#paymentmode").val("2");
							 	$("#paymentWay1").val("");
							 	$("#paymentWay2").val("");
							 }		
							 })
						   })
                    
                    </script>
                    </#if>
                    </div><!-- wrp end-->
                 </div>
                 <div style=" float:right; padding-top:20px;">
                 <input type="button"  style=" background:url(${base}/statics/img/btn.png) no-repeat; width:64px; height:22px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="上一步" onclick="javascript:history.go(-1);">
                 <input type="button" onclick="bookSub();" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:64px; height:22px; line-height:25px; text-align:center; color:#fff; border:0 none;"  value="下一步"></div>
            </div><!--right_down2 end-->
            </form>
                          <div style="position: absolute;display: none; "  class="email_div">
                            <div style="position:relative;_position:relative; z-index: 10010; left: 92px; top: -127px;_top:-309px; width: 186px; overflow: hidden; border:1px solid #8F9094; background:#fff;">
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
            
        </div><!--right_wrap2 end-->
     </div><!--right_neirong2 end-->
  </div><!--content_pre2 end -->
<#include "/content/common/footer.ftl">