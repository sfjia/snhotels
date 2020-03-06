<#include "/content/common/meta.ftl">

<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript">  
function bookSub(){
	document.bookSubForm.submit();
}
function updateOrder(id){
		$.ajax({ 
       type: "post", 
       url: "${base}/checkOrderStatus.htm", 
	   data: {"hotelOrder.id":id}, 
	   dataType:'json', 
       success: function (data) { 
       		if(data != 1){
       				alert("该订单为非预定状态，不能修改");
       				return;
       		}else{
		window.location.href="${base}/user/updateOrderIndex.htm?hotelOrder.id=" + id;
       		}
       }, 
       error: function (XMLHttpRequest, textStatus, errorThrown) { 
       	alert(errorThrown); 
       } 
       });
}
function cancelOrder(id){
		$.ajax({ 
       type: "post", 
       url: "${base}/checkOrderStatus.htm", 
	   data: {"hotelOrder.id":id}, 
	   dataType:'json', 
       success: function (data) { 
       		if(data != 1){
       				alert("该订单为非预定状态，不能取消");
       				return;
       		}else{
	window.location.href="${base}/user/cancelOrder.htm?hotelOrder.id=" + id;
       		}
       }, 
       error: function (XMLHttpRequest, textStatus, errorThrown) { 
       	alert(errorThrown); 
       } 
       });
}
function toHome(){
	window.location.href="${base}/index.htm";
}
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
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">客房预订</a>
        </div><!--right_neirong_title3 end-->
        <div class="right_neirong_buzhou"><img src="${base}/statics/img/three.png" /></div><!--right_neirong_buzhou3 end-->
        <div class="right_wrap" style=" width:730px; margin:10px auto 0px auto;">
          <div class="right_top" style=" color:#80501b; font-size:16px; padding-left:35px;">
             恭喜您，您预定的客房已成功！
          </div><!--right_top3 end-->
          <div class="right_middle" style=" padding-top:25px;">
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
                 <div style=" float:right; padding-top:20px;">
                 <#if hotelOrder.orderstatus == 1>
                 	<#-- <#if hotelOrder.paymentmode == 1>
                 		<a ><input type="button" / style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="立即支付"></a>
                 	</#if>-->
                
                	<input type="button" onclick="updateOrder('${hotelOrder.id}');" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="修改订单">
                 </#if>
                 
                 <#if hotelOrder.orderstatus == 1>
                 	<input type="button" onclick="cancelOrder('${hotelOrder.id}');"  style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="取消订单">
                 </#if>
                 <input type="button" onclick="toHome();" style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; line-height:25px; text-align:center; color:#fff; border:0 none;" value="返回首页">
                 </div>
            </div><!--right_down3 end-->
        </div><!--right_wrap3 end-->
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
<#include "/content/common/footer.ftl">