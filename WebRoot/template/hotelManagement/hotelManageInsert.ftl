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
				"hotelAdditive.hotelCode":{
					required: true,
					remote:{
						type:"POST",
					 	url:"${base}/hotelManage/checkHotelCode.htm"
					}
				},
				"hotelAdditive.name":{
					required:true
				},
				
			},
			messages: {
				"hotelAdditive.hotelCode":{
					required: "酒店编号不能为空!",
					remote: "此编号不可用"
				},
				"hotelAdditive.name":{
					required:"酒店名称不能为空!"
				},
				
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
		
		  $("#checkAll").click(function() {
                $('input[name="columnCode"]').attr("checked",this.checked); 
            });
            var $columnCode = $("input[name='columnCode']");
            $columnCode.click(function(){
    $("#checkAll").attr("checked",$columnCode.length == $("input[name='columnCode']:checked").length ? true : false);
            });
	});
</script>
</head>
<body class="input">
	<div class="bar">
		酒店添加
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/hotelManage/hotelMageInsert.htm"  method="post">
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		<tr><td colspan="2" ><h3>增加酒店</h3></td></tr>
			<tr>
				<th >
					酒店编号: 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.hotelCode" value="" type="text">
					<label id="vanclHotelCodeError"  for="hotelAdditive.hotelCode"></label>
				</td>
			</tr>
			<tr>
				<th >
					酒店名称: 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.name" value="" type="text">
					<label id="vanclNameError"  for="hotelAdditive.name"></label>
				</td>
			</tr>
			<tr>
				<th >
					酒店名称(英文): 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.nameEn" value="" type="text">
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
					<option value="4" selected="selected">
						四星级
					</option>
					<option value="5">
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
					<input type="radio" checked="checked" name="hotelAdditive.status" id="status" value="0"  />运营中
					<input type="radio" name="hotelAdditive.status" id="status" value="1"  />筹建
				</td>
			</tr> 
			<tr>
			<#--
				<th >
					酒店栏目: 
				</th>
				<td>
					<input id="checkAll" type="checkbox" checked />全选
					<#list colInfoList as info>
						<label><input type="checkbox" value="${info.columnCode}" checked name="columnCode">${info.columnName}</label>
					</#list>		
				</td>
			</tr>
			<tr>
				<th >
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelAdditive.sort" value="1000" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label id="vanclNameError"  for="hotelAdditive.sort"></label>
				</td>
			</tr>-->
				<tr>
					<th>
						备注: 
					</th>
					<td>
						<textarea  name="hotelAdditive.remark" rows="3" cols="50"></textarea >
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