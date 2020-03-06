<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们</title>
</head>
<body class="big_wrap">
 <#include "/content/common/top.ftl">
 <div class="wrap">

  <div class="content_pre8" style=" float:left; background:#fff;">
  <div class="up" style=" float: left;">
    <#--顶端大图片-->
    <a href="${aboutUs_top.linkeUrl}" target="_blank"><img src="${aboutUs_top.image}" width="1000" height="300" /></a> 
  </div><!-- up end end -->
     	<#--左侧栏目-->
   	<#include "/content/aboutUs/aboutUsLeftNav.ftl">  
     <div class="right_neirong" style=" float:right; width:770px;">
      	<#--导航-->
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体'; margin-bottom:10px;" class="right_neirong_title">
	        <a href="${base}/index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店首页</a>
	        <span style=" color:#ab7b3e; padding-right:5px;">></span><a href="${base}/aboutUs.htm" style=" color:#ab7b3e; padding-right:5px;">关于远洲</a>
	        <span style=" color:#ab7b3e; padding-right:5px;">></span><span style=" color:#ab7b3e; padding-right:5px;">媒体中心</span>
        </div><!--right_neirong_title end-->
         <#--媒体中心文章列表-->
         <div class="right_sty" style=" width:730px; margin:0 auto;">
			<#--<input type="hidden" id="hotelArticleId" value="${aboutUsHotelArticle.id}">-->
		  	     <#list pager.list as mc>
		  	    		<ul style=" float:left; width:730px; padding-top:20px; padding-bottom:10px; border-bottom:1px solid #c2a06b;">
			  	       		<li style=" float:left; width:210px; height:130px; padding-top:5px; border:1px solid #a1a1a1; background:#fff; text-align:center; margin-left:5px; "><img src="${mc.image}" width="200" height="125"/></li>
				  	        <li style=" float:left; width:480px; margin-left:20px;">
				                 <ul>
				                	 <li style=" color:#80501b;font-size:18px;"> ${mc.titleCn}</li>
				                	 <li style="color:#666666; font-family:'宋体';margin-top:20px;">${mc.summaryCn}</li>
				                    <li style=" padding-bottom:35px; padding-top:5px;"><a href="${base}/aboutContent.htm?hotelArticle.id=${mc.id}" style=" display:inline-block; background:url(${base}/statics/img/right.png) no-repeat 52px center; width:60px; color:#ab7b3e; float:right;">更多详情</a></li>
				                 </ul>
	             			</li>
			  	     	</ul>
			  	     	<#if !mc_has_next>
			  	     	<input type="hidden" id="channelId" value="${mc.channelId}"/>
			  	     	</#if>
		  	     </#list>
		  	     <div style="clear:both; text-align:right; color:#ab7b3e; padding:20px 0 0px 0;">
		  	     	<#--媒体中心文章分页-->
			  	    <#include "/content/aboutUs/aboutUsPager.ftl"> 
			  	 </div>
        </div><!--right_sty end-->
     </div><!--right_neirong end-->
     </div>
  <#include "/content/common/footer.ftl">