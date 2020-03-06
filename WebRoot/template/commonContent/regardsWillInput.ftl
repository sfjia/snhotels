<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>商祺会简介</title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$().ready(function() {


	
	// Tab效果
	//$tab.tabs(".tabContent", {
	//	tabs: "input"
	//});
	
})
</script>
</head>
<body class="input">
	<div class="bar">
		${commonContent.name}
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="${base}/commonContent/${commonContent.code}Save.htm"  method="post">
			<input name="commonContent.id" value="${commonContent.id}" type="hidden">
			
			<table style="display: table;" class="inputTable tabContent">
				<tr>
					<th>
						${commonContent.name}（网站）: 
					</th>
					<td>
						<textarea name="commonContent.contentWeb" class="formTextarea">${commonContent.contentWeb}</textarea>
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						${commonContent.name}（PAD）: 
					</th>
					<td>
						<textarea name="commonContent.contentPad" class="formTextarea">${commonContent.contentPad}</textarea>
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						${commonContent.name}（手机APP）: 
					</th>
					<td>
						<textarea name="commonContent.contentApp" class="formTextarea">${commonContent.contentApp}</textarea>
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						${commonContent.name}（手机网页）: 
					</th>
					<td>
						<textarea name="commonContent.contentWap" class="formTextarea">${commonContent.contentWap}</textarea>
						<label class="requireField">*</label>
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