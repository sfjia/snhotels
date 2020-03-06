<div style="clear:both; text-align:right; color:#ab7b3e; padding:20px 0 0px 0;">
<span style=" margin-right:15px;">共   ${promotion.totalItem} 条记录 ， 每页   ${promotion.pageSize} 条， 这是第   ${promotion.cpage}/${promotion.totalPage}  页</span>
<span>
	<#if promotion.cpage==1>
	<span style="color:#ab7b3e; padding-right:5px;">首页</span>
	<span style="color:#ab7b3e;padding-right:5px;">上一页</span>
	<#else>
		<a href="javascript:gotoPager(1)" style="color:#ab7b3e; padding-right:5px;">首页</a>
		<a href="javascript:gotoPager(${promotion.previousPage})" style="color:#ab7b3e;padding-right:5px;">上一页</a>
	</#if> 
	
	<#--<a style="color:#ab7b3e;padding-right:5px;">${promotion.cpage}</a>-->
	
	<#if promotion.cpage==promotion.totalPage>
	<span style="color:#ab7b3e; padding-right:5px;">下一页 </span>
	<span style="color:#ab7b3e;padding-right:5px;">末页</span>
	<#else> 
		<a href="javascript:gotoPager(${promotion.nextPage})" style="color:#ab7b3e; padding-right:5px;">下一页</a>
		<a href="javascript:gotoPager(${promotion.totalPage})" style="color:#ab7b3e;padding-right:5px;">末页</a>
	</#if>
</span>
</div>
<script type="text/javascript">
	//首页、上一页、下一页、末页
	function gotoPager(currentPage){
		window.location.href="${base}/specialOffers.htm?currentPage="+currentPage;
	}
</script>