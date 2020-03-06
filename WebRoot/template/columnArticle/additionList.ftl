<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	附加信息列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/addition/insert.htm?hotelAddition.hotelCode=${hotelAddition.hotelCode}";
	});
});
function deleteAddition(id){
	if(confirm("你确定要禁用吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/addition/delete.htm?hotelAddition.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		附加信息列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/addition/additionList.htm" method="post">
		<input type="hidden" id="hotelCode" name="hotelAddition.hotelCode" value=${hotelAddition.hotelCode} />
		<input type="hidden" id="id" name="hotelColumn.id" value=${hotelAddition.columnId} />
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="hotelAddition.id" >ID</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelAddition.name" >信息名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelAddition.hotelName" >酒店名称</a>
					</th>
					
					<th>
						<a href="#" class="sort" name="hotelAddition.status" >状态</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as addition>
					<tr>
						<td>
							${addition.id}
						</td>
						<td>
							${addition.name}
						</td>
						<td>
							${addition.hotelName}
						</td>
						
						<td>
							<#if addition.status=1>
							启用
							<#else>
							禁用
							</#if>
						</td>
						
						<td>
						
							<a href="${base}/addition/additionUpdate.htm?hotelAddition.id=${addition.id}" title="[编辑信息]"><font color="green">[编辑栏目信息]</font></a>
							 <#if addition.status==1>
							<a href="javascript:void(0);" onclick="deleteAddition(${addition.id})" title="[禁用]"><font color="red">[禁用]</font></a>
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