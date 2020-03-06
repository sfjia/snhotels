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
function allChoose(){
	var all=document.getElementById("allCheck").checked;
	var items=document.getElementsByName("role.authorityList");
	for(var i=0;i<items.length;i++){
		items[i].checked=all;
	}
}
</script>
</head>
<body class="input role">
	<div class="bar">
		添加角色
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" name=="validateForm" class="form" action="/role/roleInsert.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					角色名称: 
				</th>
				<td>
					<input class="formText" id="name" name="role.name" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					描述: 
				</th>
				<td>
					<textarea name="role.description" class="formTextarea"></textarea>
				</td>
			</tr>
			<tr>
				<th>
					
				</th>
				<td colspan="1">
					全选/取消<input id="allCheck" type="checkbox" class="allRoleCheck"   onclick="allChoose()"/>
				</td>
			</tr>
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">酒店管理: </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_HOTELADDITIVE_ZJD"/>子酒店添加
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_HOTELINFO_ZJD" />酒店信息管理
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_REVIEW_ZJD" />酒店点评管理
						</label>
						
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ROOMARTICLE_ZJD"/>入住要求
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ROOMCODE_ZJD"/>客房代码管理
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">优惠精选: </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_PROMOTION_YHJX" />优惠精选管理
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_COUPON_YHJX" />优惠卷管理
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">旅游渡假 : </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_TRAVEL_LYDJ" />旅游渡假管理
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">会员管理 : </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_HOTTAIUSER_HY" />会员列表
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_SEARCHUSER_HY" />生日筛选
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">订单管理 : </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ORDER_DD" />订单列表
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">内容管理 : </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_YUECHANNEL_NR" />悦廷会
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ABOUTCHANNEL_NR" />关于远洲
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_HOTELCLASSIFY_NR" />广告列表
						</label>
					</td>
				</tr>
				
				<tr class="role.authorityList">
					<th style="width:150px;text-align:right;">
						<a href="#" class="allChecked" title="点击全选此类权限">管理员  : </a>
					</th>
					<td>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ADMIN_GLY" />管理员管理
						</label>
						<label>
							<input type="checkbox" name="role.authorityList" class="roleAuthorityList" value="ROLE_ROLE_GLY" />角色管理
						</label>
					</td>
				</tr>
				
				<!--基础权限-->
				<input type="hidden" name="role.authorityList" value="ROLE_BASE" />
				
			</table>
			<div class="buttonArea">
				<input type="submit" class="formButton" value="确  定" hidefocus />&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus />
			</div>
		</form>
	</div>
</body>
</html>