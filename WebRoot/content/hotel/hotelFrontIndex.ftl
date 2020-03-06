<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${hotel.name}</title>
<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
	<script src="${base}/statics/js/queryOdery.js"></script>
	<div class="wrap">
 <div class="content_pre" style=" float:left; background:#fff;">
  <div class="up" style=" float: left;">
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px; float: left;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.png" /></a></div>
        <div style=" text-align:center;"><a href="" style=" font-size:18px; color:#fff;">${hotel.name}</a></div>
    </div><!-- up_left end end -->
    <div class="up_right" style=" float:right; width:770px; height:300px;"><img src="${base}${hotel.bigImage}" width="770" height="300" /></div><!-- up_right end end -->
  </div><!-- up end end -->
 <#include "/content/common/user_center_left.ftl">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong" style=" float:right; width:770px;">
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="#" style=" color:#ab7b3e; padding-right:5px;">${hotel.name}</a>
        </div><!--right_neirong_title end-->
        <div class="right_wrap" style=" width:740px; margin:10px auto 60px auto;">
          <div class="right_top" style=" float:left; width:740px;">
             <ul class="right_top_left" style=" float:left; width:490px;">
                <li style=" margin-bottom:10px;"><span style=" color:#81511c; font-size:24px; margin-right:15px;">${hotel.name}</span>
                <span style=" margin-right:25px; display:inline-block; height:25px;*height:15px;">
                 <#list 1..hotel.score as s>
                	<img src="${base}/statics/img/xx.gif" style=" vertical-align:middle;"/>
                </#list>
                </span>
                <span style=" color:#ab7b3e; vertical-align:middle;">客户点评：<a style=" font-size:18px;">${hotel.score}</a></span>
                </li>
                <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">地址：${hotel.address}</span></li>
                <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">邮编：${hotel.postCode}</span></li>
                <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体'; margin-right:25px;">电话：${hotel.telPhone}</span><span style="color:#666666; font-family:'宋体';">传真：0792-88888888</span></li>
                <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">电子邮件：${hotel.email}</span></li>
                <li style=" background:url(${base}/statics/img/map.png) no-repeat 0 0px;margin-bottom:10px;"><a href="${base}/map/hotelMap.htm?hotel.id=${hotel.id}" style="color:#ab7b3e; margin-left:25px;font-family:'宋体';">查看地图和路线指引</a></li>
                <li style=" background:url(${base}/statics/img/say.png) no-repeat; padding-left:25px;margin-bottom:15px;">
                 <p style=" width:450px; background:#fafafa; padding:5px; border:1px solid #b8b8b8; color:#666666; line-height:20px;border-radius:5px;font-family:'宋体';">
                   ${remark}
                   <a href="/hotel/detail.htm?code=${code}&type=KHDP" style=" color:#ab7b3e; float:right;font-family:'宋体';">更多点评</a>
                 </p>
                </li>
                <li style=" color:#81511c; font-size:16px; padding-left:5px;margin-bottom:10px;">酒店概述</li>
                <li>
                   <p style=" line-height:20px; font-family:'宋体'; color:#1f0d03;">${hotel.notext}</p>
                </li>
            </ul><!--right_top_left end-->
            <ul class="right_top_right" style="float:right; width:230px; background:#ededed; margin-top:10px;">
               <li style="background:url(${base}/statics/img/w.png) no-repeat 5px 2px; height:25px;"><a href="" style=" font-size:16px; color:#81511c; float: left; margin-left:25px;">优惠促销</a><a href="${base}/hotel/detail.htm?code=${code}&type=YHCX" style=" color:#ab7b3e; float:right; margin-top:3px; margin-right:5px;">更多优惠</a></li>
               <li style=" width:230px; margin:0 auto; clear:both;">
                  <ul class="huodong" style=" float: left; margin:5px 0 10px 0;">
                  <#list pager1.list as article>
	                     <li style="background:url(${article.articleImage1}) no-repeat; width:100px; height:100px; position:relative; float:left; margin-left:10px; margin-bottom:10px;">
	                     <div style=" background:url(${base}/statics/img/t0.png) no-repeat ; width:100px; height:50px; position: absolute; bottom:0px; display:none;" class="hide_v"><a href="" style=" color:#fff; font-family:'宋体';display:inline-block; padding:8px 5px 0px 5px ;">${article.articleTitle}</a></div>
	                     </li>
                  </#list>
                  </ul>
              </li>
              <script>
                jQuery(function(){
					jQuery(".huodong li").mouseover(function(){
						jQuery(this).children(".hide_v").css("display","block")
					})
					
					jQuery(".huodong li").mouseleave(function(){
						jQuery(this).children(".hide_v").css("display","none")
					})
					
					})
              
              </script>
            </ul><!--right_top_right end-->
          </div><!--right_top end-->
          <#--
          <div class="right_middle" style="clear:both; padding-top:30px;">
              <div style=" height:33px;"><h3 style=" color:#81511c; font-size:16px; float:left;">酒店客房</h3><a href="${base}/hotel/room.htm?code=${code}" style=" color:#ab7b3e; float:right;">更多客房</a></div>
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
                            <td style=" padding-left:25px; border-bottom:1px dashed #ccc; background:url(${base}/statics/img/right000.png) no-repeat 90% center;>" class="td1"><a style="color:#ab7b3e; font-family:'宋体';" class="funds" onclick="showRoomMsg('${room.roomCode}');" >${room.roomName}&nbsp;<img src="${base}/statics/img/ic_pic.gif" /></a></td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center">${room.roomArea}</td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center">${room.roomBedType}</td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center"><#if room.roomBreakfast==1>单早<#elseif room.roomBreakfast==1>双早<#else>无</#if></td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center"><#if room.roomFreeNet==1>有<#else>无</#if></td>
                         </tr>
       
                     </#list>
                      </tbody>
                   </table>
                
              </div>  -->    
          </div><!--right_middle end-->
          <div class="right_down" style=" float: left; width:740px; margin-top:30px;">
          	<#list additionList as addition >
             <dl style=" float:left; width:305px;padding-left:20px; margin-bottom:40px;">
                <dt style=" color:#81511c; font-size:16px; padding-left:5px;padding-bottom:10px;">${addition.name}</dt>
                <a href="<#if addition.linkUrl>${addition.linkUrl}<#else>#</#if>"> <dd style=" color:#666666; font-family:'宋体';">${addition.note}</dd></a>
              </dl><!-- dl1 end-->
             </#list>
            </div><!--right_down end-->
        </div><!--right_wrap end-->
     </div><!--right_neirong end-->

  <script type="text/javascript">
$(function(){
	$("#hotel_index").addClass("list");
});
</script>
  <#include "/content/common/footer.ftl">
 
  