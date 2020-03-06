<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>管理菜单</title>
	<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
	<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
	<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript">
$().ready(function() {
	var $menuItem = $(".menu a");
	var $menudd = $(".menu dd");
	$menuItem.click(function() {
		var $this = $(this);
		$menudd.removeClass("current");
		$this.parent().addClass("current");
	});
})
</script>
</head>
<body class="menu">
	<div class="body">
			<dl>
				<dt>
					<span>房间管理</span>
				</dt>
				<dd>
					<a href="${base}/room/roomList.htm " target="mainFrame">房间列表</a>
				</dd>
			</dl>
			<!--
			<dl>
				<dt>
					<span>支付管理</span>
				</dt>
					<dd>
						<a href="http://www.hua3d.com:8088/admin/recharge_config%21list.action" target="mainFrame">支付方式</a>
					</dd>
				
					<dd>
						<a href="http://www.hua3d.com:8088/admin/off_line_account%21list.action" target="mainFrame">线下充值账号</a>
					</dd>
			</dl>
		
		
			<dl>
				<dt>
					<span>网站参数管理</span>
				</dt>
					<dd>
						<a href="http://www.hua3d.com:8088/admin/listing%21list.action" target="mainFrame">网站参数管理</a>
					</dd>
			</dl>
		-->
		
		
	</div>

</body></html>