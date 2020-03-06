<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript"> 
function payOrder(id){
	window.location.href="${base}/payment/postAlipayAgain.htm?hotelOrder.id=" + id;
} 
</script>   
<#assign left = "order">

  <div class="content_pre3" style=" float:left; background:#fff;">
<#include "/content/common/login_left.ftl">  
     <div class="right_neirong3" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title3">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">你现在的位置</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">会员中心</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">我的订房记录</a>
        </div><!--right_neirong_title3 end-->
        <div class="right_wrap" style=" width:730px; margin:0px auto 0px auto;">
           <div style=" padding-top:20px;">
           <div style=" background:#fffeef; padding:0px 0 0px 20px; height:30px; line-height:30px; color:#80521e; font-size:18px; margin-bottom:10px;">我的订单列表
           </div>
           </div>
          <div class="right_middle3" style=" padding-top:0px;">
               <div class="st">
               <form name="orderList" action="${base}/user/userOrder.htm" method="post">
               	<input type="hidden" id="currentPage" name="currentPage" value="${currentPage}"/>
               </form>
                     <table width="100%" cellpadding="0" cellspacing="0">
                      <thead bgcolor="#a88f66">
                         <tr height="30">
                         <th style=" font-family:'宋体'; color:#fff; text-align:center; ">订单号</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">酒店</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">入住日期</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">退房日期</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">状态</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">操作</th>
                         </tr>
                       </thead>
                        <tbody>
                           <#list pager.list as order>
                          <tr height="1" style=" background:#fff;"><td></td><td></td><td></td><td></td></tr>
                          <tr height="30" <#if order_index%2 ==0>bgcolor="#f5f5f5"<#else>bgcolor="#ededed"</#if>>
                            <td style=" font-family:'宋体'; color:#a97c3b;text-align:center; ">${order.orderno}</td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;">${order.hotelname}</td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;">${order.arrivaldate?string("yyyy-MM-dd")}</td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;">${order.leavedate?string("yyyy-MM-dd")}</td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;  ">
                            <#if order.orderstatus ==1>未支付</#if>
                            <#if order.orderstatus ==2>已支付</#if>
                            <#if order.orderstatus ==3>已取消</#if>
                            <#if order.orderstatus ==4>已入住</#if>
                            <#if order.orderstatus ==5>预定未到</#if>
                            </td>
                            <td style=" font-family:'宋体';text-align:center;  ">
                            <#if order.orderstatus ==4>
                            	<#if order.remarkStatus> 
                            		<a href="${base}/user/review.htm" style=" color:#363636; display:inline-block; background:url(img/dd.png) no-repeat; width:64px; height:22px; line-height:22px; text-align:center;">我的点评</a>
                            	<#else>     
                            		<a href="${base}/user/orderDetail.htm?hotelOrder1.id=${order.id}&type=1" style=" color:#363636; display:inline-block; background:url(img/dd.png) no-repeat; width:64px; height:22px; line-height:22px; text-align:center;">我要点评</a> 
								</#if>
							</#if>
							
							<a href="${base}/user/orderDetail.htm?hotelOrder1.id=${order.id}&type=2" style=" color:#ab7b3e; margin-right:10px;">查看</a>
                            <#if order.orderstatus ==1>
                            	<#if order.paymentmode ==1>
                            		<a href="${base}/payment/postAlipayAgain.htm?hotelOrder1.id=${order.id}" style=" color:#ab7b3e;margin-right:10px;">立即支付</a>
                            	</#if>
                            		<a href="${base}/user/updateOrderIndex.htm?hotelOrder.id=${order.id}" style=" color:#ab7b3e;margin-right:10px;">修改</a><a href="${base}/user/cancelOrder.htm?hotelOrder.id=${order.id}" style=" color:#ab7b3e;">取消</a>
							</#if>
                            </td>                       
                          </tr>
                          </#list>
                          <tr height="30">
                            <td align="right" style=" padding-top:25px;" colspan="5"><a href=""><input type="submit" name="submit" value="上一页"  style=" background:url(img/btn.png) no-repeat; width:69px; height:27px; border: 0 none; text-align:center; color:#fff; font-family:'宋体';"/></a><a href=""><input type="submit" name="submit" value="下一页"  style=" background:url(img/btn.png) no-repeat; width:69px; height:27px; border: 0 none; text-align:center; color:#fff; font-family:'宋体';"/></a></td>
                          </tr>
                        </tbody>
                     </table>
              </div><!--st end-->
              <#include "/content/common/pager.ftl">  
              
          </div><!--right_middle3 end-->
        </div>
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
  
    <#include "/content/common/footer.ftl">