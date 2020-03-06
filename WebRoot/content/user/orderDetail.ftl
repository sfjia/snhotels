<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript" src="${base}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.card.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.validate.methods.js"></script>

<script type="text/javascript">  
function bookSub(){
	document.bookSubForm.submit();
}

$().ready(function() {

	var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelOrder.roomRemark":{
					required:true
				},
				
			},
			messages: {
				"hotelOrder.roomRemark":{
					required:"评价不能为空!"
				},
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
	

})

</script>
  <div class="content_pre3" style=" float:left; background:#fff;">
     <div class="left_neirong" style=" float:left; width:230px; background-color:#e6ddd1; padding-bottom:680px;">
      <#include "/content/common/search_hotel_book.ftl">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong3" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title3">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">元洲酒店集团</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">订单详情</a>
        </div><!--right_neirong_title3 end-->
        <form id="validateForm" class="form" action="/user/updateOrderDetail.htm"  method="post"> 
        <input type="hidden" id="id" name="hotelOrder.id" value=${hotelOrder.id} />
        <div class="right_wrap" style=" width:730px; margin:10px auto 0px auto;">
          <div class="right_middle" style=" padding-top:10px;">
                <div style="color:#fff; padding-left:35px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">订房信息</div>
               <div class="st">
                      <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background-color:#ededed;" width="172">订单号：</td>
                            <td style="color:#b08551; background:#f5f5f5; padding-left:25px;" width="172">${hotelOrder.orderno}</td>
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;" width="172">客人姓名：</td>
                            <td style="background:#f5f5f5; padding-left:25px;" width="172">${hotelOrder.customername}</td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">酒店名称：</td>
                            <td style="color:#b08551;background:#f5f5f5; padding-left:25px;">${hotelOrder.hotelname}</td>
                      
                      
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">入住日期：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.arrivaldate?string("yyyy-MM-dd")}</td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">退房日期：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.leavedate?string("yyyy-MM-dd")}</td>
                         
                       
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">房间类型：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.roomtypename}</td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">早餐：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">	    
                            	<#if hotelRoom != null>                         
	                            	<#if hotelRoom.roomBreakfast == 0>无</#if>
	                            	<#if hotelRoom.roomBreakfast == 1>单早</#if>
	                            	<#if hotelRoom.roomBreakfast == 2>双早</#if>
	                            </#if>
							</td>
                        
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">宽带：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">
                            	<#if hotelRoom != null>                         
	                            	<#if hotelRoom.roomFreeNet == 1>有<#else>无</#if>
	                            </#if>
                            </td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">房间价格：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">￥${hotelOrder.actualprice}.00</td>
                          
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">房间数量：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.roomqty}间</td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">订单总价：</td>
                            <td style="background:#f5f5f5; padding-left:25px;color:#FF0000">￥${hotelOrder.amount}.00</td>
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">订单状态：</td>
                            <td style="background:#f5f5f5; padding-left:25px;"><#if hotelOrder.orderstatus == 1>未支付</#if><#if hotelOrder.orderstatus == 2>已支付</#if><#if hotelOrder.orderstatus == 3>已取消</#if></td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">支付方式：</td>
                            <td style="background:#f5f5f5; padding-left:25px;"><#if hotelOrder.paymentmode == 1>在线支付</#if><#if hotelOrder.paymentmode == 2>前台支付</#if></td>
                         <#-- </tr>
                          <#if hotelOrder.paymentmode == 1 && hotelOrder.paymentSn !=null>
                          <tr height="30">-->
                          <#if hotelOrder.paymentmode == 1 && hotelOrder.paymentSn !=null>
                           <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">支付订单号</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.paymentSn}</td>
                          </tr>
                          </#if>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">入住要求：</td>
                            <td style="background:#f5f5f5; padding-left:25px;" colspan="3">${hotelOrder.sremark}</td>
                          </tr>
                        </tbody>
                     </table>
              </div><!--st end-->
          </div><!--right_middle3 end-->
          <div class="right_down" style="padding-top:20px; float:left; width:730px;">
                <div style="color:#fff; padding-left:35px;font-size:16px; background:#a88f66; height:30px; line-height:30px; ">入住信息：</div>
                <div>
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;" width="172">客人姓名：</td>
                            <td style="background:#f5f5f5; padding-left:25px;" width="172">${hotelOrder.customername}</td>
                         
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;" width="172">手机：</td>
                            <td style="background:#f5f5f5; padding-left:25px;" width="172">${hotelOrder.phone}</td>
                          </tr>
                          <tr height="30">
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">电子邮箱：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.email}</td>
                         
                            <td align="center" style=" font-family:'宋体'; color:#363636; background:#ededed;">抵店时间：</td>
                            <td style="background:#f5f5f5; padding-left:25px;">${hotelOrder.arrivaltime}前</td>
                          </tr>
                        </tbody>
                     </table>
                  </div>
                  <#if type==1>
                  <div style=" background:#fffeed; color:#80501b; font-size:16px; margin-top:20px;">
                     <h3 style="color:#80501b; font-size:16px; padding:10px 0 10px 20px; font-weight:normal;">我要点评</h3>
                     <table cellpadding="0" cellspacing="0" style=" margin-left:45px;">
                        <tbody>
                          <tr>
                              <td>客房：</td>
                              <td style="padding-left:30px;"><span style=" display:inline-block; width:86px; height:8px; border:1px solid #a88f66; position:relative;"><i style=" width:68px; height:6px;background:url(${base}/statics/img/jindu.png); position:absolute;top:1px;"></i></span>&nbsp;&nbsp;4.5</td>
                          </tr>
                          <tr height="10">
                          		<td colspan="2">
                          			<input id="kfPoint" type="radio"  value="1" name="hotelOrder.kfPoint" />1<input id="kfPoint" type="radio" value="2" name="hotelOrder.kfPoint"/>2
                          			<input id="kfPoint" type="radio"  value="3" name="hotelOrder.kfPoint" />3<input id="kfPoint" type="radio" value="4" name="hotelOrder.kfPoint"/>4
                          			<input id="kfPoint" type="radio" checked="checked" value="5" name="hotelOrder.kfPoint" />5
                          		</td>
                          </tr>
                          <tr>
                              <td>服务：</td>
                              <td style="padding-left:30px;"><span style=" display:inline-block; width:86px; height:8px; border:1px solid #a88f66; position:relative;"><i style=" width:85px; height:6px;background:url(${base}/statics/img/jindu.png); position:absolute;top:1px;"></i></span>&nbsp;&nbsp;5.0</td>
                          </tr>
                          <tr height="10">
                          		<td colspan="2">
                          			<input id="fwPoint" type="radio"  value="1" name="hotelOrder.fwPoint" />1<input id="fwPoint" type="radio" value="2" name="hotelOrder.fwPoint"/>2
                          			<input id="fwPoint" type="radio"  value="3" name="hotelOrder.fwPoint" />3<input id="fwPoint" type="radio" value="4" name="hotelOrder.fwPoint"/>4
                          			<input id="fwPoint" type="radio" checked="checked" value="5" name="hotelOrder.fwPoint" />5
                          		</td>
                          </tr>
                          <tr>
                              <td>餐饮：</td>
                              <td style="padding-left:30px;"><span style=" display:inline-block; width:86px; height:8px; border:1px solid #a88f66; position:relative;"><i style=" width:68px; height:6px;background:url(${base}/statics/img/jindu.png); position:absolute;top:1px;"></i></span>&nbsp;&nbsp;4.5</td>
                          </tr>
                          <tr height="10">
                          		<td colspan="2">
                          			<input id="cyPoing" type="radio"  value="1" name="hotelOrder.cyPoing" />1<input id="cyPoint" type="radio" value="2" name="hotelOrder.cyPoing"/>2
                          			<input id="cyPoing" type="radio"  value="3" name="hotelOrder.cyPoing" />3<input id="cyPoint" type="radio" value="4" name="hotelOrder.cyPoing"/>4
                          			<input id="cyPoing" type="radio" checked="checked" value="5" name="hotelOrder.cyPoing" />5
                          		</td>
                          </tr>
                          <tr>
                              <td>康乐：</td>
                              <td style="padding-left:30px;"><span style=" display:inline-block; width:86px; height:8px; border:1px solid #a88f66; position:relative;"><i style=" width:85px; height:6px;background:url(${base}/statics/img/jindu.png); position:absolute;top:1px;"></i></span>&nbsp;&nbsp;5.0</td>
                          </tr>
                          <tr height="10">
                          		<td colspan="2">
                          			<input id="klPoint" type="radio"  value="1" name="hotelOrder.klPoint" />1<input id="klPoint" type="radio" value="2" name="hotelOrder.klPoint"/>2
                          			<input id="klPoint" type="radio"  value="3" name="hotelOrder.klPoint" />3<input id="klPoint" type="radio" value="4" name="hotelOrder.klPoint"/>4
                          			<input id="klPoint" type="radio" checked="checked" value="5" name="hotelOrder.klPoint" />5
                          		</td>
                          </tr>
                          <tr>
                              <td style=" vertical-align:text-top">评价：</td>
                              <td style="padding-left:30px;"><textarea  name="hotelOrder.roomRemark" rows="3" cols="50"></textarea ></td>
                              <label id="vanclHotelCodeError"  for="hotelOrder.roomRemark"></label>
                          </tr>
                          <tr height="15"><td></td><td></td></tr>
                        </tbody>
                     </table>
                  </div>
                 <div style=" float:right; padding-top:20px;">
                 <a href=""><input  type="submit" / style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="确定"></a>
                 <a href=""><input  type="button" / onclick="window.history.back(); return false;" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="取消"></a>
            </div><!--right_down3 end-->
            <#else>
              <div style=" float:right; padding-top:20px;">
                 <a href=""><input type="button" / onClick="window.history.back(); return false;" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="返回"></a>
            </div><!--right_down3 end-->
           </#if>
        </div><!--right_wrap3 end-->
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
</form>
<#include "/content/common/footer.ftl">