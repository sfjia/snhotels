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

function insert(channelId){
	parent.document.getElementById("mainFrame").src ="${base}/hotelArticle/insert.htm?hotelArticle.channelId="+channelId;
}
function hotelArticleDelete(id,channelId){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/hotelArticle/delete.htm?hotelArticle.id="+id+"&hotelArticle.channelId="+channelId;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		文章&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/hotelArticle/hotelArticleList.htm" method="post">
		<input type="hidden"  name="hotelArticle.channelId" value="${hotelArticle.channelId}"/>
			<div class="listBar">
				
			<input id="insertButton" class="formButton" value="添加文章" hidefocus="" type="button"  onclick="insert(${hotelArticle.channelId})">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">文章标题</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">排序</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">是否发布</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">创建时间</a>
					</th>
					<th>
						<a href="#" class="sort" name="id" hidefocus="">修改时间</a>
					</th>
					<th width="35%">
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
							${(prl.modifyDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<td>
							${prl.summaryCn}
						</td>
	
						<td>
							<a href="${base}/hotelArticle/update.htm?hotelArticle.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="hotelArticleDelete(${prl.id},${hotelArticle.channelId})" title="[删除]"><font color="red">[删除]</font></a>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>