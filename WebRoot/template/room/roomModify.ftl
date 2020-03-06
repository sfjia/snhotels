<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>房间修改</title>
<link rel="icon" href="http://www.hua3d.com:8088/admin/favicon.ico" type="image/x-icon">
<link href="${base}/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="${base}/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${base}/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>

<script type="text/javascript">
	function myedit(text){
		if(typeof(KindEditor) != "undefined") {
			KindEditor.ready(function(K) {
				editor = K.create("#"+text, {
				 	width:"500px" ,
					height: "350px",
					items: ["source", "|", "undo", "redo", "|", "preview", "print", "template", "cut", "copy", "paste", "plainpaste", "wordpaste", "|","justifyleft", "justifycenter", "justifyright", "justifyfull", "insertorderedlist", "insertunorderedlist", "indent", "outdent", "subscript", "superscript", "clearhtml", "quickformat", "selectall", "|", "fullscreen", "/", "formatblock", "fontname", "fontsize", "|", "forecolor", "hilitecolor", "bold", "italic", "underline", "strikethrough", "lineheight", "removeformat", "|", "image", "flash", "media", "insertfile", "table", "hr", "emoticons", "map", "pagebreak", "link", "unlink"],
					syncType: "form",
					allowFileManager: true,
					uploadJson: "/file/ajaxUpload.htm",
					fileManagerJson:"/file/ajaxBrowser.htm",
					afterChange: function() {
						this.sync();
					}
				});
			});
		}
	}

$().ready(function() {

	myedit('editorWeb');
	myedit('editorPad');
	myedit('editorApp');
	myedit('editorWap');

	var $tab = $("#tab");
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});

})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">
	<div class="bar">
		房间信息修改
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/room/roomUpdate.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					酒店代码: 
				</th>
				<td>
				 	<select name="room.hotelCode" id="type"><option value="" >请选择</option>
						<option value="qianDaoHu" <#if room.hotelCode=="qianDaoHu"> selected </#if> >qianDaoHu</option>
						<option value="hangzhouXiHu" <#if room.hotelCode=="hangzhouXiHu"> selected </#if> >hangzhouXiHu</option>
						<option value="taiHu" <#if room.hotelCode=="taiHu"> selected </#if> >taiHu</option>
						<option value="changJiang" <#if room.hotelCode=="changJiang"> selected </#if> >changJiang</option>
						<option value="huangHe" <#if room.hotelCode=="huangHe"> selected </#if> >huangHe</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					房间代码: 
				</th>
				<td>
					<input  class="formText" name="room.roomCode" value="${room.roomCode}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					房间名: 
				</th>
				<td>
					<input  class="formText" name="room.roomName" value="${room.roomName}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					房间面积: 
				</th>
				<td>
					<input  class="formText" name="room.roomArea" value="${room.roomArea}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					免费上网: 
				</th>
				<td>
					<input type="checkbox" name="room.netStatus" value="1" <#if room.netStatus==1> checked </#if> >有免费上网
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					淋浴: 
				</th>
				<td>
					<input type="checkbox" name="room.showStatus" value="1" <#if room.showStatus==1> checked </#if> >有淋浴
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					浴缸: 
				</th>
				<td>
					<input type="checkbox" name="room.bathtubStatus" value="1" <#if room.bathtubStatus==1> checked </#if> >有浴缸
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="room.sort" value="${room.sort}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					图片链接: 
				</th>
				<td>
					<input  class="formText" name="room.linkUrl" value="${room.linkUrl}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					价格: 
				</th>
				<td>
					<input  class="formText" name="room.price" value="${room.price}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					发布: 
				</th>
				<td>
					<input type="checkbox" name="room.statusCodeWeb" value="1" <#if room.statusCodeWeb==1> checked </#if> >网站
					<input type="checkbox" name="room.statusCodePad" value="1" <#if room.statusCodePad==1> checked </#if>>PAD
					<input type="checkbox" name="room.statusCodeApp" value="1" <#if room.statusCodeApp==1> checked </#if> >APP
					<input type="checkbox" name="room.statusCodeWap" value="1" <#if room.statusCodeWap==1> checked </#if> >WAP
				</td>
			</tr>
		</table>
		</div>
			<input name="id" value="1" type="hidden">
			<ul id="tab" class="tab">
				<li>
					<input class="current" value="网站" hidefocus="" type="button">
				</li>
				<li>
					<input value="PAD" hidefocus="" type="button">
				</li>
				<li>
					<input value="APP" hidefocus="" type="button">
				</li>
				<li>
					<input value="WAp" hidefocus="" type="button">
				</li>
			</ul>
			<#-- 网站 -->
			<table style="display: table;" class="inputTable tabContent">
				<tbody><tr>
					<th>
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="roomImageWeb" name="room.roomImageWeb"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','roomImageWeb',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('roomImageWeb')" />
					</td>
				</tr>
				<tr>
					<th>
						简介: 
					</th>
					<td>
						<textarea  name="room.roomDigestdWeb" rows="3" cols="50">${room.roomDigestdWeb}</textarea >
						<label class="requireField">*</label>
					</td>
				</tr>
				<#--<tr>
					<th>
						活动详情: 
					</th>
					<td>
						<textarea id="editorWeb" name="promotion.promotionContentWeb" class="editor"></textarea >
						<label class="requireField">*</label>
					</td>
				</tr>-->
				
			</tbody></table>
			<#--PAD-->
			<table style="display: none;" class="inputTable tabContent">
				<tbody><tr>
					<th>
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFilePad" name="imgFile"/>
						<input type="hidden" id="roomImagePad" name="room.roomImagePad"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFilePad','${base}/file/ajaxUpload.htm','roomImagePad',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('roomImagePad')" />
					</td>
				</tr>
				<tr>
					<th>
						简介: 
					</th>
					<td>
						<textarea  name="room.roomDigestdPad" rows="3" cols="50">${room.roomDigestdPad}</textarea >
						<label class="requireField">*</label>
					</td>
				</tr>
			</tbody></table>
			<#--APP-->
			<table style="display: none;" class="inputTable tabContent">
				<tbody><tr>
					<th>
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFileApp" name="imgFile"/>
						<input type="hidden" id="roomImageApp" name="room.roomImageApp"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileApp','${base}/file/ajaxUpload.htm','roomImageApp',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('roomImageApp')" />
					</td>
				</tr>
				<tr>
					<th>
						简介: 
					</th>
					<td>
						<textarea  name="room.roomDigestdApp" rows="3" cols="50">${room.roomDigestdApp}</textarea >
						<label class="requireField">*</label>
					</td>
				</tr>
			</tbody></table>
			<#--WAP-->
			<table style="display: none;" class="inputTable tabContent">
				<tbody><tr>
					<th>
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFileWap" name="imgFile"/>
						<input type="hidden" id="roomImageWap" name="room.roomImageWap"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWap','${base}/file/ajaxUpload.htm','roomImageWap',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('roomImageWap')" />
					</td>
				</tr>
				<tr>
					<th>
						简介: 
					</th>
					<td>
						<textarea  name="room.roomDigestdWap" rows="3" cols="50">${room.roomDigestdWap}</textarea >
						<label class="requireField">*</label>
					</td>
				</tr>
				<input type="hidden" name="room.id" value="${room.id}"/>
			</tbody></table>
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>