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
	        <span style=" color:#ab7b3e; padding-right:5px;">></span><span style=" color:#ab7b3e; padding-right:5px;">人员招募</span>
        </div><!--right_neirong_title end-->
        <#--人员招聘-->
         <div class="right_sty1" style=" width:730px; margin:0 auto;">
           <h3 style="color:#81511c; font-size:18px; font-weight:normal; margin-top:30px; margin-bottom:10px;">${zhaoPinArticle.titleCn}</h3>
           <p style="color:#211008; line-height:25px; font-family:'宋体';">${zhaoPinArticle.summaryCn}</p>
           
           <div style="float:left;width:730px;">
			 <ul style=" float: left; margin-top:30px; width:730px;">
				 <#list hotelArticleList as re>
				 	<li style="list-style-type:square;color:#8b622c; list-style-position:inside; line-height:25px;width:243px;float: left; "><a href="${base}/aboutContent.htm?hotelArticle.id=${re.id}" style="color:#8b622c;">${re.titleCn}</a></li>
				 </#list>     
			  </ul>
		   </div>
		   
           <ul style="clear:both; color:#363636; padding-top:35px;font-family:'宋体';">
             ${zhaoPinArticle.contentCn}
           </ul>
        </div><!--right_sty1 end-->
     </div><!--right_neirong end-->
     </div>
  <#include "/content/common/footer.ftl">