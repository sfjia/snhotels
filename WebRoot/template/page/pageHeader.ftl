<#assign sec=JspTaglibs["/WEB-INF/tld/security.tld"] />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>管理中心 </title>
	<link rel="icon" href="${base}/favicon.ico" type="image/x-icon">
	<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
	<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
	<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
	<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">
	$().ready(function() {
	
		var $menuItem = $("#menu .menuItem");
		var $previousMenuItem;
		
		$menuItem.click( function() {
			var $this = $(this);
			if ($previousMenuItem != null) {
				$previousMenuItem.removeClass("current");
			}
			$previousMenuItem = $this;
			$this.addClass("current");
		})
	
	})
</script>
</head>
<body class="header">
	<div class="body">
		<div class="bodyLeft">
			<div class="logo"></div>
		</div>
		<div class="bodyRight">
			<div class="link">
				<span class="welcome">
					<strong>
					[<@sec.authentication property="name"/>]
					 </strong> &nbsp;您好!&nbsp;
				</span>
				<a href="${base}/hotelAdmin/pageIndex.htm" target="mainFrame">后台首页</a>
			</div>
			<div id="menu" class="menu">
				<ul>
						<li class="menuItem">
							<a href="${base}/hotelExtra/hotelExtraLeft.htm" target="menuFrame" hidefocus="">酒店管理</a>
						</li>
						<li class="menuItem">
							<a href="${base}/promotionl/leftMenu.htm" target="menuFrame" hidefocus="">优惠精选</a>
						</li>
						<li class="menuItem">
							<a href="${base}/travel/leftMenu.htm" target="menuFrame" hidefocus="">旅游渡假</a>
						</li>
						<li class="menuItem">
							<a href="${base}/houtaiUser/leftMenu.htm" target="menuFrame" hidefocus="">会员管理</a>
						</li>
						<li class="menuItem">
							<a href="${base}/order/leftMenu.htm" target="menuFrame" hidefocus="">订单管理</a>
						</li>
						<#--<li class="menuItem">
							<a href="${base}/hotelExtra/hotelExtraLeft.htm" target="menuFrame" hidefocus="">套餐管理</a>
						</li>-->
						
						<li class="menuItem">
							<a href="${base}/hotelChannel/leftMenu.htm" target="menuFrame" hidefocus="">内容管理</a>
						</li>
						<#--<li class="menuItem">
							<a href="${base}/room/leftMenu.htm" target="menuFrame" hidefocus="">客房设置</a>
						</li>-->
						<li class="menuItem">
							<a href="${base}/admin/leftMenu.htm" target="menuFrame" hidefocus="">管理员</a>
						</li>
					<li class="home">
						<a href="http://www.hua3d.com/index.htm" target="_blank" hidefocus="">官网首页</a>
					</li>
	            </ul>
	            <div class="info">
					<a class="profile" href="#" target="mainFrame">个人资料</a>
					<a class="logout" href="${base}/admin/logout.htm" target="_top">退出</a>
				</div>
			</div>
		</div>
	</div>

</body></html>