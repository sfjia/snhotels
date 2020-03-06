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
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.1&services=true"></script>
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
			rules: {
				"hotel.address":{
					required:true
				},
				"hotel.telPhone":{
					required:true
				},
				"hotel.postCode":{
					required:true
				},
				"hotel.faxPhone":{
					required:true
				},
				"hotel.logoImage":{
					required:true
				},
				"hotel.miniImage":{
					required:true
				},
				"hotel.bigImage":{
					required:true
				},
				"hotel.notext":{
					required:true
				},
				"hotel.sort":{
					required:true
				},
				"hotel.jian":{
					required:true
				},
			},
			messages: {
				"hotel.address":{
					required:"酒店地址不能为空！"
				},
				"hotel.telPhone":{
					required:"酒店电话不能为空！"
				},
				"hotel.postCode":{
					required:"邮编不能为空！"
				},
				"hotel.faxPhone":{
					required:"传真不能为空！"
				},
				"hotel.logoImage":{
					required:"精选酒店图片不能为空！"
				},
				"hotel.miniImage":{
					required:"酒店列表图不能为空！"
				},
				"hotel.bigImage":{
					required:"酒店展示图不能为空!"
				},
				"hotel.notext":{
					required:"酒店概述不能为空！"
				},
				"hotel.sort":{
					required:"排序号不能为空"
				},
				"hotel.jian":{
					required:"首页酒店简介不能为空"
				},
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			  alert("信息填写不完整请检查！");
			},
		});

})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">
<!--right nav over!-->
	<div class="body">
		<form id="validateForm" class="form" action="/hotel/hotelInsert.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="hotelCode" name="hotel.code" value=${hotelAdditive.hotelCode} />
		<input type="hidden" id="starNb" name="hotel.starNb" value=${hotelAdditive.starNb} />
		<input type="hidden" id="name" name="hotel.name" value="${hotelAdditive.name}" />
		<input type="hidden" id="nameEn" name="hotel.nameEn" value="${hotelAdditive.nameEn}" />
		<#if hotel=null>
		<#else>
			<input type="hidden" id="hotel_mapLng" name="hotel.mapLong" value="${hotel.mapLong}" />
			<input type="hidden" id="hotel_mapLat" name="hotel.mapLat" value="${hotel.mapLat}" />
		    <input type="hidden" id="id" name="hotel.id" value="${hotel.id}" />
		</#if>
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					酒店所在地: 
				</th>
				<td>
				<select id="cityCode" class="ddlist" name="hotel.cityCode">
					<#if hotelCity >
					<option value="${hotelCity.code}" >${hotelCity.name}</option>
					</#if>
						<#list cityList as city>
							<option value="${city.code}" >${city.name}</option>
						</#list>
				</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店名称:
				</th>
				<td>
					${hotelAdditive.name}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店星级: 
				</th>
				<td>
					<#if hotelAdditive.starNb=1>
							一星级
					<#elseif hotelAdditive.starNb=2>
							二星级
					<#elseif hotelAdditive.starNb=3>
							三星级
					<#elseif hotelAdditive.starNb=4>
							四星级
					<#else>
							五星级
					</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店地址: 
				</th>
				<td>
					<input  class="formText" name="hotel.address" value="${(hotel.address)!}" type="text">
					<label id="vanclNameError"  for="hotel.address"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店地址(英文): 
				</th>
				<td>
					<input  class="formText" name="hotel.addressEn" value="${(hotel.addressEn)!}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					电话: 
				</th>
				<td>
					<input  class="formText" name="hotel.telPhone" value="${(hotel.telPhone)!}" type="text">
					<label id="vanclNameError"  for="hotel.telPhone"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					邮编: 
				</th>
				<td>
					<input  class="formText" name="hotel.postCode" value="${(hotel.postCode)!}" type="text">
					<label id="vanclNameError"  for="hotel.postCode"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					传真: 
				</th>
				<td>
					<input  class="formText" name="hotel.faxPhone" value="${(hotel.faxPhone)!}" type="text">
					<label id="vanclNameError"  for="hotel.faxPhone"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					邮件: 
				</th>
				<td>
					<input  class="formText" name="hotel.email" value="${(hotel.email)!}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					网址: 
				</th>
				<td>
					<input  class="formText" name="hotel.website" value="${(hotel.website)!}" type="text">
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						精选酒店列表图: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="logoImage" name="hotel.logoImage" value="${(hotel.logoImage)!}"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','logoImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('logoImage')" />（图片宽高：140*185）
						<label id="vanclNameError"  for="hotel.logoImage"></label>
					</td>
				</tr>
					<tr>
					<th style="width:150px;text-align:right;">
						列表缩略图: 
					</th>
					<td>
						<input type="file" id="ajaxMiniImage" name="imgFile"/>
						<input type="hidden" id="miniImage" name="hotel.miniImage" value="${(hotel.miniImage)!}"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxMiniImage','${base}/file/ajaxUpload.htm','miniImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('miniImage')" />（图片宽高：200*200）
						<label id="vanclNameError"  for="hotel.miniImage"></label>
					</td>
				</tr>
					<tr>
					<th style="width:150px;text-align:right;">
						酒店展示图: 
					</th>
					<td>
						<input type="file" id="ajaxBigImage" name="imgFile"/>
						<input type="hidden" id="bigImage" name="hotel.bigImage" value="${(hotel.bigImage)!}"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxBigImage','${base}/file/ajaxUpload.htm','bigImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('bigImage')" />（图片宽高：770*300）
						<label id="vanclNameError"  for="hotel.bigImage"></label>
					</td>
				</tr>
				<tr>
				<th style="width:150px;text-align:right;">
					首页酒店简介: 
				</th>
				<td>
					<textarea name="hotel.jian" rows="3" cols="60" >${(hotel.jian)!}</textarea >
					<label id="vanclNameError"  for="hotel.jian"></label>
				</td>
			</tr>
			<th style="text-align:right;">
					
			</th>
			<td>
			</td>
			<tr>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					首页酒店简介(英文): 
				</th>
				<td>
					<textarea  name="hotel.jianEn" rows="3" cols="60">  ${(hotel.jianEn)!}</textarea >
				</td>
			</tr>
				<tr>
				<th style="width:150px;text-align:right;">
					酒店概述: 
				</th>
				<td>
					<textarea id="editor" name="hotel.notext" class="editor">${(hotel.notext)!}</textarea >
					<label id="vanclNameError"  for="hotel.notext"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					酒店概述(英文): 
				</th>
				<td>
					<textarea id="editor1" name="hotel.noteEn" class="editor">${(hotel.noteEn)!}</textarea >
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					地图设置: 
				</th>
				<td>
					<table class="Tal_details" border="0" cellspacing="0" cellpadding="0">
				  <tr><td colspan="2" style="padding:0;"></td></tr>
			      <tr>
			        <td width="16%" class="text_right tdbg" colspan="2"><div style="width:500px;height:300px;border:1px solid gray" id="container"></div></td>
			      </tr>                                       
			</table>
				</td>
			</tr>
			<#--
			<tr>
				<th style="width:150px;text-align:right;">
					CRS说明: 
				</th>
				<td>
					<textarea id="editorWeb" name="hotel.note" class="editor"></textarea >
				</td>
			</tr>
			-->
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
				<#if hotel !=null>
					 <#if hotel.status==0>
						<input id="status" type="radio"  value="1" name="hotel.status" />运营中<input id="status" type="radio" value="0"checked="checked" name="hotel.status"/>筹建
					<#else>
						<input id="status" type="radio" checked="checked" value="1" name="hotel.status" />运营中<input id="status" type="radio" value="0" name="hotel.status"/>筹建
					</#if>
				<#else>
					<input id="status" type="radio" checked="checked" value="1" name="hotel.status" />运营中<input id="status" type="radio" value="0" name="hotel.status"/>筹建
				</#if>
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotel.sort" value="${(hotel.sort)!}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label id="vanclNameError"  for="hotel.sort"></label>
				</td>
			</tr>
			</table>
		</div>
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body>
<script type="text/javascript">
		var mapLng = $("#hotel_mapLng").val();
		if (mapLng == '') mapLng = '121.43048';
		var mapLat = $("#hotel_mapLat").val();
		if (mapLat == '') mapLat = '28.656322';
		
		var map = new BMap.Map("container");
		
		map.enableScrollWheelZoom();                  // 启用滚轮放大缩小。  
		map.enableKeyboard();                         // 启用键盘操作。  
		//var opts = {anchor: BMAP_ANCHOR_TOP_RIGHT, offset: new BMap.Size(10, 10)};  
		map.addControl(new BMap.NavigationControl());           //添加鱼骨控件  
		map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件  
		map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件  
		
		var point = new BMap.Point(mapLng, mapLat);
		map.centerAndZoom(point, 15);
		var marker = new BMap.Marker(point);
		map.addOverlay(marker);
		marker.enableDragging(true); // 设置标注可拖拽
		
		marker.addEventListener('dragend', function(e){  
			//alert(e.point.lng +', '+e.point.lat);  
			$("#hotel_mapLng").val(e.point.lng);
			$("#hotel_mapLat").val(e.point.lat);
		});

</script>
</html>