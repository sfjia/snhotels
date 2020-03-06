
	<script type="text/javascript">
		//首页、上一页、下一页、末页
		function gotoPager(currentPage){
			$("#currentPage").val(currentPage);
			document.forms[1].submit();
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
	 <div style="clear:both; text-align:right; color:#ab7b3e; padding:20px 20px 60px 0;" id="pager">

			<input type="hidden" id="currentPage" name="currentPage"/>
			<#if pager.cpage==1>
				<a href="#" style="color:#ab7b3e; padding-right:5px;" class="pgNext pgEmpty">首页</a>
				<a href="#" style="color:#ab7b3e;padding-right:5px;" class="pgNext pgEmpty">上一页</a>
			<#else>
				 <a href="javascript:gotoPager(1)" style="color:#ab7b3e; padding-right:5px;" >首页</a>
				 <a href="javascript:gotoPager(${pager.previousPage})" style="color:#ab7b3e; padding-right:5px;">上一页</a>				
			</#if>
			
			
			<a href="javascript:gotoPager(${pager.cpage})" style="color:#ab7b3e;padding-right:5px;">${pager.cpage}</a> 
				
			
			<#if pager.cpage==pager.totalPage >
				<a href="#" style="color:#ab7b3e; padding-right:5px;"class="pgNext pgEmpty">下一页</a>
				<a href="#" style="color:#ab7b3e; padding-right:5px;" class="pgNext pgEmpty">末页</a>
			<#else>
				<a href="javascript:gotoPager(${pager.nextPage})" style="color:#ab7b3e; padding-right:5px;" >下一页</a>
				<a href="javascript:gotoPager(${pager.totalPage})" style="color:#ab7b3e; padding-right:5px;">末页</a>				
			</#if>
	</div>
