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
<script type="text/javascript" src="${base}/tempstatic/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${base}/tempstatic/js/ajaxImageUpload.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.card.js"></script>


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
					uploadJson: "${base}/file/ajaxUpload.htm",
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
	myedit('editorWeb1');
	myedit('editorWeb2');
	myedit('editorWeb3');
	var $tab = $("#tab");
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});

})

function uploadFileHideBack() {
	alert("上传成功！");
}
$().ready( function() {
	var $areaSelect = $("#areaSelect");
	
	// 地区选择菜单
	$areaSelect.lSelect({
			url: "${base}/area/ajaxArea.htm"// AJAX数据获取url
	});
			var $code_c = $(".code_c");
		var $code_img = $("#code_img");
		var $mycode=$("#mycode");
	
		$code_c.click(function() {
			$code_img.attr("src", "${base}/rand.htm?timestamp" + (new Date()).valueOf());
		});
		
		function randimg(){
			$code_img.attr("src", "${base}/rand.htm?timestamp" + (new Date()).valueOf());
		}
	
});
function regFormSub(){
	$("#validateForm").submit();
}
	function checkCardNo(){
		var cardno = $("#cardno").val();
		if(cardno.length != 0){
			var idno = $("#idno").val();
			if(idno.length == 0){
				alert("请输入身份证号码!");
			}else{
				   $.ajax({ 
			       type: "post", 
			       url: "${base}/checkUserInfo.htm", 
				   data: {"hotelUser2.idno":idno, "hotelUser2.cardno":cardno}, 
				   dataType:'json', 
			       success: function (data) { 
			       		if(data){
			       			$("#cardmsg").html("");
			       			$("#regButton").removeAttr("disabled");
			       		}else{
			       			$("#cardmsg").html("该会员卡不存在或与身份证不匹配");
			       			$("#regButton").attr("disabled","true");
			       		}
			       }, 
			       error: function (XMLHttpRequest, textStatus, errorThrown) { 
			       	alert(errorThrown); 
			       } 
			       });
			}
		}
	}
function cBirthday(){
	var idno = $("#idno").val();
	$("#birthday").val("");
	if(idno.length != 0){
		y = idno.substring(6,10);
		m = idno.substring(10,12);
		d = idno.substring(12,14);
		$("#birthday").val(y+"-"+m+"-"+d);
		$("#birthdays").val(y+"-"+m+"-"+d);	
	}
}
	$().ready(function() {
		var $regForm = $("#validateForm");
		var $idno = $("#idno");
		var $phone = $("#phone");
		var $email = $("#email");
		
		 // 表单验证
			$regForm.validate({
			
				rules: {
					"hotelUser.phone": {
						required: true,
						phone:true,
						remote:{
							type:"POST",
							url: "${base}/adminCheckUserInfo.htm"
						}
					},
					"hotelUser.email": {
						required: true,
						email2:true,
						remote:{
							type:"POST",
							url: "${base}/adminCheckUserInfo.htm"
						}
					},
					"hotelUser.idno": {
						required:true,
						isIdCardNo:true,
						minlength:15,
						maxlength:18,
						remote:{
							type:"POST",
							url: "${base}/adminCheckUserInfo.htm"
						}
					},
				},
				messages: {
					"hotelUser.idno": {
						required: "请填写身份证号码",
						isIdCardNo:"身份证格式不正确",
						minlength:"身份证号最小为15位",
						maxlength: "身份证号最大为18位",
						remote:"该身份号已经注册"
					},
					"hotelUser.phone": {
						required: "请填写手机号码",
						phone:"手机号码格式不正确",
						remote:"该手机号已经注册"
					},					
					"hotelUser.email": {
						required: "请填写Email",
						email2: "Email格式不正确",
						remote: "Email已存在"
					},
				},
				errorPlacement: function(error, element) {
				  error.appendTo(element.parent());
				},
				submitHandler: function(form) {
					form.submit();
				}
			});
			
	});
function check(str){ 
	var temp="" 
	for(var i=0;i<str.length;i++) 
	     if(str.charCodeAt(i)>0&&str.charCodeAt(i)<255) 
	        temp+=str.charAt(i) 
	return temp 
} 

