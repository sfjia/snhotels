<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>入住要求</title>
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
		入住要求
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
	<table style="display: table;" class="inputTable tabContent">
		
		<#if hotelExtra.name != ''>
			<tr><td colspan="2" ><h3>修改选项</h3></td></tr>
			<form action="${base}/hotelExtra/updateById.htm" id="validateForm" class="form" method="post" >
		<#elseif hotelExtra.level == 0>
			<tr><td colspan="2" ><h3>增加名称</h3></td></tr>
			<form action="${base}/hotelExtra/insertExtra.htm" id="validateForm" class="form" method="post" >
		<#else>
			<tr><td colspan="2" ><h3>增加选项</h3></td></tr>
			<form action="${base}/hotelExtra/insertExtra.htm" id="validateForm" class="form" method="post" >
		</#if>
	
		
			<input name="hotelExtra.id" value="${hotelExtra.id}" type="hidden">
			<input name="hotelExtra.parent" value="${hotelExtra.parent}" type="hidden">
			<input name="hotelExtra.level" value="${hotelExtra.level}" type="hidden">
			<tr>
				<th>
					选项名：
				</th>
				<td>
					<input type="text" class="formText" name="hotelExtra.name" value="${hotelExtra.name}" /></td>
				</td>
			</tr>
			<#if hotelExtra.parent == 0>
				<tr>
					<th>
						说明：
					</th>
					<td>
						<textarea rows="5" cols="50" class="formTextarea" name="hotelExtra.remark">${hotelExtra.remark}</textarea>
					</td>
				</tr>
			</#if>
			<tr><td colspan="2">
				<div class="buttonArea">
					<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
					<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
				</div>
			</td></tr>
		</form>
	</table>
	</div>

</body></html>