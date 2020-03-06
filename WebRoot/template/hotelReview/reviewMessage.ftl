<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title><#if hotelOrder.remarkStatus==0>点评审核<#else>查看信息</#if></title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">

$().ready(function() {
	var $tab = $("#tab");
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});

	var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelOrder.replyRemark":{
					required:true
				},
			},
			messages: {
				"hotelOrder.replyRemark":{
					required:"回复点评不能为空!"
				},
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">
	<div ><!--right nav start!-->
	
</div><!--right nav over!-->
	<div class="body">
		<form id="validateForm" class="form" action="/hotel/updateReview.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="id" name="hotelOrder.id" value=${hotelOrder.id} />
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					订单号: 
				</th>
				<td>
					${hotelOrder.orderno}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店名称:
				</th>
				<td>
					${hotelOrder.hotelname}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					客房评分:
				</th>
				<td>
					${hotelOrder.kfPoint}
					
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					服务评分:
				</th>
				<td>
					${hotelOrder.fwPoint}
					
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					餐饮评分:
				</th>
				<td>
					${hotelOrder.cyPoing}
					
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					康乐评分:
				</th>
				<td>
					${hotelOrder.klPoint}
					
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
				点评内容:
				</th>
				<td>
					${(hotelOrder.roomRemark)!}
					
				</td>
			</tr>
			<#if hotelOrder.remarkStatus==0>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelOrder.reviewSort" value="1000" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					审核状态:
				</th>
				<td>
				
					<input id="remarkStatus" type="radio" checked="checked" value="1" name="hotelOrder.remarkStatus" />通过<input id="remarkStatus" type="radio" value="2" name="hotelOrder.remarkStatus"/>不通过
				</td>
			</tr>
			<#else>
				<#if hotelOrder.remarkStatus==1>
					审核通过，评论成功。
				<#else>
					审核不通过
				</#if>
			</#if>
			<tr>
					<th style="width:150px;text-align:right;">
						回复内容: 
					</th>
					<td>
						<textarea id="editor" name="hotelOrder.replyRemark" class="editor">${(hotelOrder.replyRemark)!}</textarea >
						<label id="vanclNameError"  for="hotelOrder.replyRemark"></label>
					</td>
				</tr>
			</table>
		</div>
			
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>