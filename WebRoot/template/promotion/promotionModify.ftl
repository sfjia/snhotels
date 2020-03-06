<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>系统设置</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
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
				"promotion.titleCn":{
					required:true
				},
				"promotion.bookTell":{
					required:true
				},
				"promotion.beginDatetime":{
					required:true
				},
				"promotion.endDatetime":{
					required:true
				},
				"promotion.digestCn":{
					required:true
				},
				
				
			},
			messages: {
				"promotion.titleCn":{
					required:"标题不能为空!"
				},
				"promotion.bookTell":{
					required:"预约电话不能为空!"
				},
				"promotion.beginDatetime":{
					required:"开始时间不能为空!"
				},
				"promotion.endDatetime":{
					required:"结束时间不能为空!"
				},
				"promotion.digestCn":{
					required:"中文摘要不能为空!"
				},
				"promotion.contentCn":{
					required:"中文内容不能为空!"
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
	<div class="bar">
		活动修改
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/promotion/promotionUpdate.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					中文标题: 
				</th>
				<td>
					<input id="titleCn" class="formText" name="promotion.titleCn" value="${promotion.titleCn}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文标题: 
				</th>
				<td>
					<input  class="formText" name="promotion.titleEn" value="${promotion.titleEn}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					预约电话: 
				</th>
				<td>
					<input id="bookTell" class="formText" name="promotion.bookTell" value="${promotion.bookTell}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					有效日期: 
				</th>
				<td>
					<input id="beginDatetime" name="promotion.beginDatetime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="formText" value="${(promotion.beginDatetime?string("yyyy-MM-dd HH:mm"))!}" type="text">-<input id="endDatetime" name="promotion.endDatetime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="formText" value="${(promotion.endDatetime?string("yyyy-MM-dd HH:mm"))!}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文摘要: 
				</th>
				<td>
					<textarea id="editor" name="promotion.digestCn" class="editor">${promotion.digestCn}</textarea >
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文摘要: 
				</th>
				<td>
					<textarea id="editor1" name="promotion.digestEn" class="editor">${promotion.digestEn}</textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文内容: 
				</th>
				<td>
					<textarea id="editor2" name="promotion.contentCn" class="editor">${promotion.contentCn}</textarea >
					<label class="requireField">*</label>
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					英文内容: 
				</th>
				<td>
					<textarea id="editor3" name="promotion.contentEn" class="editor">${promotion.contentEn}</textarea >
					<span class="requireField">*</span>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFile" name="imgFile"/>
						<input type="hidden" id="promotionImage" name="promotion.image"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFile','${base}/file/ajaxUpload.htm','promotionImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('promotionImage')" />
					</td>
					<span class="requireField">*</span>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input id="sort" class="formText" name="promotion.sort" value="${promotion.sort}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField">正整数（默认1000）</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					是否发布: 
				</th>
				<td>
					<input type="checkbox" name="promotion.showFlg" value="1" <#if promotion.showFlg==1>checked</#if> >发布
				</td>
			</tr>
			<input type="hidden" name="promotion.id" value="${promotion.id}"/>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>