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
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/base.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/admin.js"></script>
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
	var $tab = $("#tab");
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});
	
	var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelArticle.titleCn":{
					required:true
				},
				"hotelArticle.contentCn":{
					required:true
				},
			},
			messages: {
				"hotelArticle.titleCn":{
					required:"栏目名不能为空!"
				},
				"hotelArticle.contentCn":{
					required:"内容不能为空!"
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
		文章添加
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" name=="validateForm" class="form" action="/hotelArticle/hotelArticleInsert.htm" enctype="multipart/form-data" method="post">
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					中文标题: 
				</th>
				<td>
					<input class="formText" id="titleCn" name="hotelArticle.titleCn" value="" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文标题: 
				</th>
				<td>
					<input  class="formText" name="hotelArticle.titleEn" value="" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文摘要: 
				</th>
				<td>
						<textarea  name="hotelArticle.summaryCn" rows="3" cols="50"></textarea >
						<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文摘要: 
				</th>
				<td>
						<textarea  name="hotelArticle.summaryEn" rows="3" cols="50"></textarea >
						<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					中文内容: 
				</th>
				<td>
					<textarea id="editor" name="hotelArticle.contentCn" class="editor"></textarea >
					<label class="requireField">*</label>
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					英文内容: 
				</th>
				<td>
					<textarea id="editor1" name="hotelArticle.contentEn" class="editor"></textarea >
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
					<th style="width:150px;text-align:right;">
						图片: 
					</th>
					<td>
						<input type="file" id="ajaxFile" name="imgFile"/><label class="requireField">200×125</label>
						<input type="hidden" id="hotelArticleImage" name="hotelArticle.image"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFile','${base}/file/ajaxUpload.htm','hotelArticleImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('hotelArticleImage')" />
					</td>
			</tr>
			<#--<tr>
				<th style="width:150px;text-align:right;">
					中文关键字: 
				</th>
				<td>
					<input  class="formText" name="hotelArticle.keywordCn" value="" type="text">
					<label class="requireField">多个用逗号隔开</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					英文关键字: 
				</th>
				<td>
					<input  class="formText" name="hotelArticle.keywordEn" value="" type="text">
					<label class="requireField">多个用逗号隔开</label>
				</td>
			</tr>-->
			<tr>
				<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" id="sort" name="hotelArticle.sort" value="" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField">正整数(默认1000)</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					是否发布: 
				</th>
				<td>
					<input type="checkbox" name="hotelArticle.showFlg" value="1" >发布
				</td>
			</tr>
			<input type="hidden" name="hotelArticle.channelId" value="${hotelArticle.channelId}"/>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton"  value="确  定" hidefocus="" type="submit">&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>