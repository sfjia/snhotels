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
    <div class="up_right" style=" float:right; width:770px; height:300px;"><img src="${base}${hotelColumn.bannerImage}" width="770" height="300"/></div><!-- up_right end end -->
  </div><!-- up end end -->
 <#include "/content/common/user_center_left.ftl">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong" style=" float:right; width:770px;">
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelIndex.htm?code=${hotelColumn.hotelCode}" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.hotelName}</a> 
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="#" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.columnName}</a>
        </div><!--right_neirong_title end-->
         <form id="listForm" action="${base}/hotel/room.htm" method="post">
        <input type="hidden" id="code" name="code" value=${code} />
        <div class="right_wrap" style=" width:740px; margin:10px auto 60px auto;">
          <div class="right_top" style=" float:left; width:740px;">
             <ul class="right_top_left" style=" float:left; width:740px;">
                <li style=" height:33px;"><h3 style=" color:#81511c; font-size:16px; float:left;">客房概述</h3></li>
                <li>
                   <p style=" line-height:20px; font-family:'宋体'; color:#1f0d03;">${hotelColumn.note}</p>
                </li>
            </ul><!--right_top_left end-->
          </div><!--right_top end-->
          <div class="right_middle" style="clear:both; padding-top:30px;">
              <div style=" height:33px;"><h3 style=" color:#81511c; font-size:16px; float:left;">酒店客房</h3></div>
              <div>
                   <table width="100%" cellpadding="0" cellspacing="0">
                      <thead bgcolor="#a88f66">
                         <tr height="30">
                            <td style=" color:#fff; font-family:'宋体'; padding-left:30px;" width="100">房型</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">面积</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">床型</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">早餐</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">宽带</td>
                         </tr>
                      </thead>
                      <tbody>
                       <#list pager.list as room>
                         <tr height="60" class="tr1">
                         	<td style=" padding-left:10px; border-bottom:1px dashed #ccc; background:url(${base}/statics/img/right000.png) no-repeat 90% center;>" class="td1"><a style="color:#ab7b3e; font-family:'宋体';" class="funds" onclick="showRoomMsg('${room.roomCode}','${room.hotelCode}');" >${room.roomName}&nbsp;<img src="${base}/statics/img/ic_pic.gif" /></a></td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center">${room.roomArea}</td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center">${room.roomBedType}</td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center"><#if room.roomBreakfast==1>单早<#elseif room.roomBreakfast==2>双早<#else>无</#if></td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center"><#if room.roomFreeNet==1>有<#else>无</#if></td>
                         </tr>
                     </#list>
                      </tbody>
                   </table>
           		<#if (pager.list?size > 0)>
					<#include "/content/common/pager.ftl">
				<#else>
					<div class="noRecord">没有找到任何记录!</div>
				</#if>
              </div>
          </div><!--right_middle end-->
        </div><!--right_wrap end-->
        </form>
     </div><!--right_neirong end-->
  </div><!--content_pre end -->
   <script type="text/javascript">
$(function(){
	$("#hotel_room").addClass("list");
});
</script>
  <#include "/content/common/footer.ftl">
  