<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript">  
function bookSub(){
	document.bookSubForm.submit();
}

function caTotalMoney(){
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice;
	$("#totalAmount").html(totalAmount);
}
function bookSub(){
	document.bookSubForm.submit();
}

</script>   
<#assign left = "remark">

  <div class="content_pre3" style=" float:left; background:#fff;">
<#include "/content/common/login_left.ftl">  
     <div class="right_neirong3" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title3">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">你现在的位置</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">会员中心</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">我的订房记录</a>
        </div><!--right_neirong_title3 end-->
      <form id="listForm" action="${base}/user/review.htm" method="post">
        <div class="right_wrap" style=" width:730px; margin:0px auto 0px auto;">
           <div style=" padding-top:20px;">
           <div style=" background:#fffeef; padding:0px 0 0px 20px; height:30px; line-height:30px; color:#80521e; font-size:18px; margin-bottom:10px;">我的点评
           </div>
           </div>
          <div class="right_middle3" style=" padding-top:0px;">
               <div class="st">
                     <table width="100%" cellpadding="0" cellspacing="0">
                      <thead bgcolor="#a88f66">
                         <tr height="30">
                         <th style=" font-family:'宋体'; color:#fff; text-align:center; ">评分</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">评论</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">酒店</th>
                         <th style=" font-family:'宋体'; color:#fff;text-align:center; ">订单号</th>
                         </tr>
                       </thead>
                        <tbody>
                       <#list pager.list as review>
                         
                          <tr height="1" style=" background:#fff;"><td></td><td></td><td></td><td></td></tr>
                          <tr height="65" bgcolor="#ededed">
                            <td style=" font-family:'宋体'; color:#a97c3b;text-align:center; font-size:16px; font-weight:bold; ">${((review.kfPoint+review.fwPoint+review.cyPoing+review.klPoint)/4)?string("#.#")}</td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;">${review.roomRemark}<span>[${(review.reviewDate?string("yyyy-MM-dd hh:mm:ss"))!}]
                            		</br><#if review.replyRemark !=null|| review.replyRemark !=""><span></br>酒店回复:${review.replyRemark}</span></br></#if> </span></td>
                            <td style=" font-family:'宋体'; color:#666666;text-align:center;">${review.hotelname}</td>
                            <td style=" font-family:'宋体'; color:#b68f61;text-align:center;font-size:14px;">${review.orderno}</td>
                          </tr>
                          
                       </#list>
                        </tbody>
                     </table>
              <#if (pager.list?size > 0)>
				<#include "/content/common/pager.ftl">
			<#else>
					<div class="noRecord">没有找到任何记录!</div>
			</#if>       
              </div><!--st end-->
          </div><!--right_middle3 end-->
        </div>
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
</form>
<#include "/content/common/footer.ftl">