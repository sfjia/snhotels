<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	分类列表</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/hotelClassify/insert.htm";
	});
});
function deleteHotelClassify(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotelClassify/delete.htm?hotelClassify.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		栏目&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotelClassify/hotelClassifyList.htm" method="post">
			<div class="listBar">
				<input id="insertButton" class="formButton" value="添加分类" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">分类名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">分类编码</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">分类说明</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
						${prl.nameCn}
						</td>
						<td>
							${prl.code}
						</td>
						<td>
							${prl.remarkCn}
						</td>
						<td>
							<a href="${base}/hotelAdvert/hotelAdvertList.htm?hotelAdvert.classifyId=${prl.id}" title="[图片管理]" target="mainFrame" ><font color="green">[图片管理]</font></a>&nbsp;
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>