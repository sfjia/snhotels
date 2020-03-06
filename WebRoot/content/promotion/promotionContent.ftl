<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>优惠精选</title>
<link rel="stylesheet" href="${base}/statics/css/base.css" />
<script src="${base}/statics/js/jquery.min.js"></script>
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
        <a href="${base}/index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店首页</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/specialOffers.htm" style=" color:#ab7b3e; padding-right:5px;">优惠精选</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a  style=" color:#ab7b3e; padding-right:5px;">${promotionHotelArticle.titleCn}</a>
        </div><!--right_neirong_title end-->
        <#--活动列表-->
        <div class="right_sty" style=" width:730px; margin:0 auto;" id="test">
			<#--文章内容-->
			${promotionHotelArticle.contentCn}
			<br/> <br/>
			<input id="promotionId_pro" value="${promotionHotelArticle.id}" type="hidden"/>
			 <input id="getPromotion" type="button" value="" name="btn" style=" background:url(${base}/statics/img/coupon.jpg) no-repeat; width:198px; height:33px; border:0 none;"  />
			<br/> <br/>
			<a href="${base}/specialOffers.htm"  style=" color:#ab7b3e; padding-right:5px;" >返回>> </a>
          </div><!--right_sty end-->
     </div><!--right_neirong end-->
  </div><!--content_pre end -->
  <#include "/content/common/footer.ftl">