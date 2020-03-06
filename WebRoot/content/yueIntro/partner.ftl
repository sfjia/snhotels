<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>悦廷会</title>
</head>

<body class="big_wrap">
<#include "/content/common/top.ftl">
 <div class="wrap">
	
  <div class="content_pre8" style=" float:left; background:#fff; ">
  <div class="up" style=" float: left;">
    <#--顶端大图片-->
    <a href="${yue_big.linkeUrl}" target="_blank"><img src="${yue_big.image}" width="1000" height="300" /></a> 
  </div><!-- up end end -->
    <#--左侧栏目-->
   <#include "/content/yueIntro/leftNav.ftl">   	
     <div class="right_neirong" style=" float:right; width:770px;">
     
        <#--导航-->
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体'; margin-bottom:10px;" class="right_neirong_title">
        <a href="/index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店首页</a><span style=" color:#ab7b3e; padding-right:5px;">></sapn><sapn style=" color:#ab7b3e; padding-right:5px;">悦廷会</sapn><sapn style=" color:#ab7b3e; padding-right:5px;">></sapn><sapn  style=" color:#ab7b3e; padding-right:5px;">合作伙伴</sapn>
        </div><!--right_neirong_title end-->
        
        <#--合作伙伴-->
       	<div class="right_sty" style=" width:730px; margin:0 auto;">
           <#list hotelArticleList as p>
           <ul style=" float:left; background:#fafafa; width:730px; padding-top:20px; border-bottom:1px solid #c2a06b;">
              <li style=" float:left; width:210px; height:130px; padding-top:5px; border:1px solid #a1a1a1; background:#fff; text-align:center; margin-left:5px; "><img src="${p.image}" width="200" height="125"/></li>
              <li style=" float:left; width:480px; margin-left:20px;">
                 <ul>
                    <li style=" color:#80501b;font-size:18px;">${p.titleCn}</li>
                    <br/>
                    ${p.summaryCn}
                    <li style=" padding-bottom:30px;"><a href="${base}/content.htm?hotelArticle.id=${p.id}" style=" display:inline-block; background:url(img/right.png) no-repeat 52px center; width:60px; color:#ab7b3e; float:right;">更多详情</a></li>
                 </ul>
              </li>
           </ul><!--1 end--> 
    	 </#list>
          </div>
     </div><!--right_neirong end-->
  </div><!--content_pre end -->
<#include "/content/common/footer.ftl">