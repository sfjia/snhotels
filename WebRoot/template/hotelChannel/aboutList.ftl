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
		parent.document.getElementById("mainFrame").src ="${base}/hotelChannel/aboutInsertTo.htm";
	});
});
function deleteHotelChannel(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotelChannel/delete.htm?hotelChannel.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		栏目&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotelChannel/aboutChannelList.htm" method="post">
			<div class="listBar">
				
			<input id="insertButton" class="formButton" value="添加栏目" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">栏目名称</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">排序</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">是否发布</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">创建时间</a>
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
							${prl.sort}
						</td>
						
						<td>
							<#if prl.showFlg ==1>
								√
							<#else>
								×
							</#if>
						</td>
						
						<td>
							${(prl.crateDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
							
						<td>
							<a href="${base}/hotelArticle/hotelArticleList.htm?hotelArticle.channelId=${prl.id}" title="[文章管理]" target="mainFrame" ><font color="green">[文章管理]</font></a>&nbsp;
							<a href="${base}/hotelChannel/aboutUpdateTo.htm?hotelChannel.id=${prl.id}" title="[修改]" target="mainFrame" ><font color="green">[修改]</font></a>&nbsp;
						</td>
					</tr>
						
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>