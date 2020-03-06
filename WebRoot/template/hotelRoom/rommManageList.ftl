<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	房间信息列表</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/room/insert.htm?hotelRoom.hotelCode=${hotelRoom.hotelCode}";
	});
});
</script>
</head>
<body class="list">
	<div class="bar">
		房间信息列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/room/roomManageList.htm" method="post">
			<input type="hidden" id="hotelCode" name="hotelRoom.hotelCode" value=${hotelRoom.hotelCode} />
			<div class="listBar">
			<input id="insertButton" class="formButton" value="添加" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="hotelRoom.roomName" >客房</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelRoom.roomArea" >房间面积</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelRoom.roomFreeNet" >免费上网</a>
					</th>
					
					<th>
						<a href="#" class="sort" name="hotelRoom.roomShower" >独立淋浴</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelRoom.roomBathTup" >浴缸</a>
					</th>
					<th>
						<a href="#" class="sort" name="hotelRoom.roomBathTup" >排序</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as room>
					<tr>
						<td>
							${room.roomName}
						</td>
						<td>
							${room.roomArea}
						</td>
						<td>
							<#if room.roomFreeNet==1>
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							<#if room.roomShower==1>
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							<#if room.roomBathTup==1>
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							${room.sort}
						</td>
						<td>
						
							<a href="${base}/room/roomUpdate.htm?hotelRoom.id=${room.id}" title="[编辑]"><font color="green">[编辑栏目信息]</font></a>
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