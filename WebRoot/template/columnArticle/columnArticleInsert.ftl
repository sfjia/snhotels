<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>栏目内容添加</title>
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
				"columnArticle.articleImage":{
					required:true
				},
				"columnArticle.articleTitle":{
					required:true
				},
				"columnArticle.sort":{
					required:true
				},
			},
			messages: {
				"columnArticle.articleImage":{
					required:"图片不能为空!"
				},
				"columnArticle.articleTitle":{
					required:"标题不能为空!"
				},
				"columnArticle.sort":{
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
		<form id="validateForm" class="form" action="/columnArticle/articleInsert.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="columnId" name="columnArticle.columnId" value=${columnArticle.columnId} />
		<input type="hidden" id="columnCode" name="columnArticle.columnCode" value=${hotelColumn.columnCode} />
		<input type="hidden" id="hotelCode" name="columnArticle.hotelCode" value=${hotelColumn.hotelCode} />
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					栏目名称:
				</th>
				<td>
					${hotelColumn.columnName}
				</td>
			</tr>
			<#if hotelColumn.columnCode=="JDTK">
				<tr>
					<th style="width:150px;text-align:right;">
						酒店图片位置: 
					</th>
					<td>
					<select id="columnCode"  name="columnArticle.articleTitle"  value=""> 
					<option value="酒店外景">酒店外景</option>
					<option value="酒店大堂">酒店大堂</option>
					<option value="酒店客房">酒店客房</option>
					<option value="餐厅及酒廊">餐厅及酒廊</option>
					<option value="会议与娱乐">会议与娱乐</option>
					<option value="康乐">康乐</option>
				</select> 
					</td>
				</tr>
				<tr>
					<th style="width:150px;text-align:right;">
						图片1: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="articleImage" name="columnArticle.articleImage"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','articleImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage')" />（680*380）
					</td>
				</tr>
				<tr>
					<th style="width:150px;text-align:right;">
						图片2: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb1" name="imgFile"/>
						<input type="hidden" id="articleImage1" name="columnArticle.articleImage1"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb1','${base}/file/ajaxUpload.htm','articleImage1',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage1')" />（680*380）
					</td>
				</tr>
				<tr>
					<th style="width:150px;text-align:right;">
						图片3: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb2" name="imgFile"/>
						<input type="hidden" id="articleImage2" name="columnArticle.articleImage2"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb2','${base}/file/ajaxUpload.htm','articleImage2',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage2')" />（680*380）
					</td>
				</tr>
				<tr>
					<th style="width:150px;text-align:right;">
						图片4: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb3" name="imgFile"/>
						<input type="hidden" id="articleImage3" name="columnArticle.articleImage3"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb3','${base}/file/ajaxUpload.htm','articleImage3',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage2')" />（680*380）
					</td>
				</tr>
				<tr>
					<th style="width:150px;text-align:right;">
						图片5: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb4" name="imgFile"/>
						<input type="hidden" id="articleImage4" name="columnArticle.articleImage4"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb4','${base}/file/ajaxUpload.htm','articleImage4',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage2')" />（680*380）
					</td>
				</tr>
				
			<#else>
			<tr>
				<th style="width:150px;text-align:right;">
					文章标题: 
				</th>
				<td>
					<input  class="formText" name="columnArticle.articleTitle" value="" type="text">
				</td>
			</tr>
			<#if hotelColumn.columnCode!="KHFW">
			<tr>
					<th style="width:150px;text-align:right;">
						文章图片: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="articleImage" name="columnArticle.articleImage"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','articleImage',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage')" />（200*125）
					</td>
				</tr>
			</#if>
				<tr>
				<#if hotelColumn.columnCode=="YHCX">
					<th style="width:150px;text-align:right;">
						子酒店首页优惠缩略图: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb1" name="imgFile"/>
						<input type="hidden" id="articleImage1" name="columnArticle.articleImage1"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb1','${base}/file/ajaxUpload.htm','articleImage1',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleImage1')" />（100*100）
					</td>
				</tr>
				</#if>
			<#if hotelColumn.columnCode!="KHFW">
				<tr>
				<th style="width:150px;text-align:right;">
					文章概述: 
				</th>
				<td>
					<textarea  name="columnArticle.articleNoteShow" rows="2" cols="60"></textarea >
				</td>
				</tr>
			</#if>>
			<tr>
				<th style="width:150px;text-align:right;">
					文章详述: 
				</th>
				<td>
					<textarea id="editor" name="columnArticle.articleNoteHide" class="editor"></textarea >
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					 文章附件: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="imgFile"/>
						<input type="hidden" id="articleAttach" name="columnArticle.articleAttach"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','articleAttach',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleAttach')" />
					</td>
				</tr>
			<tr>
			</#if>
				<th style="width:150px;text-align:right;">
					语言: 
				</th>
				<td>
					<select id="language"  name="columnArticle.language"  > 
						<option value="1">中文</option>
						<option value="2">英文</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
					<input id="status" type="radio" checked="checked" value="1" name="columnArticle.status" />可用<input id="status" type="radio" value="2" name="columnArticle.status"/>禁用
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="columnArticle.sort" value="1000" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
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

</body></html>