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

})

function uploadFileHideBack() {
	alert("上传成功！");
}
</script>
</head>
<body class="input">

	<div class="body">
		<form id="validateForm" class="form" action="/columnArticle/update.htm" enctype="multipart/form-data" method="post">
		<input type="hidden" id="id" name="columnArticle.id" value=${columnArticle.id} />
		<input type="hidden" id="columnId" name="columnArticle.columnId" value=${columnArticle.columnId} />
		<input type="hidden" id="columnCode" name="columnArticle.columnCode" value=${columnArticle.columnCode} />
		<input type="hidden" id="hotelCode" name="columnArticle.hotelCode" value=${columnArticle.hotelCode} />
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					栏目名称:
				</th>
				<td>
					${columnArticle.columnName}
				</td>
			</tr>
			<#if columnArticle.columnCode=="JDTK">
				<tr>
					<th style="width:150px;text-align:right;">
						酒店图片位置: 
					</th>
					<td>
					<select id="columnCode"  name="columnArticle.articleTitle"  value=""> 
					<option value="酒店外景" <#if columnArticle.articleTitle="酒店外景">selected</#if>>酒店外景</option>
					<option value="酒店大堂" <#if columnArticle.articleTitle="酒店大堂">selected</#if>>酒店大堂</option>
					<option value="酒店客房" <#if columnArticle.articleTitle="酒店客房">selected</#if>>酒店客房</option>
					<option value="餐厅及酒廊" <#if columnArticle.articleTitle="餐厅及酒廊">selected</#if>>餐厅及酒廊</option>
					<option value="会议与娱乐" <#if columnArticle.articleTitle="会议与娱乐">selected</#if>>会议与娱乐</option>
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
						图片3: 
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
					<input  class="formText" name="columnArticle.articleTitle" value="${columnArticle.articleTitle}" type="text">
				</td>
			</tr>
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
				<#if columnArticle.columnCode=="YHCX">
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
				<tr>
				<th style="width:150px;text-align:right;">
					文章概述: 
				</th>
				<td>
					<textarea  name="columnArticle.articleNoteShow" rows="2" cols="60">${columnArticle.articleNoteShow}</textarea >
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					
				</th>
				<td>
				
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					文章详述: 
				</th>
				<td>
					<textarea id="editor" name="columnArticle.articleNoteHide" class="editor">${columnArticle.articleNoteHide}</textarea >
				</td>
			</tr>
			<#--<tr>
				<th style="width:150px;text-align:right;">
					 文章附件: 
					</th>
					<td>
						<input type="file" id="ajaxFileWeb" name="ajaxFile"/>
						<input type="hidden" id="articleAttach" name="columnArticle.articleAttach"/>
						<input type="button" onclick="ajaxFileUploadWithRtn('ajaxFileWeb','${base}/file/ajaxUpload.htm','articleAttach',uploadFileHideBack);" id="btnUploadBig" value="上传"/>
						<input type="button" value="清空" onclick="clearFile('articleAttach')" />
					</td>
				</tr>
			<tr>-->
			</#if>
				<th style="width:150px;text-align:right;">
					语言: 
				</th>
				<td>
					<select id="language"  name="columnArticle.language"  > 
						<option value="1"<#if columnArticle.language==1>selected</#if>>中文</option>
						<option value="2" <#if columnArticle.language==2>selected</#if>>英文</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					状态:
				</th>
				<td>
					<#if columnArticle.status==1>
						<input id="status" type="radio" checked="checked" value="1" name="columnArticle.status" />可用<input id="status" type="radio" value="0" name="columnArticle.status"/>禁用
					<#else>
						<input id="status" type="radio"  value="1" name="columnArticle.status" />可用<input id="status" type="radio" checked="checked" value="0" name="columnArticle.status"/>禁用
					</#if>
				</td>
			</tr>
			<th style="width:150px;text-align:right;">
					排序: 
				</th>
				<td>
					<input  class="formText" name="columnArticle.sort" value="${columnArticle.sort}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
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