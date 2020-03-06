<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>入住要求</title>
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

<script type="text/javascript">
	$().ready(function() {
		
		var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				
				"roomColumn.name":{
					required: true,
					remote:{
						type:"POST",
					 	url:"${base}/roomColumn/checkColumnName.htm?checkType=2&roomColumn.id=${roomColumn.id}"
					}
				},
				
			},
			messages: {
				
				"roomColumn.name":{
					required:"名称内容不能为空!"
				},
				
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
		
	});
</script>
</head>
<body class="input">
	<div class="bar">
		<h4>入住要求名称修改</h4>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/roomColumn/updateColumn.htm"  method="post">
		<input type="hidden" id="id" name="roomColumn.id" value=${roomColumn.id} />
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		
			<tr>
				<th >
					名称: 
				</th>
				<td>
					<input  class="formText" name="roomColumn.name" value="${roomColumn.name}" type="text">
					<label id="vanclHotelCodeError"  for="roomColumn.name"></label>
				</td>
			</tr>
			<#--
			<tr>
				<th >
					选择类型: 
				</th>
				<td>
				<#if roomColumn.type=1>
					<input type="radio" checked="checked" name="roomColumn.type" id="type" value="1"  />单选
					<input type="radio" name="roomColumn.type" id="type" value="2"  />多选
				<#else>
					<input type="radio"  name="roomColumn.type" id="type" value="1"  />单选
					<input type="radio" checked="checked" name="roomColumn.type" id="type" value="2"  />多选
				</#if>
				</td>
			</tr> -->
			</table>
	
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>