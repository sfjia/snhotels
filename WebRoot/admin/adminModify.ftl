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
		errorContainer: $validateErrorContainer,
		errorLabelContainer: $validateErrorLabelContainer,
		wrapper: "li",
		errorClass: "validateError",
		ignoreTitle: true,
		rules: {
			<#if isAddAction>
				"admin.username": {
					required: true,
					username: true,
					minlength: 2,
					maxlength: 	 20,
					remote:{
						type:"POST",
					 	url:"admin!checkUsername.action"
					}
				},
			</#if>
			"admin.password": {
				<#if isAddAction>
					required: true,
				</#if>
				minlength: 4,
				maxlength: 	 20
			},
			"rePassword": {
				<#if isAddAction>
					required: true,
				</#if>
				equalTo: "#password"
			},
			"admin.email": {
				required: true,
				email: true
			},
			"roleList.id": "required"
		},
		messages: {
			<#if isAddAction>
				"admin.username": {
					required: "请填写用户名",
					username: "用户名只允许包含中文、英文、数字和下划线",
					minlength: "用户名必须大于等于2",
					maxlength: 	 "用户名必须小于等于20",
					remote: "用户名已存在"
				},
			</#if>
			"admin.password": {
				<#if isAddAction>
					required: "请填写密码",
				</#if>
				minlength: "密码必须大于等于4",
				maxlength: 	 "密码必须小于等于20"
			},
			"rePassword": {
				<#if isAddAction>
					required: "请填写重复密码",
				</#if>
				equalTo: "两次密码输入不一致"
			},
			"admin.email": {
				required: "请填写E-mail",
				email: "E-mail格式不正确"
			},
			"roleList.id": "请选择管理角色"
		},
		submitHandler: function(form) {
			$(form).find(":submit").attr("disabled", true);
			form.submit();
		}
	});
})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">
	<div class="bar">
		管理员修改
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" name=="validateForm" class="form" action="/admin/adminUpdate.htm" enctype="multipart/form-data" method="post">
		<input  name="admin.username"  value="${admin.username}" type="hidden">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					登陆账号: 
				</th>
				<td>
					${admin.username}
					<#--<input class="formText" id="username" name="admin.username" disabled value="${admin.username}" type="text">
					<label class="requireField">*</label>-->
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					密 码: 
				</th>
				<td>
					<input  class="formText" name="admin.password" id="password" type="password">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					重复密码:  
				</th>
				<td>
					<input  class="formText" name="rePassword" value="" type="password">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					E-mail: :  
				</th>
				<td>
					<input  class="formText" name="admin.email" value="${admin.email}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr class="roleList">
				<th style="width:150px;text-align:right;">
					管理角色: 
				</th>
				<td>
					
					<#list roleLists as re>
						<label>
							<input type="checkbox" name="roleIds" value="${re.id} />${re.name}
						</label>
					</#list>
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						设置: 
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList"<#if (admin.isAccountEnabled)!> checked</#if> value="1" />启用
						</label>
					</td>
			</tr>
			<#if isEditAction>
				<tr>
					<th>&nbsp;</th>
					<td>
						<span class="warnInfo"><span class="icon">&nbsp;</span>如果要修改密码,请填写密码,若留空,密码将保持不变!</span>
					</td>
				</tr>
			</#if>
			<input type="hidden" name="admin.id" value="${admin.id}"/>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton"  value="修改" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>