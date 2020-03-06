
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>远洲酒店官网</title>
<link rel="stylesheet" href="${base}/statics/css/base.css" type="text/css" />
<link href="${base}/statics/css/slide.css" rel="stylesheet" />
<script src="${base}/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="${base}/statics/js/banner.js"></script>
<!--[if lte IE 6]> <script type="text/javascript" src="${base}/statics/js/pngfix.js"></script><![endif]-->

</head>

<body style=" width:100%;background:#edeceb; position:relative;">
<div class="header" style="height:60px;"></div>
 <div style=" width:100%; height:720px;margin:0 auto" class="top8">
	<div class="slides">
			<ul class="slide-pic">
		        <#list home_lunBo as iti>
		      		<li class="cur" >
		      		<span><img width="100%" height="720" src="${iti.image}" /></span>
		      		
		      		</li>
		        </#list>
			</ul>
			<ul class="slide-li slide-txt">
				<#list home_lunBo as iti>
			      	<li class="cur" ></li>
			    </#list>	
			</ul>
		</div>
	</div>
  <div style="position:absolute; left:25px; top:1px;"><a href="${base}/index.htm"><img src="${base}/statics/img/logo1.png" width="355" height="55" /></a></div>
     <div class="information"; style=" position: absolute;right:20px; top:15px;">
         <ul style=" float:left;">
            <li style=" float:left; margin-left:50px;">
               <ul style=" float:left;">
                  <li style=" float:left;">
                  <span style="color:#cc9b60; font-size:14px; padding-left:10px;">预订热线：</span>
                  <span style="color:#cc9b60; font-size:28px; position:relative;top:2px;">400-8888-576</span>
                  </li>
                  <li style=" float:left; margin-left:70px; padding-top:10px;">
                  <a href="${base}/home.htm" style="color:#d59751;text-decoration:none; padding-right:5px;">English</a>
                  <a style="color:#d59751; text-decoration:none;padding-right:5px;">|</a>
                  <#if user==null >
                  <a href="${base}/user/regIndex.htm" style="color:#d59751;text-decoration:none;padding-right:5px;">会员注册</a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <a href="${base}/user/loginIndex.htm" style="color:#d59751;text-decoration:none;padding-right:5px;">会员登录</a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <#else>
                   <span style="color:#d59751;text-decoration:none;padding-right:5px;">欢迎您,</span> <a href="${base}/user/usercenter.htm" style="color:#d59751;text-decoration:none;padding-right:5px;"> ${user.webusername}</a> <a href="${base}/user/logout.htm" style="color:#d59751;text-decoration:none;padding-right:5px;"> 退出</a>
                  </#if>
                  <a href="" style="color:#d59751;text-decoration:none;padding-right:5px; position:relative;top:2px;"><img src="${base}/statics/img/weibo.gif" alt="" /></a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <a href="" style="color:#d59751;text-decoration:none;position:relative;top:2px;"><img src="${base}/statics/img/qq.gif" alt="" /></a>
                  </li>
               </ul>
            </li>
         </ul>
     </div><!--information end-->
      <#include "/content/common/search_hotel_home.ftl">
      <div style=" width:1000px; margin:0 auto;" class="wei">
         <div style=" float:left; padding-top:25px; padding-bottom:35px;">
         <div style=" float:left; ">
              <a href="${base}/home.htm"><img src="${base}/statics/img/logo1.gif" width="284" height="44" /></a>
            </div>
            <div style="float:left; padding-top:15px;margin-left:70px;_margin-left:40px;" class="daohang">
                  <a href="${base}/index.htm" style=" margin-right:30px;  font-size:14px; text-decoration:none; font-weight:bold;" class="ps">首页</a>
                  <a href="${base}/hotel/hotelFrontList.htm" style=" margin-right:30px;  font-size:14px; text-decoration:none; font-weight:bold;"  class="ps">成员酒店</a>
                  <a href="${base}/ytw.htm" style=" margin-right:30px;  font-size:14px; text-decoration:none; font-weight:bold;" class="ps">悦廷会</a>
                  <a href="${base}/specialOffers.htm" style=" margin-right:30px; font-size:14px; text-decoration:none; font-weight:bold;" class="ps">优惠精选</a>
                  <a href="${base}/travel.htm" style=" margin-right:30px; font-size:14px; text-decoration:none; font-weight:bold;" class="ps">旅游度假</a>
                  <a href="${base}" style=" margin-right:30px; font-size:14px; text-decoration:none; font-weight:bold;" class="ps">人员招募</a>
                  <a href="${base}/aboutUs.htm" style=" margin-right:30px;  font-size:14px; text-decoration:none; font-weight:bold;" class="ps">关于远州</a>
                  <a href="${base}/aboutUs.htm" style="  font-size:14px; text-decoration:none; font-weight:bold;" class="ps">联系我们</a>
            </div>
            
         </div>
         </div>
   <div style=" width:1000px; height:58px; border:4px solid #cccccc; margin:0 auto 40px auto; clear:both; position:relative;" class="footer_top">
    <h3 style=" position:absolute; left:-4px; top:-4px;"><img src="${base}/statics/img/hezuohuoban.png" /></h3>
       <ul style=" float:left; padding:5px 0 0 60px;">
          <#list cooperative_partner as cp>
          	<#if !cp_has_next>
          		<li style="float: left;"><a href="${cp.linkeUrl}"><img src="${cp.image}" /></a></li>
          	<#else> 
          		 <li style="float: left; margin-right:20px;_margin-right:17px;"><a href="${cp.linkeUrl}"><img src="${cp.image}" /></a></li>
          	 </#if>
         
          </#list>
         <#-- <li style="float: left;"><a href="#"><img src="${base}/statics/img/333.jpg" /></a></li>-->
       </ul>
     </div><!--footer_top end-->
          <div style=" width:1000px; margin:0px auto; text-align:center; color:#8E8E8E; font-size:12px; font-family:'宋体'; line-height:20px;">&copy;2011-2013九江远州国际大酒店版权所有&nbsp;&nbsp;浙ICP备&nbsp;&nbsp;10447898号<br />技术支持：风云网络</div>
</body></html>
