<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>房间管理</title>
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
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript">  

$().ready(function() {
	var $validateForm = $("#validateForm");
	var $tab = $("#tab");
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});
	
	// 表单验证
		$validateForm.validate({
			rules: {
				"hotelRoom.roomCode":{
					required: true,
					<#--remote:{
						type:"POST",
					 	url:"${base}/room/updatecheckCode.htm?hotelRoom.id=${hotelRoom.id}&hotelRoom.hotelCode=${hotelRoom.hotelCode}"
					}-->
				},
				"hotelRoom.roomName":{
					required:true,
					remote:{
						type:"POST",
					 	url:"${base}/room/updatecheckName.htm?hotelRoom.id=${hotelRoom.id}&hotelRoom.hotelCode=${hotelRoom.hotelCode}"
					}
				},
				"hotelRoom.roomImage":{
					required:true
				},
				"hotelRoom.maxBook":{
					required:true
				},
				"hotelRoom.roomArea":{
					required:true
				},
				"hotelRoom.roomNote":{
					required:true
				},
				"hotelRoom.sort":{
					required:true
				},
			},
			messages: {
				"hotelRoom.roomCode":{
					required: "客房编号不能为空!",
					remote: "此编号不可用"
				},
				"hotelRoom.roomName":{
					required:"客房名称不能为空!",
					remote: "此名称不可用"
				},
				"hotelRoom.roomImage":{
					required:"客房图片1不能为空!"
				},
				
				"hotelRoom.maxBook":{
					required:"最大预订客房数不能为空!"
				},
				"hotelRoom.roomArea":{
					required:"客房面积不能为空!"
				},
				"hotelRoom.roomNote":{
					required:"客房描述不能为空!"
				},
				"hotelRoom.sort":{
					required:"排序号不能为空!"
				},
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});		
})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">
	<div class="body">
		<form id="validateForm" class="form" action="/room/update.htm"  method="post">
		<input type="hidden" id="hotelCode" name="hotelRoom.hotelCode" value=${hotelRoom.hotelCode} />
		<input type="hidden" id="id" name="hotelRoom.id" value=${hotelRoom.id} />
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		<tr><td colspan="2" ><h3>客房修改</h3></td></tr>
		<tr>
				<th >
					酒店名称: 
				</th>
				<td>
					${Hname}
				</td>
			</tr>
			<tr>
				<th >
					客房代码: 
				</th>
				<td>
				<select id="roomCode" name="hotelRoom.roomCode">
					<#list roomCodeList as hotelRoomCode >
						<#if hotelRoom.roomCode==hotelRoomCode.roomCode>
							<option value="${hotelRoomCode.roomCode}" selected>${hotelRoomCode.roomCode}</option>
						<#else>
							<option value="${hotelRoomCode.roomCode}">${hotelRoomCode.roomCode}</option>
						</#if>
					</#list>
				</select>
				
				</td>
			</tr>
			<tr>
				<th >
					客房名称: 
				</th>
				<td>
				<input  class="formText" name="hotelRoom.roomName" value="${hotelRoom.roomName}" type="text">
				<label id="vanclHotelCodeError"  for="hotelRoom.roomName"></label>
				</td>
			</tr>
			<tr>
				<th >
					客房名称(英): 
				</th>
				<td>
				<input  class="formText" name="hotelRoom.roomNameEn" value="${hotelRoom.roomNameEn}" type="text">
				<label id="vanclHotelCodeError"  for="hotelRoom.roomNameEn"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
						客房图片1: 
				</th>
				<td>
					<input type="file" id="ajaxFileWeb" name="imgFile"/>
					<input type="hidden" id="roomImage" name="hotelRoom.roomImage" value="${(hotelRoom.roomImage)!}" />
					<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','roomImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
					<input type="button" value="清空" onclick="clearFile('roomImage')" />
					<label id="vanclHotelCodeError"  for="hotelRoom.roomImage"></label>（图片宽高：590*290）
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
						客房图片2: 
				</th>
				<td>
					<input type="file" id="ajaxFileWeb2" name="imgFile"/>
					<input type="hidden" id="roomImage2" name="hotelRoom.roomImage2" value="${(hotelRoom.roomImage2)!}"/>
					<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb2','${base}/file/ajaxUpload.htm','roomImage2',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
					<input type="button" value="清空" onclick="clearFile('roomImage2')" />
					<label id="vanclHotelCodeError"  for="hotelRoom.roomImage2"></label>（图片宽高：590*290）
				</td>
			</tr>
			<tr>
			<th >
					客房可预订数: 
				</th>
				<td>
				<input  class="formText" name="hotelRoom.maxBook" value="${(hotelRoom.maxBook)!}" onkeyup="value=value.replace(/[^0-9]/g,'')"  type="text">
				<label id="vanclHotelCodeError"  for="hotelRoom.maxBook"></label>
				</td>
			</tr>
				<th >
					客房面积: 
				</th>
				<td>
				<input  class="formText" name="hotelRoom.roomArea" value="${hotelRoom.roomArea}" type="text">
				<label id="vanclHotelCodeError"  for="hotelRoom.roomArea"></label>
				</td>
			</tr>
			<th >
				床型: 
				</th>
				<td>
					<select id="columnCode"  name="hotelRoom.roomBedType"  value="">
					 <option value="${hotelRoom.roomBedType}">${hotelRoom.roomBedType}</option>
					<option value="1.8m*2m">1.8m*2m</option>
					<option value="1.8m*3m">1.8m*3m</option>
					<option value="1.2m*2m">1.2m*2m</option>
					<option value="2m*2m">2m*2m</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					早餐:
				</th>
				<td>
				<#if hotelRoom.roomBreakfast==2>
					<input id="roomBreakfast" type="radio" checked="checked" value="2" name="hotelRoom.roomBreakfast" />双早<input id="roomBreakfast" type="radio"  value="1" name="hotelRoom.roomBreakfast" />单早<input id="status" type="radio" value="0" name="hotelRoom.roomBreakfast"/>无
				<#elseif hotelRoom.roomBreakfast==1>
					<input id="roomBreakfast" type="radio" value="2" name="hotelRoom.roomBreakfast" />双早<input id="roomBreakfast" type="radio" checked="checked"  value="1" name="hotelRoom.roomBreakfast" />单早<input id="status" type="radio" value="0" name="hotelRoom.roomBreakfast"/>无
				<#else>
					<input id="roomBreakfast" type="radio"  value="2" name="hotelRoom.roomBreakfast" />双早<input id="roomBreakfast" type="radio"  value="1" name="hotelRoom.roomBreakfast" />单早<input id="status" type="radio"checked="checked"  value="0" name="hotelRoom.roomBreakfast"/>无
				</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					免费上网:
				</th>
				<td>
					<#if hotelRoom.roomFreeNet==1>
						<input id="roomFreeNet" type="radio" checked="checked" value="1" name="hotelRoom.roomFreeNet" />有<input id="status" type="radio" value="0" name="hotelRoom.roomFreeNet"/>无
					<#else>
						<input id="roomFreeNet" type="radio"  value="1" name="hotelRoom.roomFreeNet" />有<input id="status" type="radio" value="0"checked="checked" name="hotelRoom.roomFreeNet"/>无
					</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					独立淋浴:
				</th>
				<td>
					<#if hotelRoom.roomShower==1>
						<input id="roomShower" type="radio" checked="checked" value="1" name="hotelRoom.roomShower" />有<input id="status" type="radio" value="0" name="hotelRoom.roomShower"/>无
					<#else>
						<input id="roomShower" type="radio"  value="1" name="hotelRoom.roomShower" />有<input id="status" type="radio" checked="checked" value="0" name="hotelRoom.roomShower"/>无
					</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					浴缸:
				</th>
				<td>
					<#if hotelRoom.roomBathTup==1>
						<input id="roomBathTup" type="radio" checked="checked" value="1" name="hotelRoom.roomBathTup" />有<input id="status" type="radio" value="0" name="hotelRoom.roomBathTup"/>无
					<#else>
						<input id="roomBathTup" type="radio"  value="1" name="hotelRoom.roomBathTup" />有<input id="status" type="radio" checked="checked" value="0" name="hotelRoom.roomBathTup"/>无
					</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
					<#if hotelRoom.status==1> 
						<input id="status" type="radio" checked="checked" value="1" name="hotelRoom.status" />启用<input id="status" type="radio" value="0" name="hotelRoom.status"/>禁用
					<#else>
						<input id="status" type="radio"  value="1" name="hotelRoom.status" />启用<input id="status" type="radio" checked="checked" value="0" name="hotelRoom.status"/>禁用
					</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					描述: 
				</th>
				<td>
					<textarea id="editor" name="hotelRoom.roomNote" class="editor">${hotelRoom.roomNote}</textarea >
					<label id="vanclHotelCodeError"  for="hotelRoom.roomNote"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					描述(英文): 
				</th>
				<td>
					<textarea id="editor1" name="hotelRoom.roomNoteEn" class="editor">${hotelRoom.roomNoteEn}</textarea >
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelRoom.sort" value="${hotelRoom.sort}" type="text">
					<label id="vanclHotelCodeError"  for="hotelRoom.sort"></label>
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