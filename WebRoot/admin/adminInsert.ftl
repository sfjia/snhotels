<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>系统设置</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
	<script src="${base}/statics/js/jquery.min.js"></script>

<script type="text/javascript" src="${base}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.card.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.validate.methods.js"></script>

<script type="text/javascript">
$().ready(function() {
	var $username = $("#username");
	var $validateForm = $("#validateForm");
		
		 // 表单验证
			$validateForm.validate({
				rules: {
					"admin.username":{
						required: true,
						username: true,
						minlength: 4,
						maxlength: 16,
						remote:{
							type:"POST",
							url: "${base}/checkUsername.htm"
						}
					}
				},
				messages: {
					"admin.username": {
						required: "请填写用户名",
						username: "用户名只允许包含中文、英文、数字和下划线",
						minlength: "用户名必须大于等于4",
						maxlength: "用户名必须小于等于16",
						remote: "用户名已存在"
					}
				},
				errorPlacement: function(error, element) {
				  error.appendTo(element.parent());
				},
				submitHandler: function(form) {
					form.submit();
				}
			});

});

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
		<form id="validateForm" name=="validateForm" class="form" action="/admin/adminInsert.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					登陆账号: 
				</th>
				<td>
					
				<input class="formText" id="username" name="admin.username"  value="" type="text">
					<label class="requireField">*</label>
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
					<input  class="formText" id="rePassword" name="" value="" type="password">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					E-mail: :  
				</th>
				<td>
					<input  class="formText" name="admin.email" value="" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr class="roleList">
				<th style="width:150px;text-align:right;">
					管理角色: 
				</th>
				<td>
					<#assign roleSet = (admin.roleList)! />
					<#list allRoleList as role>
						<label>
							<input type="checkbox" name="roleIds" value="${role.id}" />${role.name}
						</label>
					</#list>
					&nbsp;&nbsp;<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						设置: 
					</th>
					<td>
						<label>
							<input type="checkbox" name="isAccountEnabled" class="roleAuthorityList" value="1" />启用
						</label>
					</td>
			</tr>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton"  value="确定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>