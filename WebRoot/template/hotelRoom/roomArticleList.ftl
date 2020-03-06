<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>房间附加类型列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/roomColumn/insert.htm";
	});
});
function deleteColumn(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/roomColumn/deleteColumn.htm?roomColumn.id="+id;
	}
}
function deleteArticle(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/roomColumn/deleteArticle.htm?roomColumnArticle.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		附加信息名称列表&nbsp;
	</div>
	<div class="body">
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加名称" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
				<th>
						<a href="#" class="sort"  ></a>
					</th>
					<th>
						<a href="#" class="sort" name="roomColumn.name" >名称</a>
					</th>
			<#--	<th>
						<a href="#" class="sort" name="name" >选择类型</a>
					</th>-->
					<th>
						<a href="#" class="sort" name="name" >选项</a>
					</th>
					
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list roomColumnList as roomColumn>
					<tr>
						<td>
							
						</td>
						<td>
							${roomColumn.name}
						</td>
					<#--	<td>
							<#if roomColumn.type==1>
								单选
							<#else>
								多选
							</#if>
						</td>-->
						<td>
							<table  class="listTable">
							<#list roomArticleList as article >
							  <#if article.columnId ==roomColumn.id>
								<tr>
									<td>${article.name}</td>
									<td><a href="${base}/roomColumn/updateArticle.htm?roomColumnArticle.id=${article.id}" title="[编辑]">[编辑]</a><a href="javascript:void(0);" onclick="deleteArticle(${article.id})" title="[删除]">[删除]</a></td>
								</tr>
							  </#if>
							</#list>
							</table>
						</td>
						<td>
						
							<a href="${base}/roomColumn/columnUpdate.htm?roomColumn.id=${roomColumn.id}" title="[编辑名称]"><font color="green">[编辑名称]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="deleteColumn(${roomColumn.id})" title="[删除名称]"><font color="red">[删除名称]</font></a>
							<a href="${base}/roomColumn/addArticle.htm?roomColumnArticle.columnId=${roomColumn.id}" title="[添加选项]"><font color="green">[添加选项]</font></a>&nbsp;
							
						</td>
					</tr>
					</#list>
			</tbody></table>
			
<div>
		
			
	</div>
</div></body></html>