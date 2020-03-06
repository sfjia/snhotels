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
function deleteCode(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/room/deleteRoomCode.htm?hotelRoomCode.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		客房编码列表&nbsp;
	</div>
	<div class="body">
			
			<table id="listTable" class="listTable">
				<tbody><tr>
				
					<th>
						<a href="#" class="sort"  >酒店名称</a>
					</th>
					<th>
						<a href="#" class="sort"  >星级</a>
					</th>
					<th>
						<a href="#" class="sort"  >客房编码</a>
					</th>
					
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as additive>
					<tr>
						
						<td>
							${additive.name}
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
							<table  class="listTable">
							<#list roomCodeList as hotelRoomCode >
							  <#if hotelRoomCode.hotelCode ==additive.hotelCode>
								<tr>
									<td>${hotelRoomCode.roomCode}</td>
									<td><a href="${base}/room/updateRoomCode.htm?hotelRoomCode.id=${hotelRoomCode.id}" title="[编辑]">[编辑]</a><a href="javascript:void(0);" onclick="deleteCode(${hotelRoomCode.id})" title="[删除]">[删除]</a></td>
								</tr>
							  </#if>
							</#list>
							</table>
						</td>
						<td>
							<a href="${base}/room/addRoomCode.htm?hotelRoomCode.hotelCode=${additive.hotelCode}" title="[添加客房编码]"><font color="green">[添加客房编码]</font></a>&nbsp;
							
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
		
			
	</div>
</div></body></html>