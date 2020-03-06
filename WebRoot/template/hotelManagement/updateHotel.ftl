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
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript">
	$().ready(function() {
		
		var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelAdditive.name":{
					required:true
				},
				"hotelAdditive.sort":{
					required:true
				},
			},
			messages: {
				"hotelAdditive.name":{
					required:"酒店名称不能为空!"
				},
				"hotelAdditive.sort":{
					required:"排序号不能为空!"
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

	<div class="body">
		<form id="validateForm" class="form" action="/hotelManage/update.htm"  method="post">
		<input type="hidden" name="hotelAdditive.hotelCode" value=${hotelAdditive.hotelCode} />
		<input type="hidden" name="hotelAdditive.id" value=${hotelAdditive.id} />
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		<tr><td colspan="2" ><h3>修改酒店</h3></td></tr>
			<tr>
				<th >
					酒店编号: 
				</th>
				<td>
					${hotelAdditive.hotelCode}
				</td>
			</tr>
			<tr>
				<th >
					酒店名称: 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.name" value="${hotelAdditive.name}" type="text">
					<label id="vanclNameError"  for="hotelAdditive.name"></label>
				</td>
			</tr>
			<tr>
				<th >
					酒店名称(英文): 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.nameEn" value="${hotelAdditive.nameEn}" type="text">
				</td>
			</tr>
			<tr>
				<th >
					酒店星级: 
				</th>
				<td>
					<select name="hotelAdditive.starNb" id="starNb">
					<option value="1">
						一星级
					</option>
					<option value="2" >
						二星级
					</option>
					<option value="3">
						三星级
					</option>
					<option value="4" >
						四星级
					</option>
					<option value="5"selected="selected">
						五星级
					</option>
				</select>
				</td>
			</tr>
			<tr>
				<th >
					状态: 
				</th>
				<td>
					<#if hotelAdditive.status==0>	
						<input type="radio" checked="checked" name="hotelAdditive.status" id="status" value="0"  />运营中
						<input type="radio" name="hotelAdditive.status" id="status" value="1"  />筹建
					<#else>
						<input type="radio"  name="hotelAdditive.status" id="status" value="0"  />运营中
						<input type="radio" name="hotelAdditive.status" id="status" value="1"  checked="checked"/>筹建
					</#if>
				</td>
			</tr> 
			<tr>
				<th >
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.sort" value="${hotelAdditive.sort}" type="text">
					<label id="vanclNameError"  for="hotelAdditive.sort"></label>
				</td>
			</tr>
				<tr>
					<th>
						备注: 
					</th>
					<td>
						<textarea  name="hotelAdditive.remark" rows="3" cols="50">${hotelAdditive.remark}</textarea >
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