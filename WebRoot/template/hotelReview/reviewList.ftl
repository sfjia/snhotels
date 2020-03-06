<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	子评价列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
function deleteReview(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotel/reviewDelete.htm?hotelOrder.id="+id;
	}
}

	$().ready(function() {
	
		var $menuItem = $("#menu .menuItem");
		var $previousMenuItem;
		
		$menuItem.click( function() {
			var $this = $(this);
			if ($previousMenuItem != null) {
				$previousMenuItem.removeClass("current");
			}
			$previousMenuItem = $this;
			$this.addClass("current");
		})
	
	})
</script>
</head>
<body class="list">
	<div class="bar">
		评价列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotel/reviewList.htm" method="post">
			
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="hotelOrder.orderno" hidefocus="">订单号</a>
					</th>
					<th>
						<a href="#" class="sort" name="" hidefocus="">酒店名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelOrder.kfPoint" hidefocus="">房间得分</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelOrder.fwPoint" hidefocus="">服务得分</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelOrder.cyPoing" hidefocus="">餐饮得分</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelOrder.klPoint" hidefocus="">康乐得分</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelOrder.remarkStatus" hidefocus="">状态</a>
					</th>	
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as review>
					<tr>
						<td>
							${review.orderno}
						</td>
						<td>
							${review.hotelname}
						</td>
						<td>
							${review.kfPoint}
						</td>
						<td>
							${review.fwPoint}
						</td>
						<td>
						${review.cyPoing}
						</td>
						<td>
							${review.klPoint}
						</td>
						<td>
						<#if review.remarkStatus==0>
							未审核
						<#elseif review.remarkStatus==1>
							审核通过
						<#elseif review.remarkStatus==2>
							审核失败	
						</#if>
						</td>
						<td>
						
								<a href="${base}/hotel/reviewMes.htm?hotelOrder.id=${review.id}" title="[查看详情]"><font color="green">[<#if review.remarkStatus==0>审核<#else>查看详情</#if>]</font></a>&nbsp;
							<#if review.remarkStatus!=0>
								<a href="javascript:void(0);" onclick="deleteReview(${review.id})" title="[删除]"><font color="red">[删除]</font></a>
							</#if>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
			<#if (pager.list?size > 0)>
				<#include "/template/page/pager.ftl">
			<#else>
				<div class="noRecord">没有找到任何记录!</div>
			</#if>
<div>
		
			
	</div></form>
</div></body></html>