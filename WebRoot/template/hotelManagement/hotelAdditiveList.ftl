<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	子酒店列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/hotelManage/insert.htm";
	});
});
function deletePromotion(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotelManage/delete.htm?hotelAdditive.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		子酒店列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotelManage/hotelAdditiveList.htm" method="post">
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加酒店" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" >酒店编号</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" >酒店名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" >酒店英文名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" >星级</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" >状态</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as additive>
					<tr>
						<td>
							${additive.hotelCode}
						</td>
						<td>
							${additive.name}
						</td>
						<td>
							${additive.nameEn}
						</td>
						<td>
							<#if additive.starNb=1>
							一星级
							<#elseif additive.starNb=2>
							二星级
							<#elseif additive.starNb=3>
							三星级
							<#elseif additive.starNb=4>
							四星级
							<#else>
							五星级
							</#if>
						</td>
						<td>
							<#if additive.status==0>
								运营中
							<#else>
								筹建
							</#if>
						</td>
						<td>
						
							<a href="${base}/hotelManage/updateHotel.htm?hotelAdditive.id=${additive.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="deletePromotion(${additive.id})" title="[删除]"><font color="red">[删除]</font></a>
							
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