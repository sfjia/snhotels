<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>优惠精选</title>
<link rel="stylesheet" href="${base}/statics/css/base.css" />
<script src="${base}/statics/js/jquery.min.js"></script>
<script type="text/javascript">  
$(document).ready(function(){  
    odd_even();  
});   
function odd_even(){  
    $("#test").children("ul").each(function(){  
	    if($(this).index()%2==1)
	      	$(this).css("background-color","#fffeee"); 
	   else  
	        $(this).css("background-color","#fafafa");      
    });  
}  
</script> 
</head>

<body class="big_wrap">
<#include "/content/common/top.ftl">
 <div class="wrap">
  
  <div class="content_pre8" style=" float:left; background:#fff; padding-bottom:5px;">
  <div class="up" style=" float: left;">
  	
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px; float: left;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.jpg" /></a></div>
        
    </div><!-- up_left end end -->
     <#--大图片-->
    <div class="up_right" style=" float:right; width:770px; height:300px;"><img src="${promotionBigImage.image}" /></div><!-- up_right end end -->
  </div><!-- up end end -->
  <#--左侧栏目-->
     <#include "/content/promotion/promotionLeftNav.ftl"> 
     <div class="right_neirong" style=" float:right; width:770px;">
     <#--导航-->
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体'; margin-bottom:10px;" class="right_neirong_title">
        <a href="" style=" color:#ab7b3e; padding-right:5px;">远洲酒店首页</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="" style=" color:#ab7b3e; padding-right:5px;">优惠精选</a>
        </div><!--right_neirong_title end-->
        <#--活动列表-->
        <div class="right_sty" style=" width:730px; margin:0 auto;" id="test">
			<#list promotion.list as p>
				 <ul style=" float:left;  width:730px; padding-top:20px; border-bottom:1px solid #c2a06b;" >
				 	<li style=" float:left; width:210px; height:130px; padding-top:5px; border:1px solid #a1a1a1; background:#fff; text-align:center; margin-left:5px; "><img src="${p.image}" width="200" height="125"/></li>
					 <li style=" float:left; width:480px; margin-left:20px;">
		                 <ul>
		                    <li ><a href="${base}/promotionContent.htm?promotionHotelArticle.id=${p.id}" style=" color:#80501b;font-size:18px;">${p.titleCn}</a></li>
		                    <li style="color:#666666; font-family:'宋体'; line-height:20px; margin-top:10px;">${p.digestCn}<br />特别提醒您，请提前一天预约</li>
		                    <li style="color:#666666; font-family:'宋体'; margin-top:30px; margin-bottom:5px;">使用有效期：${(p.beginDatetime?string("yyyy年MM月dd日"))!}-${(p.endDatetime?string("yyyy年MM月dd日 "))!}</li>
		                    <li style="color:#666666; font-family:'宋体';">预约电话：${p.bookTell}（预约时间：07:00-23:00）；</li>
 							<li style=" padding-bottom:30px;"><a href="${base}/promotionContent.htm?promotionHotelArticle.id=${p.id}" style=" display:inline-block; background:url(${base}/statics/img/right.png) no-repeat 52px center; width:60px; color:#ab7b3e; float:right;">更多详情</a></li>
		                 </ul>
		             </li>
           		 </ul>
			</#list>
           <#--文章分页-->
			  <#include "/content/promotion/promotionPager.ftl"> 
          </div><!--right_sty end-->
     </div><!--right_neirong end-->
  </div><!--content_pre end -->
  <#include "/content/common/footer.ftl">