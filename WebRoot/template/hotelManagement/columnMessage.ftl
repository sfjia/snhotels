<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>酒店栏目编辑</title>
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
				"hotelColumn.note":{
					required:true
				},
			},
			messages: {
				"hotelColumn.note":{
					required:"内容不能为空!"
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
		<form id="validateForm" class="form" action="/column/update.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="id" name="hotelColumn.id" value=${hotelColumn.id} />
		<input type="hidden" id="columnCode" name="hotelColumn.columnCode" value=${hotelColumn.columnCode} />
		<input type="hidden" id="columnName" name="hotelColumn.columnName" value=${hotelColumn.columnName} />
		<input type="hidden" id="hotelCode" name="hotelColumn.hotelCode" value="${hotelColumn.hotelCode}" />
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					栏目编号: 
				</th>
				<td>
					${hotelColumn.columnCode}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					栏目名称:
				</th>
				<td>
					${hotelColumn.columnName}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店编号:
				</th>
				<td>
					${hotelColumn.hotelCode}
					
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
				 <#if hotelColumn.status==1>
					<input id="status" type="radio" checked="checked" value="1" name="hotelColumn.status" />可用<input id="status" type="radio" value="0" name="hotelColumn.status"/>禁用
				<#else>
					<input id="status" type="radio"  value="1" name="hotelColumn.status" />可用<input id="status" type="radio"checked="checked" value="0" name="hotelColumn.status"/>禁用
				</#if>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						横幅图片: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="bannerImage" name="hotelColumn.bannerImage"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','bannerImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('bannerImage')" />（图片宽高：770*300）
					</td>
				</tr>
				<#if hotelColumn.columnCode=="KFJFJ"> 
				<tr>
				<th style="width:150px;text-align:right;">
					栏目概述: 
				</th>
				<td>
					<textarea id="editor" name="hotelColumn.note" class="editor">${hotelColumn.note}</textarea >
					<label id="vanclNameError"  for="hotelColumn.note"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					栏目概述(英文): 
				</th>
				<td>
					<textarea id="editor1" name="hotelColumn.noteEn" class="editor">${hotelColumn.noteEn}</textarea >
				</td>
			</tr>
			</#if>
			<tr>
				<th style="width:150px;text-align:right;">
					备注: 
				</th>
				<td>
					<textarea  name="hotelColumn.remark" rows="3" cols="50">${hotelColumn.remark}</textarea >
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