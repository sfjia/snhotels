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
					<span>酒店管理</span>
				</dt>
				<dd>
					<a href="${base}/hotelManage/hotelAdditiveList.htm" target="mainFrame">子酒店添加</a>
				</dd>
				<dd>
					<a href="${base}/hotel/hotelList.htm" target="mainFrame">酒店信息管理</a>
				</dd>
				<dd>
					<a href="${base}/hotel/reviewList.htm" target="mainFrame">酒店点评管理</a>
				</dd>
				<dd>
					<a href="${base}/roomColumn/roomArticleList.htm" target="mainFrame">入住要求</a>
				</dd>
				<dd>
					<a href="${base}/room/roomCodeList.htm" target="mainFrame">客房代码管理</a>
				</dd>
			</dl>
		
			
		
		
	</div>

</body></html>