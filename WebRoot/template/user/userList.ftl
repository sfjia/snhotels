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
		var webusername=$("#webusername").val();
		var name=$("#name").val();
		var phone=$("#phone").val();
		var email=$("#email").val();
		parent.document.getElementById("mainFrame").src ="${base}/houtaiUser/userList.htm?webusername="+webusername+"&name="+name+"&phone="+phone+"&email="+email;
	});
});
</script>
</head>
<body class="list">
	<div class="bar">
		栏目&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/houtaiUser/userList.htm" method="post">
			<div class="listBar">
				<label>用户名：</label><input name="borrow.user.username" id="webusername" type="text"></label>
				<label>姓名：</label><input name="borrow.user.username" id="name" type="text"></label>
				<label>手机：</label><input name="borrow.user.username" id="phone" type="text"></label>
				<label>邮箱：</label><input name="borrow.user.username" id="email" type="text"></label>
				<input id="searchButton" class="formButton" value="搜 索" hidefocus="" type="button">
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