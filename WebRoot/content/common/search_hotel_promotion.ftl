      	<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript">  
function changChild(code){  
    $.post("getHotel.htm",{"code":code},function(json){  
        $("#hotel").html("");
        for(var i=0;i<json.length;i++){  
            $("#hotel").append("<option value='"+json[i].code+"'>"+json[i].name+"</option>");  
        }  
    },'json');  
}  
$(function(){  
    $("#city").change(function(){  
        changChild($(this).val());  
    });  
    d = new Date();
    var aday = d.getDate();
    if(aday < 10){
    	aday = "0" + aday;
    }
	$("#arrivalDate").val(d.getFullYear()+"-"+(d.getMonth()+1)+"-"+aday);
	d.setDate(d.getDate() + 1); 
	var lday = d.getDate();
    if(lday < 10){
    	lday = "0" + lday;
    }
	$("#leaveDate").val(d.getFullYear()+"-"+(d.getMonth()+1)+"-"+lday);
});  
function clDate(){
	var ld = $("#arrivalDate").val();
	var d = parseISO8601(ld);
	d.setDate(d.getDate() + 1);
	 var aday = d.getDate();
    if(aday < 10){
    	aday = "0" + aday;
    }
	$("#leaveDate").val(d.getFullYear()+"-"+(d.getMonth()+1)+"-"+aday);
	
}
function parseISO8601(dateStringInRange) {  
   var isoExp = /^\s*(\d{4})-(\d\d)-(\d\d)\s*$/,  
       date = new Date(NaN), month,  
       parts = isoExp.exec(dateStringInRange);  
  
   if(parts) {  
     month = +parts[2];  
     date.setFullYear(parts[1], month - 1, parts[3]);  
     if(month != date.getMonth() + 1) {  
       date.setTime(NaN);  
     }  
   }  
   return date;  
 }  
