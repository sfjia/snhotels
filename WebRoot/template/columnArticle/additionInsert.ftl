<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>酒店管理</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
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

</script>
</head>
<body class="input">
	<div class="body">
		<form id="validateForm" class="form" action="/addition/additionInsert.htm"  method="post">
		<input type="hidden" id="hotelCode" name="hotelAddition.hotelCode" value=${hotelAddition.hotelCode} />
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		<tr><td colspan="2" ><h3>信息添加</h3></td></tr>
			<tr>
				<th >
					信息名称: 
				</th>
				<td>
				<select id="columnCode"  name="hotelAddition.name"  value=""> 
					<option value="酒店位置">酒店位置</option>
					<option value="餐厅及酒吧">餐厅及酒吧</option>
					<option value="房间">房间</option>
					<option value="健身娱乐">健身娱乐</option>
					<option value="会议设施">会议设施</option>
				 	<option value="其他">其他</option>
				</SELECT> 
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
					<input id="status" type="radio" checked="checked" value="1" name="hotelAddition.status" />启用<input id="status" type="radio" value="0" name="hotelAddition.status"/>禁用
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					信息内容: 
				</th>
				<td>
					<textarea id="editor" name="hotelAddition.note" class="editor"></textarea >
					<label id="vanclHotelCodeError"  for="hotelAddition.note"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					信息内容(英文): 
				</th>
				<td>
					<textarea id="editor1" name="hotelAddition.noteEn" class="editor"></textarea >
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					链接地址: 
				</th>
				<td>
					<input  class="formText" name="hotelAddition.linkUrl" value="" type="text">
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelAddition.sort" value="1000" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label id="vanclHotelCodeError"  for="hotelAddition.sort"></label>
				</td>
			</tr>
			</table>
	
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>