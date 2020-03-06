<div class="left_neirong" style=" float:left; width:230px; background:#e6ddd1;">
         <div  class="left_wrap" style="width:210px; margin:0 auto;" >
            <ul class="left_top" style=" margin-top:10px;">   
               <#--左侧栏目列表-->
               <#list yue_katyn_will as ykw>
      			  <#if ykw.tyep=="2" >
      			  	  <li  class="list1"  style="height:140px; position:relative;">
            			 <a href="#" style=" color:#fff; font-size:14px; margin-left:30px;">${ykw.nameCn}</a><img src="${base}/statics/img/down1.png" style=" position:absolute; right:40px; top:15px;"/>
	      			  	<ul style=" background:#82807d;">
		      			  	<#list ykw.hotelArticleList as zc>
			                   	 <li <#if hotelArticle.id==zc.id> class="list"</#if> style=" list-style-type:disc; list-style-position:inside; color:#fff; font-size:6px;padding-left:40px;*padding-left:35px;" ><a href="${base}/content.htm?hotelArticle.id=${zc.id}" style=" color:#fff; font-size:14px;">${zc.titleCn}</a></li>
		      			  	 </#list>
	      			  	 </ul>
	      			  </li>
      			  <#else>
      			  	 <li <#if hotelArticle.channelId==ykw.id> class="list list1" <#else> class="list1" </#if> ><a href="${base}/chanlContent.htm?hotelChannel.id=${ykw.id}" style=" color:#fff; font-size:14px; margin-left:30px;">${ykw.nameCn}</a>
      			 </#if>
     		   </#list>
     		</ul><!--left_top end-->
     	<#--通用3图片-->
     	<#include "/content/common/commonImage.ftl">
     </div><!--left_wrap end-->
 </div><!--left_neirong end-->