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
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/room/insert.htm";
	});
});
function deleteRoom(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/room/delete.htm?room.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		优惠活动列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/room/roomList.htm" method="post">
			<div class="listBar">
			
			<#--<label>活动名称：</label><input name="borrow.user.username" id="username" type="text">
				<label>标类型：</label>
				 <select name="borrow.type" id="type"><option value="" selected="selected">全部</option>
				<option value="1">天标</option>
				<option value="0">秒标</option>
				<option value="2">流转标</option>
				<option value="3">信用标</option>
				<option value="4">月标</option>
				<option value="4">流转标</option>
				</select>
				<input id="searchButton" class="formButton" value="搜 索" hidefocus="" type="button">
				&nbsp;&nbsp;
				<label>每页显示: </label>
				<select name="pager.pageSize" id="pageSize">
					<option value="10">
						10
					</option>
					<option value="20" selected="selected">
						20
					</option>
					<option value="50">
						50
					</option>
					<option value="100">
						100
					</option>
				</select>-->
				
			<input id="insertButton" class="formButton" value="添加房间" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="id" hidefocus="">ID</a>
					</th>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">酒店代码</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">房间名字</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">房间价格</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">排序</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">web状态</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">pad状态</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">app状态</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">wap状态</a>
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
							${prl.hotelCode}
						</td>
						<td>
							${prl.roomName}
						</td>
						<td>
							${prl.price}
						</td>
						<td>
							${prl.sort}
						</td>
						
						<td>
							<#if prl.statusCodeWeb =="1">
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							<#if prl.statusCodePad =="1">
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							<#if prl.statusCodeApp =="1">
								√
							<#else>
								×
							</#if>
						</td>
						<td>
							<#if prl.statusCodeWap =="1">
								√
							<#else>
								×
							</#if>
						</td>
							
						<td>
						
							<a href="${base}/room/update.htm?room.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="deleteRoom(${prl.id})" title="[删除]"><font color="red">[删除]</font></a>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>