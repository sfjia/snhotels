<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>栏目内容添加</title>
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
				"hotelAddition.note":{
					required:true
				},
				"hotelAddition.sort":{
					required:true
				},
			},
			messages: {
				"hotelAddition.note":{
					required:"内容不能为空!"
				},
				"hotelAddition.sort":{
					required:"排序号不能为空!"
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

	<div class="body">
		<form id="validateForm" class="form" action="/addition/update.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="id" name="hotelAddition.id" value=${hotelAddition.id} />
		<input type="hidden" id="name" name="hotelAddition.name" value=${hotelAddition.name} />
		<input type="hidden" id="hotelCode" name="hotelAddition.hotelCode" value=${hotelAddition.hotelCode} />
		<div class="index">
		<table class="listTable">
		<tr><td colspan="2" ><h3>信息修改</h3></td></tr>
			<tr>
				<th >
					信息名称: 
				</th>
				<td>
					${hotelAddition.name} 
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
					<#if hotelAddition.status==1>
						<input id="status" type="radio" checked="checked" value="1" name="hotelAddition.status" />启用<input id="status" type="radio" value="0" name="hotelAddition.status"/>禁用
					<#else>
						<input id="status" type="radio"  value="1" name="hotelAddition.status" />启用<input id="status" type="radio" checked="checked" value="0" name="hotelAddition.status"/>禁用
					</#if>
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					信息内容: 
				</th>
				<td>
					<textarea id="editor" name="hotelAddition.note" class="editor">${hotelAddition.note}</textarea >
					<label id="vanclHotelCodeError"  for="hotelAddition.note"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					信息内容(英文): 
				</th>
				<td>
					<textarea id="editor2" name="hotelAddition.noteEn" class="editor">${hotelAddition.noteEn}</textarea >
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					链接地址: 
				</th>
				<td>
					<input  class="formText" name="hotelAddition.linkUrl" value="${hotelAddition.linkUrl}" type="text">
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelAddition.sort" value="${hotelAddition.sort}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label id="vanclHotelCodeError"  for="hotelAddition.sort"></label>
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