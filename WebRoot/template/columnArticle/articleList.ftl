<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	栏目内容列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/columnArticle/insert.htm?columnArticle.columnId="+${hotelColumn.id};
	});
});
function deletePromotion(id){
	if(confirm("你确定要禁用吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/columnArticle/delete.htm?columnArticle.id="+id;
	}
}

</script>
</head>
<body class="list">
	<div class="bar">
		栏目内容列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="/column/columnArticle.htm" method="post">
		<input type="hidden" id="id" name="hotelColumn.id" value=${hotelColumn.id} />
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="columnArticle.id" >名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="columnArticle.columnCode" >排序</a>
					</th>
					<th>
						<a href="#" class="sort" name="columnArticle.status" >状态</a>
					</th>
					<th>
						<a href="#" class="sort" name="columnArticle.columnName" >语言</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as article>
					<tr>
						<td>
							${article.articleTitle}
						</td>
						<td>
							${article.sort}
						</td>
						<td>
							<#if article.status==1>
								可用
							<#else>
								禁用
							</#if>
						</td>
						<td>	
							<#if article.language==1>
								中文
							<#else>
								英文
							</#if>
							
						</td>
						<td>
							<a href="${base}/columnArticle/articleUpdate.htm?columnArticle.id=${article.id}" title="[编辑]"><font color="green">[编辑]</font></a>
						  <#if article.status==1>
							<a href="javascript:void(0);" onclick="deletePromotion(${article.id})" title="[禁用]"><font color="red">[禁用]</font></a>
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