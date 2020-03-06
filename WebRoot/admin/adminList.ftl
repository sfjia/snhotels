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
	parent.document.getElementById("mainFrame").src ="${base}/admin/insertTo.htm";
}
function hotelArticleDelete(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/admin/delete.htm?admin.id="+id;
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
				
			<input id="insertButton" class="formButton" value="添加管理员" hidefocus="" type="button"  onclick="insert()">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">用户名</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">E-mail</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">姓名</a>
					</th>
					<th>
						<a href="#" class="sort" name="id" hidefocus="">最后登录时间</a>
					</th>
					<th >
						<a href="#" class="sort" name="status" hidefocus="">最后登录IP</a>
					</th>
					<th >
						<a href="#" class="sort" name="status" hidefocus="">状态</a>
					</th>
					<th >
						<a href="#" class="sort" name="status" hidefocus="">创建日期</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
							${prl.username}
						</td>
						<td>
							${prl.email}
						</td>
						<td>
							${prl.name}
						</td>
						<td>
							${(prl.loginDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<td>
							${prl.loginIp}
						</td>
						<td>
							<#if prl.isAccountEnabled && !prl.isAccountLocked && !prl.isAccountExpired && !prl.isCredentialsExpired>
								<span class="green">正常</span>
							<#elseif !prl.isAccountEnabled>
								<span class="red"> 未启用 </span>
							<#elseif prl.isAccountLocked>
								<span class="red"> 已锁定 </span>
							<#elseif prl.isAccountExpired>
								<span class="red"> 已过期 </span>
							<#elseif prl.isCredentialsExpired>
								<span class="red"> 凭证过期 </span>
							</#if>
						</td>
						<td>
							${(prl.createDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
	
						<td>
							<a href="${base}/admin/updateTo.htm?admin.id=${prl.id}" title="[修改]"><font color="green">[修改]</font></a>&nbsp;
							<a href="javascript:void(0);" onclick="hotelArticleDelete(${prl.id})" title="[删除]"><font color="red">[删除]</font></a>
							
						</td>
					</tr>
					</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>