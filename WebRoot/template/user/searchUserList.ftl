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
		parent.document.getElementById("mainFrame").src ="${base}/hotelChannel/insert.htm";
	});
	$("#searchButton").click(function(){
		document.forms[0].submit();
	});
	$("#outDateButton").click(function(){
	var month=$("#month").val();
	parent.document.getElementById("mainFrame").src ="${base}/user/derive.htm?month="+month;
});
});
</script>
</head>
<body class="list">
	<div class="bar">
		栏目&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/user/searchUserList.htm" method="post">
			<div class="listBar">
					
			<label>月份：</label>
				 <select name="month" id="month"><option value="" selected="selected">全部</option>
					<option value="01"<#if month== '01'> selected</#if> >1</option>
					<option value="02"<#if month== '02'> selected</#if> >2</option>
					<option value="03"<#if month== '03'> selected</#if> >3</option>
					<option value="04"<#if month== '04'> selected</#if> >4</option>
					<option value="05"<#if month== '05'> selected</#if> >5</option>
					<option value="06"<#if month== '06'> selected</#if> >6</option>
					<option value="07"<#if month== '07'> selected</#if> >7</option>
					<option value="08"<#if month== '08'> selected</#if> >8</option>
					<option value="09"<#if month== '09'> selected</#if> >9</option>
					<option value="10"<#if month== '10'> selected</#if> >10</option>
					<option value="11"<#if month== '11'> selected</#if> >11</option>
					<option value="12"<#if month== '12'> selected</#if> >12</option>
				</select>
				<input id="searchButton" class="formButton" value="筛选" hidefocus="" type="button">
				<input id="outDateButton" class="formButton" value="数据导出" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">账户名</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">用户姓名</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">生日</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">邮箱</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">手机</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">证件号</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">会员级别</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
						${prl.webusername}
						</td>
						<td>
							${prl.firstname}${prl.lastname}
						</td>
						<td>
							${prl.birthday}
						</td>
						<td>
							${prl.email}
						</td>
						
						<td>
							${prl.phone}
						</td>
						
						<td>
							${prl.idno}
						</td>
						<td>
							${prl.level}
						</td>
							
						<td>
							<a href="${base}/user/modifyUserTo.htm?userId=${prl.id}" title="[会员管理]" target="mainFrame" ><font color="green">[会员管理]</font></a>&nbsp;
	
						</td>
					</tr>
				</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div></form>
</div></body></html>