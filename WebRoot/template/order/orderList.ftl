<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>	活动列表</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.cookie.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#insertButton").click(function(){
		parent.document.getElementById("mainFrame").src ="${base}/hotelChannel/insert.htm";
	});
	
	$("#searchButton").click(function(){
	//var $listForm=$("#listForm");
	//$listForm.submit();
	document.forms[0].submit();
});
$("#outDateButton").click(function(){
	var orderno=$("#orderno").val();
	var customername2=$("#customername").val();
	var phone=$("#phone").val();
	var email=$("#email").val();
	var cardno=$("#cardno").val();
	var filterStartTime=$("#filterStartTime").val();
	var filterEndTime=$("#filterEndTime").val();
	parent.document.getElementById("mainFrame").src ="${base}/order/derive.htm?hotelOrder.filterStartTime="+filterStartTime+"&hotelOrder.filterEndTime="+filterEndTime+"&customername2="+customername2+"&cardno="+cardno+"&phone="+phone+"&email="+email+"&orderno="+orderno;
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
		<form id="listForm" action="${base}/order/orderList.htm" method="post">
			
			<div class="listBar">
				<label>订单编号:</label><input name="orderno" id="orderno" value="${hotelOrder.orderno}" type="text" ></label>
				<label>会员卡号:</label><input name="cardno" id="cardno" value="${hotelOrder.cardno}" type="text"></label>
				<label>姓名:</label><input name="customername" id="customername" value="${hotelOrder.customername}" type="text" <#-- style="width:85px;"--> ></label>
				<label>手机:</label><input name="phone" id="phone" value="${hotelOrder.phone}" type="text"></label>
				<label>邮箱:</label><input name="email" id="email" value="${hotelOrder.email}" type="text"></label>
		
				<br/>
				<label>开始日期:</label><input id="filterStartTime" name="hotelOrder.filterStartTime" value="${ (hotelOrder.filterStartTime?string("yyyy-MM-dd"))!}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  id="createDate" type="text"  ></label>
				<label>结束日期:</label><input id="filterEndTime" name="hotelOrder.filterEndTime" value="${(hotelOrder.filterEndTime?string("yyyy-MM-dd"))!}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  id="createDate" type="text"  ></label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input id="searchButton" class="formButton" value="搜 索" hidefocus="" type="button">
				<input id="outDateButton" class="formButton" value="导出数据" hidefocus="" type="button">
			</div>
		</form>
			<table id="listTable" class="listTable">
				<tbody><tr>
					<th>
						<a href="#" class="sort" name="user.username" hidefocus="">订单编号</a>
					</th>
					<th>
						<a href="#" class="sort" name="name" hidefocus="">客户姓名</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">手机号</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">邮箱</a>
					</th>
					<th>
						<a href="#" class="sort" name="account" hidefocus="">创建日期</a>
					</th>
					<th>
						<a href="#" class="sort" name="status" hidefocus="">抵达——离开日期</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">房间数量</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">金额</a>
					</th>
					<th>
						<a href="#" class="sort" name="timeLimit" hidefocus="">订单状态</a>
					</th>
					<th>
						<span>操作</span>
					</th>
					
				</tr>
				<#list pager.list as prl>
					<tr>
						<td>
							${prl.orderno}
						</td>
						
						<td>
							${prl.customername}
						</td>
						
							
						<td>
							${prl.phone}
						</td>
						
						<td>
							${prl.email}
						</td>
						
						<td>
							${(prl.createDate?string("yyyy-MM-dd HH:mm"))!}
						</td>
						
						<td>
							${(prl.arrivaldate?string("yyyy-MM-dd"))!}——${(prl.leavedate?string("yyyy-MM-dd"))!}
						</td>
						<td>
							${prl.roomqty}
						</td>
						<td>
							${prl.amount}
						</td>
						<td>
							<#if prl.orderstatus==1>
								未支付
							<#elseif prl.orderstatus==2>
								支付成功
							<#elseif prl.orderstatus==3>
								已取消
							</#if>
                    <#if prl.orderstatus == 4>已入住</#if>
                    <#if prl.orderstatus == 5>预定未到</#if>
						</td>
							
						<td>
							<a href="${base}/order/modifyOrderTo.htm?orderId=${prl.id}" title="[订单管理]" target="mainFrame" ><font color="green">[订单管理]</font></a>&nbsp;
	
						</td>
					</tr>
				</#list>
			</tbody></table>
	<#include "/template/page/pager.ftl">
<div>
		
			
	</div>
</div></body></html>