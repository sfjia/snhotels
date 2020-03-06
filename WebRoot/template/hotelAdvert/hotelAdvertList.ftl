<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	广告列表</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">

function insert(classifyId){
	parent.document.getElementById("mainFrame").src ="${base}/hotelAdvert/insert.htm?hotelAdvert.classifyId="+classifyId;
}
function hotelAdvertDelete(id,classifyId){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotelAdvert/delete.htm?hotelAdvert.id="+id+"&hotelAdvert.classifyId="+classifyId;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		广告&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotelAdvert/hotelAdvertList.htm" method="post">
			<input type="hidden"  name="hotelAdvert.classifyId" value="${hotelAdvert.classifyId}"/>
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加广告" hidefocus="" type="button"  onclick="insert(${hotelAdvert.classifyId})">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">广告标题</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">排序</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">创建时间</a>
					</th>
					<th>
						<a href="#" class="sort" name="id" hidefocus="">修改时间</a>
					</th>
					<th width="">
						<a href="#" class="sort" name="status" hidefocus="">摘要</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
							${prl.titleCn}
						</td>
						<td>
							${prl.sort}
						</td>
						<td>
							${(prl.createDate ?string("yyyy-MM-dd HH:mm"))!}
						</td>
						
						<td>
							${(prl.modifyDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<td>
							${prl.summaryCn}
						</td>
	
						<td>
							<a href="${base}/hotelAdvert/update.htm?hotelAdvert.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="hotelAdvertDelete(${prl.id},${hotelAdvert.classifyId})" title="[删除]"><font color="red">[删除]</font></a>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>