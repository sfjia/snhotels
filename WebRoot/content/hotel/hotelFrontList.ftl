<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
 <script language="javascript" type="text/javascript">
function toHotel(hotelCode){
	var ur = "${base}/searchRoom.htm?hotelCode=" + hotelCode;
	 window.location.href=ur;
}
</script> 
    <div class="content_pre5" style=" float:left; background:#fff;">
     <div class="left_neirong" style=" float:left; width:230px; background-color:#e6ddd1; padding-bottom:280px;">
      <#include "/content/common/search_hotel_book.ftl">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong5" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title5">
        <a href="${base}/Index.htm" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="#" style=" color:#59493f;font-family:'宋体';">酒店列表</a>
        </div><!--right_neirong_title5 end-->
        <div class="right_wrap5" style=" width:730px; margin:10px auto 0px auto;">
        <form  id="listForm" action="${base}/hotel/hotelFrontList.htm" method="post">
         <#list pager.list as hotel>
          <div class="right_top5" style="padding:5px 20px 5px 20px;_padding-bottom:0px; width:688px; height:250px; border:1px solid #c2a06b; background:#fffeee; float:left; margin-bottom:10px;clear:both;">
             <div style=" float: left; width:200px;">
                <div style=" text-align:center; padding-bottom:10px;"><img src="${base}${hotel.miniImage}" width="200" height="200" /></div> 
                <div style=" width:165px; margin:0 auto;font-family:'宋体';">
                 <div style=" background:url(${base}/statics/img/map.png) no-repeat; float: left; margin-right:25px; padding-left:20px; padding-bottom:10px;"><a href="${base}/map/hotelMap.htm?hotel.id=${hotel.id}" style="color:#ab7b3e;">查看地图</a></div>
                 <div style=" background:url(${base}/statics/img/say.png) no-repeat;float: left;padding-left:20px;padding-bottom:10px;"><a href="/hotel/detail.htm?code=${hotel.code}&type=KHDP" style="color:#ab7b3e;">查看评论</a></div>
                 <div style=" background:url(${base}/statics/img/w.png) no-repeat; float: left;margin-right:25px;padding-left:20px;padding-bottom:10px;"><a href="/hotel/detail.htm?code=${hotel.code}&type=YHCX" style="color:#ab7b3e;">精惠优选</a></div>
                 <div style=" background:url(${base}/statics/img/q1.png) no-repeat;float: left;padding-left:20px;padding-bottom:10px;"><a href="${base}/hotel/detail.htm?code=${hotel.code}&type=JDTK&typeName=酒店外景" style="color:#ab7b3e;">酒店图库</a></div>
                 </div>
             </div>
             <div style=" float:right; width:465px;">
                 <ul style="color:#666666; font-family:'宋体';">
                <li style=" margin-bottom:10px;"><span style=" color:#81511c; font-size:18px; margin-right:15px;"><a href="${base}/hotel/hotelIndex.htm?code=${hotel.code}">${hotel.name}</a></span>
                <span style=" margin-right:15px; display:inline-block; height:25px;*height:15px;">
                 <#list 1..hotel.score as s>
                <img src="${base}/statics/img/xx.gif" style=" vertical-align:middle;"/>
                </#list>
                </span>
                <span style=" color:#ab7b3e; vertical-align:middle; margin-right:5px;">客户点评：<a style=" font-size:18px;">${hotel.score}</a></span>
                </li>
                   <li style=" line-height:20px; height:150px;">
                   <#if hotel.notext?length lt 200>
           				${hotel.notext?default("")}
     			 <#else>
           			${hotel.notext[0..200]?default("")}.....
				</#if>
                   </li>
                 </ul>
                 <ul style=" padding-top:0px;">
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体';">地址：${hotel.address}</span></li>
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体'; margin-right:25px;">电话：${hotel.telPhone}</span></li>
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体';">邮编：${hotel.postCode}</span></li>
                 
                 </ul>
              </div>
          </div><!--right_top5 end-->
        </#list>
	 	<#if (pager.list?size > 0)>
				<#include "/content/common/pagerIndex.ftl">
		<#else>
				<div class="noRecord">没有找到任何记录!</div>
		</#if>        
	</div><!--right_wrap5 end-->
	 </form>
     </div><!--right_neirong5 end-->
  </div><!--content_pre5 end -->
  <#include "/content/common/footer.ftl">
  