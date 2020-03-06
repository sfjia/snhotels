<span style=" margin-right:15px;">共   ${pager.totalItem} 条记录 ， 每页   ${pager.pageSize} 条， 这是第   ${pager.cpage}/${pager.totalPage}  页</span>
<span>
	<#if pager.cpage==1>
	<span style="color:#ab7b3e; padding-right:5px;">首页</span>
	<span style="color:#ab7b3e;padding-right:5px;">上一页</span>
	<#else>
		<a href="javascript:gotoPager(1)" style="color:#ab7b3e; padding-right:5px;">首页</a>
		<a href="javascript:gotoPager(${pager.previousPage})" style="color:#ab7b3e;padding-right:5px;">上一页</a>
	</#if> 
	
	<#--<a style="color:#ab7b3e;padding-right:5px;">${pager.cpage}</a>-->
	
	<#if pager.cpage==pager.totalPage>
	<span style="color:#ab7b3e; padding-right:5px;">下一页 </span>
	<span style="color:#ab7b3e;padding-right:5px;">末页</span>
	<#else> 
		<a href="javascript:gotoPager(${pager.nextPage})" style="color:#ab7b3e; padding-right:5px;">下一页</a>
		<a href="javascript:gotoPager(${pager.totalPage})" style="color:#ab7b3e;padding-right:5px;">末页</a>
	</#if>
</span>
<script type="text/javascript">
	var id=document.getElementById("channelId").value;
	//首页、上一页、下一页、末页
	function gotoPager(currentPage){
		window.location.href="${base}/aboutChanlContent.htm?hotelChannel.id="+id+"&currentPage="+currentPage;
	}
</script>

