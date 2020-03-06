<#include "/content/common/meta.ftl">

<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
	<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript">  
function bookSub(){
	var realname = $("#realname").val();
	if(realname.length == 0){
		alert("请输入真实姓名");
		return;
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
		}else{  
					alert("请输入正确的手机号码");
		            return;  
		} 
	document.getElementById('bookSubForm').action = "updateOrder.htm";
	if ($("#payByNet").attr("class")=='xm') {
		var pyflg=$("input[name='hotelOrder.paymentbank']:checked").val();
		if (pyflg=='alipay') {
			document.getElementById('bookSubForm').action = "/payment/postAliPay.htm?payType=2";
		}
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
	}

	var protocal = $("#protocal").val();
	if(protocal == 0){
		alert("请同意订房协议");
	}
	document.bookSubForm.submit();
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

$().ready( function() {
	var hasBed = ${hotelOrder.addbed};
	var bDays = ${bDays};
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	if(hasBed == 1){
		totalAmount = totalAmount + bed;
		$("#hasBed").attr("checked", true);
	}else{
	}
	$("#totalAmount").html(totalAmount);
	
});

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
var srm = ${hotelOrder.sremark};
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
        <form action="updateOrder.htm" method="post" id="bookSubForm" name="bookSubForm">
        <input type="hidden" name="hotelOrder1.id" value="${hotelOrder.id}"/>
        <input type="hidden" name="hotelOrder1.actualprice" value="${hotelOrder.actualprice}" id="actualprice"/>
        <input type="hidden" name="hotelOrder1.roomtypecode" value="${hotelOrder.roomtypecode}"/>
        <input type="hidden" name="hotelOrder1.hotelcode" value="${hotelOrder.hotelcode}"/>
        <input type="hidden" name="hotelName" value="${hotelOrder.hotelname}"/>
        <input type="hidden" name="hotelOrder1.arrivaldate" value="${hotelOrder.arrivaldate?string("yyyy-MM-dd")}"/>
        <input type="hidden" name="hotelOrder1.leavedate" value="${hotelOrder.leavedate?string("yyyy-MM-dd")}"/>
        <input type="hidden" name="hotelOrder1.roomtypename" value="${hotelOrder.roomtypename}"/>
        <input type="hidden" name="hotelOrder1.paymentmode" value="${hotelOrder.paymentmode}" id="paymentmode"/>
        <input type="hidden" name="memberType" value="${hotelOrder.membertype}"/>
        <input type="hidden" name="hotelOrder.totalOrderPay" id="totalOrderPay" value="${hotelOrder.totalOrderPay}"/>
        <input id="sremark" type="hidden" name="hotelOrder1.sremark" value="${hotelOrder.sremark}"/>
        <input id="hasBed" type="hidden" name="hotelOrder1.addbed" value="0"/>
          <div class="right_top_1">
             <ul class="right_top_2">
                <li style="color:#fff; padding-left:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">预订房型</li>
                <li style="color:#80501b; font-family:'宋体'; padding-left:25px;font-size:16px; background:#f5f5f5; height:40px; line-height:40px; font-weight:bold; margin-bottom:2px; ">
                <span style=" margin-right:30px;">${hotelOrder.hotelname}</span><span><a style=" margin-right:15px;">入住时间：${hotelOrder.arrivaldate?string("yyyy-MM-dd")}</a><a>退房时间：${hotelOrder.leavedate?string("yyyy-MM-dd")}</a></span>
                </li>
                <li style="color:#666666; font-family:'宋体'; padding-left:25px;font-size:12px; background:#ededed; height:40px; line-height:40px;">
                <span>感谢您选择了<select style=" border:1px solid #8f9094; padding:2px;" name="hotelOrder1.roomqty" id="bookAmount" onchange="selCalMoney();">
					<#list 1 .. 5 as index>
						<option value="${index}" <#if index == hotelOrder.roomqty>selected</#if>>${index}</option>
					</#list>                    
                </select>间<a style=" color:#a40000;">${hotelOrder.roomtypename}</a>，远州酒店期待您的入住！</span>
                <span style=" margin-left:170px;">总金额：<a style=" color:#a40000; font:24px \5fae\8f6f\96c5\9ed1,\9ed1\4f53;">￥<span id="totalAmount">${hotelOrder.actualprice?number*hotelOrder.roomqty?number*bDays}</span></a></span>
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
                            <input type="text" id="realname" onkeyup="value=value.replace(/^[a-zA-Z0-9]+/g,'')"  name="hotelOrder1.customername" value="${hotelOrder.customername}" style=" width:98px; height:20px; border:1px solid #a1a1a1; margin-left:0px; margin-right:15px;position:relative;top:1px;" />
                            </td>
                            <td style=" color:#666666; padding-left:10px;  background:#ededed;width:70px;text-align:right;" >称呼：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                            <select id="sex" onchange="sjson();" style=" border:1px solid #8f9094; padding:1px;" name="hotelOrder1.sex">
								<option<#if hotelOrder.sex ==1 >selected</#if> value="1">先生</option>
								<option <#if hotelOrder.sex ==2 >selected</#if>value="2">女士</option>
                            </select>
                            </td>
                          </tr>
                          <tr height="35">
                        <td style=" color:#666666; padding-left:10px;  background:#ededed;text-align:right;">手机：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                            <input type="text" id="phone" value="${hotelOrder.phone}" maxLength="11" name="hotelOrder1.phone"  style=" width:98px; height:20px; border:1px solid #a1a1a1; margin-left:0px;" onkeyup="value=value.replace(/[^0-9]/g,'')" />
							<#if user== null>
                            	<font style=" color:#f90;padding-left:12px;text-align:right;">请填写正确手机号</font> &nbsp;&nbsp;&nbsp;
                             </#if>                          
                            </label></td>
                             <td style=" color:#666666;padding-left:20px;background:#ededed;text-align:right;">电子邮箱：</td>
                             <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;">
                             <input type="text" id="email" value="${hotelOrder.email}" name="hotelOrder1.email" style=" width:180px; _width:150px; height:20px; border:1px solid #a1a1a1; margin-left:0px;" <#if hotelUser== null>onclick="eClick();"</#if> onkeyup="this.value=check(this.value)" />
                             </td> 
                    	   <tr height="35">
                                                          

                            <td style=" color:#666666;padding-left:20px;background:#ededed;text-align:right;">抵店时间：</td>
                            <td style=" color:#666666; padding-left:10px;  background:#f5f5f5;"><select id="arrivaltime" onchange="sjson();" style=" border:1px solid #8f9094; padding:1px;" name="hotelOrder1.arrivaltime">
									<#list 1 .. 24 as a>
										<option  <#if a == hotelOrder.arrivaltime.substring(0,hotelOrder.arrivaltime.indexOf(":"))> selected </#if> value="${a}:00">${a}:00</option>
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
	                            		<option vaue="${column.name}" 
	                            		<#list kVObjectList as kv>
	                            			<#if kv.name == roomC.name>
	                            				<#if kv.value == column.name>
	                            					selected
	                            				</#if>
	                            			</#if>
	                            		</#list>
	                            		>${column.name}</option>
	                            	</#if>
	                            </#list>
	                            </select>
                            </#list>
						</span><textarea id="remark" name="hotelOrder1.remark" cols="80" rows="2" style="border:1px solid #8f9094;resize:none;color:#a1a1a1;height:60px;height:60px\9;" onblur="if(this.value == ''){this.value = '其他入住要求请填写...'}" onfocus="if(this.value == '其他入住要求请填写...'){this.value = ''}" ><#if hotelOrder.remark != null>${hotelOrder.remark}<#else>其他入住要求请填写...</#if></textarea></td>                          </tr>
                          
                        </tbody>
                     </table>
              </div><!--st end-->
          </div><!--right_middle2 end-->
          <div class="right_down" style="padding-top:20px; float:left; width:730px;">
                <div style="color:#fff; padding-left:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">支付方式</div>
                  <div style=" background:#e6ddd1; float: left; width:730px;">
                     <ul class="xt" style=" float:left; margin-bottom:10px;">
                       <li id="payByNet" <#if hotelOrder.paymentmode == 1>class="xm"</#if>>选择在线支付</li>
                     
                       <li <#if hotelOrder.paymentmode == 2>class="xm"</#if>>选择前台支付</li>
                     </ul>
                     <div style=" width:640px; margin:0px auto 0 auto; clear:both;" class="wrp">
                       <div <#if hotelOrder.paymentmode == 1>style=" display:block;"<#else>style=" display:none;"</#if>  class="wrp-1 wrp-2">
                       <div style=" border:1px solid #a88f66; background:#fff;">
                          <ul style=" padding-top:10px; padding-left:20px; padding-bottom:10px;background:#fffeee;  ">
                            <li style=" margin-bottom:15px;color:#363636;">担保订单和预付房费订单，酒店会将房间保留至到店次日中午12时，取消必须提前24小时通知酒店。如果未在规定的时间内取消（或当晚未到店），酒店将收取一晚房费。</li>
                            <li style="color:#363636;">如您行程有变，不能及时入住或需提前离店，请提前通知我们或酒店前台。</li>
                          </ul>
                          <ul style=" padding-top:10px; padding-left:20px; padding-bottom:140px; ">
                             <li><label><input type="radio" name="hotelOrder.paymentbank" style=" position:relative; top:-10px;" id="alipay" value="alipay"  checked/><img src="${base}/statics/img/zhifubao.png"  /><span style=" position:relative; top:-10px; color:#666666;">支付宝（包括支付宝账户支付以及大部分国内借记卡和信用卡）</span></label></li>
                       <#--  <li><label><input type="radio" name="hotelOrder.paymentbank" style=" position:relative; top:-10px;" id="ipsrmb" value="ipsrmb"/><img src="${base}/statics/img/ips.png" /><span style=" position:relative; top:-10px; color:#666666;">环迅国内银行卡（包括大部分国内借记卡和信用卡）</span></label></li>-->
                          </ul>
                          </div>
                       </div>
                    
                    <div  class="wrp-1" <#if hotelOrder.paymentmode == 2>style=" display:block;"<#else>style=" display:none;"</#if>><input type="hidden" name="hotelOrder.paymentbank" value="front"/>您的订单将保留到抵店之日的18:00。超过此时间后，酒店将会对客房进行重新分配，敬请注意！</div>
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
                 <input type="button" / style=" background:url(${base}/statics/img/btn.png) no-repeat; width:64px; height:22px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="上一步" onclick="javascript:history.go(-!);">
                 <input type="button" onclick="bookSub();" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:64px; height:22px; line-height:25px; text-align:center; color:#fff; border:0 none;"  value="下一步"></div>
            </div><!--right_down2 end-->
            </form>
                          <div style="position: absolute;display: none; "  class="email_div">
                            <div style="position:relative;_position:relative; z-index: 10010; left: 530px; top: -163px;_top:-345px; width: 186px; overflow: hidden; border:1px solid #8F9094; background:#fff;">
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