<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	活动列表</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/promotion/insert.htm";
	});
});
function deletePromotion(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/promotion/delete.htm?promotion.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		优惠活动列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/promotion/promotionList.htm" method="post">
			<div class="listBar">
	
			<input id="insertButton" class="formButton" value="添加活动" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="id" hidefocus="">ID</a>
					</th>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">标题</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">创建时间</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">修改时间</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">是否发布</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">排序</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
							${prl.id}
						</td>
						<td>
							${prl.titleCn}
						</td>
						<td>
							${(prl.createDatetime?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<td>
							${(prl.modifyDatetime?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<td>
							<#if prl.showFlg =="1">
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							${prl.sort}
						</td>
							
						<td>
						
							<a href="${base}/promotion/update.htm?promotion.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="deletePromotion(${prl.id})" title="[删除]"><font color="red">[删除]</font></a>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>