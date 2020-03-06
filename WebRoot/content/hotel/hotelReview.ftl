<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
 <div class="content_pre" style=" float:left; background:#fff;">
  <div class="up" style=" float: left;">
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px; float: left;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.png" /></a></div>
        <div style=" text-align:center;"><a href="" style=" font-size:18px; color:#fff;">${hotelColumn.hotelName}</a></div>
    </div><!-- up_left end end -->
    <div class="up_right" style=" float:right; width:770px; height:300px;"><img src="${base}${hotel.bigImage}" width="770" height="300" /></div><!-- up_right end end -->
  </div><!-- up end end -->
 <#include "/content/common/user_center_left.ftl">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong" style=" float:right; width:770px;">
     <input type="hidden" id="columnCode" name="hotelColumn.columnCode" value=${hotelColumn.columnCode} />
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelIndex.htm?code=${hotelColumn.hotelCode}" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.hotelName}</a> 
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href=#" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.columnName}</a>
        </div><!--right_neirong_title end-->
          <form id="listForm" action="${base}/hotel/detail.htm" method="post">
          <input type="hidden" id="code" name="code" value=${code} />
          <input type="hidden" id="type" name="type" value=${type} />
          <div class="right_wrap4" style=" width:770px; float:left;">
           <div style="float:left; width:735px;padding-left:35px; background:#fffeee;">
              <ul>
                <li style=" font-family:'宋体'; color:#80501b; padding-top:10px;">客户总评：&nbsp;&nbsp;<a style=" font-size:24px;">${score}</a>分&nbsp;&nbsp;&nbsp;(共${orderNum}条点评)</li>
                <li style=" font-family:'宋体'; color:#80501b; padding-top:10px; padding-bottom:15px;">
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">客房：</a><span><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /></span><a style=" vertical-align:middle;">${kfscore}</a></span>
                
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">餐厅：</a><span><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /></span><a style=" vertical-align:middle;">${cyscore}</a></span>
                
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">康乐：</a><span><img src="/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.gif" style=" vertical-align:middle; padding-right:5px;" /></span><a style=" vertical-align:middle;">${klscore}</a></span>
                
                <span><a style=" vertical-align:middle;">服务：</a><span><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /></span><a style=" vertical-align:middle;">${fwscore}</a></span></li>
              </ul>
           </div>
        <div style="float:left; width:770px; background:url(img/77.png) no-repeat;">
         <#list pager2.list as review>
           <div style="float:left; width:735px;padding-left:35px; margin-top:15px;">
             <ul style=" float:left; padding-top:10px;">
                <li style=" margin-bottom:5px;">${review.orderno[0..5]?default("")}......
                </li>
                <li style="  color:#666666;">${review.modifyDate?string("yyyy-MM-dd")}</li>
             </ul>
             <ul style=" float:right; width:620px; height:64px; background:url(img/999.png) no-repeat; margin-right:20px;">
                <li style=" font-family:'宋体'; color:#666666; padding-left:35px; padding-top:5px;">
                <span style=" margin-right:15px;"><a style=" vertical-align:middle;">总评：</a><span><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;"/><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /><img src="${base}/statics/img/xx.png" style=" vertical-align:middle; padding-right:5px;" /></span>&nbsp;<a style=" vertical-align:middle;">${((review.kfPoint+review.fwPoint+review.cyPoing+review.klPoint)/4)?string("#.##")}</a></span><span style=" margin-right:15px;">客房：${review.kfPoint}</span><span style=" margin-right:15px;">服务：${review.fwPoint}</span><span style=" margin-right:15px;">餐饮：${review.cyPoing}</span><span style=" margin-right:75px;">康乐：${review.klPoint}</span><span>${review.roomtypename}</span>
                </li>
                <li style=" color:#80501b; font-family:'宋体';padding-left:35px;padding-top:10px;">${review.roomRemark}
                				<#if review.replyRemark !=null|| review.replyRemark !=""><span></br></br>&nbsp;&nbsp;&nbsp;酒店回复:${review.replyRemark}</span></br></#if> </span>
                
                </li>
             </ul>
           </div><!-- 1end-->
        </#list>
     <#if (pager2.list?size > 0)>
				<#include "/content/common/pager.ftl">
		<#else>
				<div class="noRecord">没有找到任何记录!</div>
		</#if>       
       </div><!--right_wrap4 end-->
      </form>
     </div><!--right_neirong end-->
  </div><!--content_pre4 end -->
  <script type="text/javascript">
$(function(){
	var columnCode = document.getElementById("columnCode").value;
	if(columnCode=="YHCX"){
		$("#hotel_YHCX").addClass("list");
	}else if(columnCode=="CYJYL"){
		$("#hotel_CYJYL").addClass("list");
	}else if(columnCode=="HYJHD"){
		$("#hotel_HYJHD").addClass("list");
	}else if(columnCode=="XWZX"){
		$("#hotel_XWZX").addClass("list");
	}else if(columnCode=="KHFW"){
		$("#hotel_KHFW").addClass("list");
	}else if(columnCode=="KHDP"){
		$("#hotel_KHDP").addClass("list");
	}
});
</script>
  <#include "/content/common/footer.ftl">
  