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
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});
	
	var $validateForm = $("#validateForm");
				
		// 表单验证
		$validateForm.validate({
			rules: {
				"travel.titleCn":{
					required:true
				},
				"travel.bookTell":{
					required:true
				},
				"travel.address":{
					required:true
				},
				"travel.price":{
					required:true
				},
				"travel.beginDatetime":{
					required:true
				},
				"travel.endDatetime":{
					required:true
				},
				"travel.contentCn":{
					required:true
				},
				"travel.imageDigest":{
					required:true
				},
				"travel.imageContent":{
					required:true
				},
				"travel.linkeUrl":{
					required:true
				},
				
			},
			messages: {
				"travel.titleCn":{
					required:"标题不能为空!"
				},
				"travel.bookTell":{
					required:"预约电话不能为空!"
				},
				"travel.address":{
					required:"地址不能为空!"
				},
				"travel.price":{
					required:"价格不能为空!"
				},
				"travel.beginDatetime":{
					required:"开始时间不能为空!"
				},
				"travel.endDatetime":{
					required:"结束时间不能为空!"
				},
				"travel.contentCn":{
					required:"中文内容不能为空!"
				},
				"travel.imageDigest":{
					required:"图片（小）不能为空!"
				},
				"travel.imageContent":{
					required:"图片（大）不能为空!"
				},
				
				"travel.linkeUrl":{
					required:"淘宝店链接地址不能为空!"
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
		旅游添加
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/travel/travelInsert.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					中文标题: 
				</th>
				<td>
					<input  id="titleCn" class="formText" name="travel.titleCn" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文标题: 
				</th>
				<td>
					<input  class="formText" name="travel.titleEn" value="" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					预约电话: 
				</th>
				<td>
					<input  id="bookTell" class="formText" name="travel.bookTell" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					地址: 
				</th>
				<td>
					<input id="address" class="formText" name="travel.address" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					价格: 
				</th>
				<td>
					<input  id="price" class="formText" name="travel.price" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					有效日期: 
				</th>
				<td>
					<input id="beginDatetime" name="travel.beginDatetime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="formText" value="" type="text">-<input id="endDatetime" name="travel.endDatetime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="formText" value="" type="text">
				</td>
				<label class="requireField">*</label>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文摘要: 
				</th>
				<td>
					<textarea  name="travel.digestCn" rows="3" cols="50"></textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文摘要: 
				</th>
				<td>
					<textarea  name="travel.digestEn" rows="3" cols="50"></textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文内容: 
				</th>
				<td>
					<textarea id="editor" name="travel.contentCn" class="editor"></textarea >
					<label class="requireField">*</label>
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					英文内容: 
				</th>
				<td>
					<textarea id="editor1" name="travel.contentEn" class="editor"></textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						展示页图片(小): 
					</th>
					<td>
						<input type="file" id="ajaxFile" name="imgFile"/><label class="requireField">200×200</label>&nbsp;&nbsp;&nbsp;
						<input type="hidden" id="travelImageDigest" name="travel.imageDigest"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFile','${base}/file/ajaxUpload.htm','travelImageDigest',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('travelImageDigest')" />
					</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					内容页图片(大): 
				</th>
				<td>
					<input type="file" id="ajaxFile2" name="imgFile"/><label class="requireField">240×240</label>&nbsp;&nbsp;&nbsp;
					<input type="hidden" id="travelImageContent" name="travel.imageContent"/>
					<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFile2','${base}/file/ajaxUpload.htm','travelImageContent',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
					<input type="button" value="清空" onclick="clearFile('travelImageContent')" />
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					淘宝店链接地址: 
				</th>
				<td>
					<input   class="formText" name="travel.linkeUrl" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  id="sort" class="formText" name="travel.sort" value="" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField">正整数（默认1000）</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					是否发布: 
				</th>
				<td>
					<input type="checkbox" name="travel.showFlg" value="1" >发布
				</td>
			</tr>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton"  value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>