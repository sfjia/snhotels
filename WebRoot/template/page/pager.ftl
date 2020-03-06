<div class="pager">
	<script type="text/javascript">
		//首页、上一页、下一页、末页
		function gotoPager(currentPage){
			$("#currentPage").val(currentPage);
			document.forms[0].submit();
		}
		//输入页
		function inputPager(){
			var re = /^([0-9]*|0)$/; //正整数
			var pagevalue = $("#gotoSize").val();
			if(!re.test(pagevalue)){
				$("#gotoSize").val("");
				return false;
			}
			gotoPager(pagevalue);
		}
	</script>
	<span id="pager">
		<ul class="pages">
					<li class="pgNext pgEmpty">总共：${pager.totalPage}页</li>
			<input type="hidden" id="currentPage" name="currentPage" value="${pager.cpage}"/>
			<#if pager.cpage==1>
				<li class="pgNext pgEmpty">首页</li>
				<li class="pgNext pgEmpty">上一页</li>
			<#else>
				<li class="pgNext pgEmpty"> <a href="javascript:gotoPager(1)" >首页</a></li>
				<li class="pgNext pgEmpty"> <a href="javascript:gotoPager(${pager.previousPage})">上一页</a>	</li>			
			</#if>
			
			
			<li class="page-number pgCurrent"><a href="javascript:gotoPager(${pager.cpage})">${pager.cpage}</a> </li>
				
			
			<#if pager.cpage==pager.totalPage >
				<li class="pgNext pgEmpty">下一页</li>
				<li class="pgNext pgEmpty">末页</li>
			<#else>
				<li class="pgNext pgEmpty"><a href="javascript:gotoPager(${pager.nextPage})" >下一页</a></li>
				<li class="pgNext pgEmpty"><a href="javascript:gotoPager(${pager.totalPage})">末页</a></li>				
			</#if>
		</ul>
	</span>
</div>