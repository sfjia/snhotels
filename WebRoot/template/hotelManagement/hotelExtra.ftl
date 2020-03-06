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

function toDelete(id){
	if(confirm("确定删除？")){
		window.location.href = '${base}/hotelExtra/deleteById.htm?hotelExtra.id='+id;
	}
}

function toSelectById(id){
	window.location.href = '${base}/hotelExtra/selectById.htm?hotelExtra.id='+id;
	
}

function toInsert(parent){
	
	if(parent != ''){
		window.location.href = '${base}/hotelExtra/toInsertExtra.htm?hotelExtra.parent='+parent;
	}else{
		
		window.location.href = '${base}/hotelExtra/toInsertExtra.htm';
	}
}


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
				<tr>
					<td>
						名称：<input type="button" value="增加" onclick="toInsert('');" />
					</td>
					<td>
						选项：
					</td>
				</tr>
				
				<#list hotelExtraList as list>
					<#if list.level==0>
						<tr>
							<td width="200">
								${list.name}
							</td>
							<td width="300">
							
								<table style="display: table;" class="inputTable tabContent">
									<#list hotelExtraList as i>
									<#if list.id==i.parent>
									
										<tr>
											<td width="100">${i.name}</td>
											<td>
												<a onclick="toDelete(${i.id});">[刪除]</a>
												<a onclick="toSelectById(${i.id});">[修改]</a>
												
											</td>
										</tr>
									</#if>
									</#list>
								</table>
							
							</td>
							<td>
								<a onclick="toDelete(${list.id});">[刪除]</a>
								<a onclick="toSelectById(${list.id});">[修改]</a>
								<a onclick="toInsert(${list.id})">[增加选项]</a>
							</td>
						</tr>
					</#if>
				
				</#list>
				
			</table>
		
			<!--<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		-->
		
		
	</div>

</body></html>