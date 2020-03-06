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
	
	var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelChannel.nameCn":{
					required:true
				},
			},
			messages: {
				"hotelChannel.nameCn":{
					required:"栏目不能为空!"
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
	<div class="bar">
		栏目修改
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/hotelChannel/yueUpdate.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<#--<tr>
				<th style="width:150px;text-align:right;">
					酒店编码: 
				</th>
				<td>
				 	<select name="hotelChannel.hotelCode" id="type"><option value="" >请选择</option>
						<option value="qianDaoHu" <#if hotelChannel.hotelCode=="qianDaoHu"> selected </#if> >qianDaoHu</option>
						<option value="hangzhouXiHu" <#if hotelChannel.hotelCode=="hangzhouXiHu"> selected </#if> >hangzhouXiHu</option>
						<option value="changJiang" <#if hotelChannel.hotelCode=="changJiang"> selected </#if> >changJiang</option>
						<option value="huangHe" <#if hotelChannel.hotelCode=="huangHe"> selected </#if> >huangHe</option>
					</select>
				</td>
			</tr>-->
			
			<#--<tr>
				<th style="width:150px;text-align:right;">
					栏目编码: 
				</th>
				<td>
					${hotelChannel.code}
					<input  class="formText" name="hotelChannel.code" value="${hotelChannel.code}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>-->
			<tr>
				<th style="width:150px;text-align:right;">
					展示方式: 
				</th>
				<td>
				 	<select name="hotelChannel.tyep" id="type"><option value="" selected="selected">请选择</option>
						<option value="1" <#if hotelChannel.tyep=="1"> selected </#if>>内容页</option>
						<option value="2" <#if hotelChannel.tyep=="2"> selected </#if>>子栏目</option>
						<option value="3" <#if hotelChannel.tyep=="3"> selected </#if>>列表页</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					栏目中文名称: 
				</th>
				<td>
					<input  class="formText" name="hotelChannel.nameCn" value="${hotelChannel.nameCn}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					栏目英文名称: 
				</th>
				<td>
					<input  class="formText" name="hotelChannel.nameEn" value="${hotelChannel.nameEn}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文备注: 
				</th>
				<td>
					<textarea  name="hotelChannel.remarkCn" rows="3" cols="50">${hotelChannel.remarkCn}</textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文备注: 
				</th>
				<td>
					<textarea  name="hotelChannel.remarkEn" rows="3" cols="50">${hotelChannel.remarkEn}</textarea >
					<label class="requireField"></label>
				</td>
				</tr>
			<tr>
			<tr>
				<th style="width:150px;text-align:right;">
					图片: 
				</th>
				<td>
					<input type="file" id="ajaxFile" name="imgFile"/>
					<input type="hidden" id="image" name="hotelChannel.image"/>
					<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFile','${base}/file/ajaxUpload.htm','image',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
					<input type="button" value="清空" onclick="clearFile('image')" />
				</td>
				</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="hotelChannel.sort" value="${hotelChannel.sort}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField">正整数(默认1000)</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					是否发布: 
				</th>
				<td>
					<input type="checkbox" name="hotelChannel.showFlg" value="1" <#if hotelChannel.showFlg==1> checked </#if> >发布
				</td>
			</tr>
			<input type="hidden" name="hotelChannel.id" value="${hotelChannel.id}"/>
			
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton" value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>