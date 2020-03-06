<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	酒店栏目列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">

</script>
</head>
<body class="list">
	<div class="bar">
		酒店栏目列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/column/columnList.htm" method="post">
		<input type="hidden" id="hotelCode" name="hotelColumn.hotelCode" value=${hotelColumn.hotelCode} />
			
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="column.id" >栏目ID</a>
					</th>
					<th>
						<a href="#" class="sort" name="column.columnCode" >栏目编号</a>
					</th>
					<th>
						<a href="#" class="sort" name="column.columnName" >栏目名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="column.hotelName" >酒店名称</a>
					</th>
					
					<th>
						<a href="#" class="sort" name="column.status" >状态</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as column>
					<tr>
						<td>
							${column.id}
						</td>
						<td>
							${column.columnCode}
						</td>
						<td>
							${column.columnName}
						</td>
						<td>
							${column.hotelName}
						</td>
						
						<td>
							<#if column.status=1>
							可用
							<#else>
							禁用
							</#if>
						</td>
						
						<td>
							<#if column.columnCode !="KHDP">
								<#if column.columnCode !="JDTK">
									<a href="${base}/column/columnUpdate.htm?hotelColumn.id=${column.id}" title="[编辑栏目信息]"><font color="green">[编辑栏目信息]</font></a>
								</#if>
								<#if column.columnCode !="KFJFJ">
									<a href="${base}/column/columnArticle.htm?hotelColumn.id=${column.id}" title="[栏目内容管理]"><font color="green">[栏目内容管理]</font></a>
								</#if>
							<#else>
								
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