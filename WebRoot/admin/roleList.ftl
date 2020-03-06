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

function insert(){
	parent.document.getElementById("mainFrame").src ="${base}/role/insertTo.htm";
}
function roleDelete(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/role/delete.htm?role.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		管理员&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/admin/adminList.htm" method="post">
			<div class="listBar">
				
			<input id="insertButton" class="formButton" value="添加角色" hidefocus="" type="button"  onclick="insert()">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="id" hidefocus>ID</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus>角色名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="isSystem" hidefocus>系统内置</a>
					</th>
					<th>
						<a href="#" class="sort" name="description" hidefocus>描述</a>
					</th>
					<th>
						<a href="#" class="sort" name="createDate" hidefocus>创建日期</a>
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
							${prl.name}
						</td>
						<td>
							<#if prl.isSystem >
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							${prl.description}
						</td>
						<td>
							${(prl.createDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
	
						<td>
							
						
							<#if prl.isSystem >	<a href="${base}/role/modifyTo.htm?role.id=${prl.id}" title="[查看]"><font color="green">[查看]</font></a>&nbsp;
							 
							<#else>
								<a href="${base}/role/modifyTo.htm?role.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
								<a href="javascript:void(0);" onclick="roleDelete(${prl.id})" title="[删除]"><font color="red">[删除]</font></a>
							</#if>
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>