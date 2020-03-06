<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>提示信息 </title>
<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$().ready( function() {
	
	function redirectUrl() {
			window.location.href = "${redirectUrl}"
	}
	
$.dialog({type: "success", title: "操作提示", content: " 您的操作已成功! ", ok: "确定", okCallback: redirectUrl, cancelCallback: redirectUrl, width: 380, modal: true});
});
</script>
</head>
<body class="success">

<div style="display: block;" id="dialogOverlaydialog0" class="dialogOverlay"></div>
<div style="width: 380px; height: auto; margin-left: -190px; z-index: 100; display: block;" id="dialog0" class="baseDialog">
	<div class="dialogWrap"></div>
	<div class="dialogMain">
		<div id="dialogTitledialog0" class="dialogTitle">操作提示</div>
		<div id="dialogClosedialog0" class="dialogClose"></div>
		<div id="dialogContentdialog0" class="dialogContent dialogsuccessIcon">您的操作已成功! </div>
		<div id="dialogButtonAreadialog0" class="dialogButtonArea">
			<input id="dialogOkdialog0" class="formButton" value="确定" hidefocus="true" type="button">
		</div>
	</div>
</div>
			
</body>
</html>