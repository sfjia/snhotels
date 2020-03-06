<div class="left_neirong" style=" float:left; width:230px; background:#e6ddd1;">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
            <ul class="left_top" style=" margin-top:10px;">
            <#--左侧栏目列表-->
            	 <#list about_yuanZhou as ay>
      			  <#if ay.tyep=="2" >
      			  	    <li class="list0" style="height:140px; position:relative;">
      			  	     <a href="#" style=" color:#fff; font-size:14px; margin-left:30px;">${ay.nameCn}</a><img src="${base}/statics/img/down1.png" style=" position:absolute; right:40px; top:15px;"/>
	      			  	<ul style=" background:#b3a282;">
		      			  	<#list ay.hotelArticleList as gi>
		      			  		  <li  <#if hotelArticle.id==gi.id> class="list"</#if> style=" list-style-type:disc; padding-left:40px; list-style-position:inside; color:#fff; font-size:6px; "><a href="${base}/aboutContent.htm?hotelArticle.id=${gi.id}" style=" color:#fff; font-size:14px;">${gi.titleCn}</a></li>
		      			  	 </#list>
	      			  	 </ul>
	      			  </li>
      			  <#else>
      			  	 <li  <#if hotelArticle.channelId==ay.id> class="list list0"<#else> class="list0"</#if> class="list0"  ><a href="${base}/aboutChanlContent.htm?hotelChannel.id=${ay.id}" style=" color:#fff; font-size:14px; margin-left:30px;">${ay.nameCn}</a></li>
      			 </#if>
     		   </#list>
     		   
     	<#--通用三图片-->
           <#include "/content/common/commonImage.ftl">
      
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->