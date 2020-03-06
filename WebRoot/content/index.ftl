<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>远洲酒店集团官网</title>
      <#include "/content/common/top.ftl">
	<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
	<script src="${base}/statics/js/banner.js"></script>
	<link  href="${base}/statics/css/base1.css" rel="stylesheet">
<link  href="${base}/statics/css/login.css" rel="stylesheet">
	
<script type="text/javascript">  
function toHotel(hotelCode){
	window.location.href="${base}/searchRoom.htm?hotelCode=" + hotelCode;
}
</script> 
<div class="top">
	<#--首页轮播-->
<div class="logotop">

<div class="prowarp">
     <!--bigpic-->
     
    <script>
		var slideData  = [
		<#list index_top_images as iti>
			{"pic":"${iti.image}", "link": "${iti.linkeUrl}" ,"title":"${iti.titleCn}"},
			</#list>		
		];
	</script>
	<div class="slide" id="slide">
		<div class="slidePic" id="slidePic"></div>
     </div>   
<script src="${base}/statics/js/jquery.slide.js"></script>
</div>

</div>
	<div style=" position:relative;width:1000px;margin:0 auto;">
      <#include "/content/common/search_hotel.ftl"> 
      </div>
  </div><!--top end -->
   <div class="wrap">
  <div class="down">
     <div style=" height:25px; clear:both;" class="top_bg"></div><!--top_bg end-->
     <div class="content" style=" width:965px; margin:0 auto;">
      <div style=" float:left; width:305px;" class="left">
       <ul style=" margin-top:10px;">
       
         <li style=" background:url(${base}/statics/img/1.png) no-repeat; height:33px; margin-bottom:5px;"></li>
         <#--精彩远洲-->
          <#list wonderful_yuanzhou as wyz>
          <li style=" margin-bottom:5px;"><a href="${wyz.linkeUrl}" target="_blank" ><img src="${wyz.image}" /></a></li>
          </#list>
          
       </ul>
       <ul style=" margin-top:10px;">
         <li style=" background:url(${base}/statics/img/5.png) no-repeat; height:31px; margin-bottom:5px;"></li>
         <li>
           <ul style=" padding:10px 2px 10px 5px; background:#eeeeee;">
            <#list reviewList as hotelReview>
              <li style=" margin-bottom:10px;">
             <img src="${base}${hotelReview.hotelImage}" / style=" vertical-align:middle;" width="50" height="50">
              <span style="display:inline-block; padding:8px 5px 8px 5px; background:#fff; border-radius:5px; width:225px; color:#cc9b60;vertical-align:middle;">
               <#if (hotelReview.roomRemark?length>30)>
         			${hotelReview.roomRemark[0..30]?default("")}
        		<#else>
         			${hotelReview.roomRemark?default("")}
        		</#if> 
              </span>
              </li>
            </#list> 
           </ul>
         </li>
       </ul>
       </div><!-- left end -->
       <#--精选酒店-->
       <div class="right" style=" width:635px; float:right;">
          <div style=" margin-top:15px; margin-bottom:5px;" class="more">
          <img src="${base}/statics/img/10.png" />
          <a href="${base}/hotel/hotelFrontList.htm" style="color:#a57c3c; margin-left:460px;_margin-left:445px; vertical-align:middle;">更多>></a>
          </div><!--more end -->
          <div style=" float: left; margin-bottom:40px;" class="right_dl">
          <#list hotelPledgeList as hotelPledge>
             <dl style="width:140px; float: left; margin-right:15px; margin-bottom:20px;">
                <dt style=" margin-bottom:10px;"><a href="${base}/hotel/hotelIndex.htm?code=${hotelPledge.code}"><img src="${base}${hotelPledge.logoImage}" width="140" height="185" /></a></dt>
                <dd><a href="${base}/hotel/hotelIndex.htm?code=${hotelPledge.code}" style=" color:#363636; font-size:14px;">${hotelPledge.name}</a></dd>
                <dd style=" text-indent:20px;height:32px;overflow:hidden; margin-bottom:5px;color:#7d7d7d;">  
                <#if (hotelPledge.jian?length>50)>
         			${hotelPledge.jian[0..50]?default("")}
        		<#else>
         			${hotelPledge.jian?default("")}
        		</#if>      
               </dd>
                <dd style=" text-align:right;"><input type="button" onclick="toHotel('${hotelPledge.code}');" style=" background:url(${base}/statics/img/lijiyuding.png) no-repeat 1px 0; width:69px; height:27px; border:0 none; cursor:pointer;" /></dd>
             </dl><!--dl1 end-->
            </#list>
            
          </div><!--right_dl end-->
       </div><!--right end-->
     </div><!-- content end -->
     <div style="height:16px; clear:both;" class="bottom_bg"></div><!--bottom_bg end-->
  </div><!--down end -->
        <#include "/content/common/footer.ftl">
  