<div class="left_down" style=" padding:10px 0 10px 0;">
	 <ul>
		 <#list common_image as ci>
		  	<#if !ci_has_next> 
		  		<li><a href="${ci.linkeUrl}" target="_blank" ><img src="${ci.image}" /></a></li>
		  	<#else>
		  		<li style=" background:url(${base}/statics/img/a1.png) no-repeat 0 bottom; margin-bottom:10px; height:115px;"><a href="${ci.linkeUrl}" target="_blank"><img src="${ci.image}" /></a></li>
		  	</#if>
		 </#list>
	 </ul>
</div>