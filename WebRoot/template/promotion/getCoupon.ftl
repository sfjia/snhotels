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
		parent.document.getElementById("mainFrame").src ="${base}/promotion/insert.htm";
	});
	
	$("#searchButton").click(function(){
	$("#currentPage").val(1);
	document.forms[0].submit();
	});
});
function deletePromotion(id){
	if(confirm("你确定要删除吗？")){
		parent.document.getElementById("mainFrame").src ="${base}/promotion/delete.htm?promotion.id="+id;
	}
}
</script>
</head>
<body class="list">
	<div class="bar">
		手机列表&nbsp;总记录数: ${pager.totalItem} (共${pager.totalPage}页)
	</div>
	<div class="body">
		<form id="listForm" action="${base}/coupon/couponList.htm" method="post">
			<div class="listBar">
				<label>手机号：</label><input name="coupon.phone" value="${coupon.phone}" id="webusername" type="text">
				<label>优惠活动名称：</label>
				 <select name="coupon.promotionId" id="promotionId">
					 <option value="" selected="selected">全部</option>
					 <#list promotions as prs>
						<option value="${prs.id}" <#if coupon.promotionId==prs.id> selected</#if> >${prs.titleCn}</option>
					</#list>
				</select>
				<label>使用调件：</label>
				 <select name="coupon.isAcquire" id="isAcquire"><option value="" selected="selected">全部</option>
					<option value="1"<#if coupon.isAcquire== '1'> selected</#if> >已使用</option>
					<option value="0"<#if coupon.isAcquire== '0'> selected</#if> >未使用</option>
				</select>
				<input id="searchButton" class="formButton" value="搜 索" hidefocus="" type="button">
			</div>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">优惠活动标题</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">参加手机号</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">使用状态</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">获取日期</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
							${prl.promotionTitle}
						</td>
						<td>
							${prl.phone}
						</td>
						<td>
							<#if prl.isAcquire ==1>
								已使用
							<#else>
								未使用
							</#if>
						</td>
						<td>
							${(prl.createDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
						<#if prl.isAcquire ==0>
							<td>
								<a href="${base}/coupon/useCoupon.htm?coupon.id=${prl.id}" title="[使用优惠卷]"><font color="green">[使用优惠卷]</font></a>&nbsp;
							</td>
						<#else>
							<td>
								优惠卷已使用
							</td>
						</#if>
						
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