function searchRoomFormSub(){
	var city = $("#city").val();
	if(city == ""){
		alert("请选城市");
		return;
	}
	var arrivalDate = $("#arrivalDate").val();
	if(arrivalDate == ""){
		alert("请选入住日期");
		return;
	}
	var leaveDate = $("#leaveDate").val();
	if(leaveDate == ""){
		alert("请选退房日期");
		return;
	}
	var memberTypes = document.getElementsByName('memberType');   
	var mt;
  	for(i = 0;i< memberTypes.length; i ++){   
  	if(memberTypes[i].checked){   
  		mt = memberTypes[i].value;   
 	 }
  	}
  	if(mt == 1){
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
  	searchAjaxLogin();
  	}else{
		document.searchRoomForm.submit();
  	}
}
</script>   
      <#include "/content/common/loginjs.ftl">
          <div class="left_middle">
            <div style="background:url(${base}/statics/img/r1.png) no-repeat; width:210px; height:32px; line-height:32px;margin-top:10px;"><a href="#" style=" color:#fff; font-size:14px; margin-left:30px;">查询/预定</a></div>
         <form action="searchRoom.htm" method="post" name="searchRoomForm" style=" padding:0;">
            <div class="text" style=" background:#b2a495;">
            <div style=" padding-top:15px;" class="check">
            <div style="margin-bottom:15px;">
            <label style="width:60px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px; *margin-left:0px; font-weight:700;">城市：</label>
            <select style="width:140px; background:#fff; padding:1px; border:0 none;" name="cityCode" id="city">
               <option value="">请选择城市</option>
               <#list hotelCityList as hotel>
               		<option value="${hotel.code}">${hotel.name}</option>
               </#list>
            </select>
            </div>
            
            <div style="margin-bottom:15px;">
            <label style="width:60px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px;*margin-left:0px; font-weight:700;">酒店：</label>
            <select style="width:140px; background:#fff; padding:1px; border:0 none;" name="hotelCode" id="hotel">
               <option value="">请选择酒店</option>
            </select>
            </div>
            
            <div style="margin-bottom:15px;">
            <label style="width:60px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px;*margin-left:0px; font-weight:700;">入住日期：</label>
            <input type="text" id="arrivalDate" name="arrivalDate" onfocus="WdatePicker({onpicked:clDate,minDate:'%y-%M-%d'})" style="width:133px;background-color:#fff;background-image:url(${base}/statics/img/calendar.gif);background-repeat:no-repeat;background-position:120px center;
            padding:3px;border:0 none;cursor:default;"/>
            </div>
            
            <div style="margin-bottom:15px;">
            <label style="width:60px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px;*margin-left:0px; font-weight:700;">退房日期：</label>
            <input type="text" id="leaveDate" name="leaveDate" onclick="WdatePicker({minDate:'%y-%M-%d'})" style="width:133px; background-color:#fff; background-image:url(${base}/statics/img/calendar.gif); background-repeat:no-repeat; background-position:120px center;padding:3px; border:0 none;cursor:default;"/>
            </div>
            
            <div style="margin-bottom:15px;">
             <label style="width:62px;*width:55px;color:#fff;font-weight:700; display:inline-block; margin-left:5px;">
             <input type="radio" id="member_type_0" name="memberType" value="2" <#if user!=null >disabled <#else>checked</#if> /> 散客
             </label>
			 <label style="width:62px;*width:55px;color:#fff;font-weight:700; display:inline-block;">
             <input type="radio" id="member_type_1" name="memberType" value="1" <#if user!=null >disabled checked</#if>/> 会员
             </label>
			 <label style="width:72px;*width:90px;color:#fff;font-weight:700;display:inline-block;font-family:'宋体';">
             <input type="radio" id="member_type_2" <#if user!=null >disabled</#if> name="memberType" value="3"/> 协议客户
             </label>
             
             </div>
             <div class="gt-panel">
						<ol class="hide hide1" style=" display:none; background: url(${base}/statics/img/c0.png) no-repeat; height:70px;">
							<li style=" padding:7px 0 5px 0;">
                            <label style="width:65px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px; font-weight:700;">订&nbsp;&nbsp;单&nbsp;&nbsp;号：</label>
                            <input type="text" id="username" <#if user!=null >disabled value="${user.webusername}"</#if> <#if user!=null>  value="${user.webusername}"<#else>value="会员卡号/手机/邮箱/QQ/微博"</#if> name="hotelUser1.webusername" style="width:120px; background:#fff; padding:4px 3px 4px 3px; border:0 none;" 
                            javascript onblur="if(this.value == ''){this.value = '会员卡号/手机/邮箱/QQ/微博'}" onfocus="if(this.value == '会员卡号/手机/邮箱/QQ/微博'){this.value = ''}" />                           
                            </li>
							<li style=" margin-bottom:0px;">
                            <label style="width:65px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px; font-weight:700;">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</label>
                            <input type="password" id="passwords" name="hotelUser1.password" onkeydown="if(event.keyCode==13){subForm();}" <#if user!=null >disabled value="${user.password}"</#if> style="width:120px; background:#fff; padding:3px 10px 3px 0px; border:0 none;"/>
                            </li>
						</ol>
						<ol class="hide hide2" style="display:none">
							<li style=" margin-bottom:15px;">
                            <label style="width:65px; color:#fff; display:inline-block; vertical-align:middle; margin-left:5px; font-weight:700;">协&nbsp;&nbsp;议&nbsp;&nbsp;号：</label>
                            <input type="text" name="protocolNumber" style="width:120px; background:#fff; padding:3px 10px 3px 0px; border:0 none;"/>
                            </li>
						</ol>
			</div>

            <div style="margin-bottom:0px; text-align:left; margin-left:5px; margin-top:0px; padding-bottom:5px;">
               <input type="button" value=" " name="btn" style=" background:url(${base}/statics/img/check1.png) no-repeat; width:98px; height:33px; border:0 none;" onclick="searchRoomFormSub();"/>
               <span style=" display:inline-block; background:url(${base}/statics/img/right0.png) no-repeat; padding-left:10px; position:relative; left:3px; top:-3px;*top:-9px; font-weight:bold;">
               <a id="tender" style=" font-family:'宋体'; font-size:12px; color:#fff;">查找/更改订单</a>
               </span>
            </div>
            <script>
               jQuery(function(){
				   jQuery("#member_type_0").click(function(){
					      
					   jQuery(".hide1").css("display","none")
					   
					   jQuery(".hide2").css("display","none")
					   
					   })
				   
				   jQuery("#member_type_1").click(function(){
					      
					   jQuery(".hide1").css("display","block")
					   
					   jQuery(".hide2").css("display","none")
					   
					   })
				   
				   jQuery("#member_type_2").click(function(){
					      
					   jQuery(".hide2").css("display","block")
					   jQuery(".hide1").css("display","none")
					   
					   })
				    })
           </script>
              </div><!--check end-->
            </div><!--text end-->
         </form><!--form end-->
      </div><!--left_middle end-->