</script>
</head>
<body class="input">
	<div class="bar">
		会员资料管理
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="${base}/user/modifyUser.htm" enctype="multipart/form-data" method="post">
			  <#if hotelUser.cardno != null>
			  	<input type="hidden" name="hotelUser.phone" value="${hotelUser.phone}"/>
			  </#if>
			  	<input type="hidden" name="hotelUser.webusername" value="${hotelUser.webusername}"/>
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					用户名: 
				</th>
				<td>
					<#--${hotelUser.titleCn}-->
					<input  class="formText" id="titleCn" name="hotelUser.webusername" value="${hotelUser.webusername}" disabled type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					姓: 
				</th>
				<td>
					<#--${hotelUser.titleEn}-->
					<input  class="formText" name="hotelUser.firstname" value="${hotelUser.firstname}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					名: 
				</th>
				<td>
					<#--${hotelUser.titleEn}-->
					<input  class="formText" name="hotelUser.lastname" value="${hotelUser.lastname}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					手机号码: 
				</th>
				<td>
					<input  class="formText" id="phone" name="hotelUser.phone" <#if hotelUser.cardno != null>disabled</#if> value="${hotelUser.phone}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					固定电话: 
				</th>
				<td>
					<input  class="formText" id="telephone" name="hotelUser.telephone" value="${hotelUser.telephone}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					电子邮箱: 
				</th>
				<td>
					<input  class="formText" id="email" name="hotelUser.email" value="${hotelUser.email}" type="text" onkeyup="this.value=check(this.value)">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					性别:
				</th>
				<td>
					<input type="radio" value="1" name="hotelUser.sex"  <#if hotelUser.sex==1> checked</#if> />男
					<input type="radio" value="2" name="hotelUser.sex"  <#if hotelUser.sex==2> checked</#if>/>女
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					QQ号: 
				</th>
				<td>
					<input  class="formText" id="qq" name="hotelUser.qq" value="${hotelUser.qq}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')">
					<label class="requireField"></label>
				</td>
			</tr>
			
			<tr>
				<th style="width:150px;text-align:right;">
					证件类型:  
				</th>
				<td>
				 	<select name="hotelUser.idtype" id="idtype"><option value="" selected="selected">请选择</option>
						<option value="1" <#if hotelUser.idtype=="1"> selected </#if>>身份证</option>
					</select>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					证件号:  
				</th>
				<td>
					<input  class="formText" id="idno" name="hotelUser.idno" value="${hotelUser.idno}" type="text" onkeyup="value=value.replace(/\W/g,'')">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					生日: 
				</th>
				<td>
					<input  class="formText" id="birthday"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="hotelUser.birthday" value="${hotelUser.birthday}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					会员卡号: 
				</th>
				<td>
					<input  class="formText" id="cardno" name="hotelUser.cardno" onblur="checkCardNo();" value="${hotelUser.cardno}" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')"><span id="cardmsg"></span>
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
                <th style="width:150px;text-align:right;">
					省份: 
				</th>
                 <td>
                 <input type="text" id="areaSelect" name="areaId" class="hidden" value="<#if hotelUser.area!>${hotelUser.area}<#elseif hotelUser.city!>${hotelUser.city}<#else>${hotelUser.province}</#if>" defaultSelectedPath="${hotelUser.province!},${hotelUser.city!},${hotelUser.area!}" />
                 </td>
            </tr>
                      
			<tr>
				<th style="width:150px;text-align:right;">
					地址: 
				</th>
				<td>
					<input  class="formText" id="address" name="hotelUser.address" value="${hotelUser.address}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					邮编：: 
				</th>
				<td>
					<input  class="formText" id="postcode" name="hotelUser.postcode" value="${hotelUser.postcode}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<input type="hidden" name="hotelUser.id" value="${hotelUser.id}"/>
		</table>
		</div>
			<div class="buttonArea">
				<input class="formButton" type="submit" id="regButton" value="确  定" hidefocus="" >&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>