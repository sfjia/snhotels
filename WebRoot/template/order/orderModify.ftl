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
<script type="text/javascript" src="${base}/statics/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/statics/js/jquery.cookie.js"></script>

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
		
	var $validateForm = $("#validateForm");
				
		// 表单验证
		$validateForm.validate({
			rules: {
				"hotelOrder.phone":{
					required:true
				},
				"hotelOrder.email":{
					required:true
				},
				"hotelOrder.arrivaldate":{
					required:true
				},
				
				"hotelOrder.leavedate":{
					required:true
				},
				"hotelOrder.arrivaltime":{
					required:true
				},
				
			},
			messages: {
				"hotelOrder.phone":{
					required:"手机号不能为空!"
				},
				"hotelOrder.email":{
					required:"邮箱不能为空!"
				},
				"hotelOrder.arrivaldate":{
					required:"入住时间不能为空!"
				},
				"hotelOrder.leavedate":{
					required:"离店时间不能为空!"
				},
				"hotelOrder.arrivaltime":{
					required:"抵店时间不能为空!"
				},
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
});
function regFormSub(){
	$("#validateForm").submit();
}
function cancel(){
	var id=$("#orderId").val();
	parent.document.getElementById("mainFrame").src ="${base}/order/cancel.htm?orderId="+id;
}
var bed = 100;
function caTotalMoney(){
	var hasBed = $("#hasBed").val();
	var arrivaldate = $("#arrivaldate").val();
	var a = parseISO8601(arrivaldate);
	var leavedate = $("#leavedate").val();
	var l = parseISO8601(leavedate);
	var date3=l.getTime()-a.getTime();
	var days=Math.floor(date3/(24*3600*1000));
	var temp = days;
	var bDays = temp;
	var actualprice = ${hotelOrder.actualprice};
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	
	if(hasBed == 0){
		totalAmount = totalAmount + bed;
		$("#hasBed").attr("value", 1);
	}else{
		$("#hasBed").attr("value", 0);
	}
	$("#totalAmount").html(totalAmount);
}

$().ready( function() {
	var arrivaldate = $("#arrivaldate").val();
	var a = parseISO8601(arrivaldate);
	var leavedate = $("#leavedate").val();
	var l = parseISO8601(leavedate);
	var date3=l.getTime()-a.getTime();
	var days=Math.floor(date3/(24*3600*1000));
	var temp = days;
	var bDays = temp;
	var actualprice = ${hotelOrder.actualprice};
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	if(hasBed == 1){
		totalAmount = totalAmount + bed;
		$("#hasBed").attr("checked", true);
	}else{
	}
	$("#totalAmount").html(totalAmount);
	
});
function selCalMoney(){
	var hasBed = $("#hasBed").val();
	var arrivaldate = $("#arrivaldate").val();
	var a = parseISO8601(arrivaldate);
	var leavedate = $("#leavedate").val();
	var l = parseISO8601(leavedate);
	var date3=l.getTime()-a.getTime();
	var days=Math.floor(date3/(24*3600*1000));
	var temp = days;
	var bDays = temp;
	var actualprice = ${hotelOrder.actualprice};
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice * bDays;
	if(hasBed == 1){
		totalAmount = totalAmount + bed;
	}else{
	}
	$("#totalAmount").html(totalAmount);
}
function parseISO8601(dateStringInRange) {  
   var isoExp = /^\s*(\d{4})-(\d\d)-(\d\d)\s*$/,  
       date = new Date(NaN), month,  
       parts = isoExp.exec(dateStringInRange);  
  
   if(parts) {  
     month = +parts[2];  
     date.setFullYear(parts[1], month - 1, parts[3]);  
     if(month != date.getMonth() + 1) {  
       date.setTime(NaN);  
     }  
   }  
   return date;  
 }  
var srm = ${hotelOrder.sremark};
var rzxxs = ${roomColumnList.size()};

function sjson(){
	var temp="{";
	for(i =0;i< rzxxs;i++){
		var ywy = $("#ywy" + i).val();
		var name = $("#rzname" + i).html();
		temp = temp + '"' + name + '":'+ '"' + ywy + '",';
	}
	var arrivaltime = $("#arrivaltime").val();
	temp = temp + '"抵店时间"' + ':' + '"' + arrivaltime + '前"}';
	$("#sremark").val(temp);
		
}

$().ready( function() {
	var temp="{";
	for(i =0;i< rzxxs;i++){
		var ywy = $("#ywy" + i).val();
		var name = $("#rzname" + i).html();
		temp = temp + '"' + name + '":'+ '"' + ywy + '",';
	}
	var arrivaltime = $("#arrivaltime").val();
	temp = temp + '"抵店时间"' + ':' + '"' + arrivaltime + '前"}';
	$("#sremark").val(temp);
});
</script>
</head>
<body class="input">
	<div class="bar">
		订单资料管理
	</div>
	<div id="validateErrorContainer" class="validateErrorContainer">
		<div class="validateErrorTitle">以下信息填写有误,请重新填写</div>
		<ul></ul>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="${base}/adminUpdateOrder.htm" enctype="multipart/form-data" method="post">
		<input name="hotelOrder1.id" value="${hotelOrder.id}" type="hidden">
		<input name="hotelOrder1.actualprice" value="${hotelOrder.actualprice}" type="hidden">
        <input id="sremark" type="hidden" name="hotelOrder1.sremark" value="${hotelOrder.sremark}"/>
        <input id="hasBed" type="hidden" name="hotelOrder1.addbed" value="0"/>
        <input id="orderstatus" type="hidden" name="hotelOrder1.orderstatus" value="${hotelOrder.orderstatus}"/>
        
        
		<div class="index">
		<table class="listTable">
			<tr>
				<th style="width:150px;text-align:right;">
					订单号： 
				</th>
				<td>
					${hotelOrder.orderno}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					客户姓名: 
				</th>
				<td>
					<input  class="formText" name="hotelOrder1.customername" onkeyup="value=value.replace(/^[a-zA-Z0-9]+/g,'')" value="${hotelOrder.customername}" type="text">
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					手机号: 
				</th>
				<td>
					<#--${hotelOrder.titleEn}-->
					<input  class="formText" name="hotelOrder1.phone" value="${hotelOrder.phone}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					电子邮箱: 
				</th>
				<td>
					<#--${hotelOrder.titleEn}-->
					<input  class="formText" name="hotelOrder1.email" value="${hotelOrder.email}" type="text">
					<label class="requireField"></label>
				</td>
			</tr>
			<#--<tr>
				<th style="width:150px;text-align:right;">
					酒店名称: 
				</th>
				<td>
					${hotelOrder.titleEn}
				</td>
			</tr>-->
			<tr>
				<th style="width:150px;text-align:right;">
					入住-退房日期: 
				</th>
				<td>
					<input id="arrivaldate" name="hotelOrder1.arrivaldate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="formText" value="${(hotelOrder.arrivaldate?string("yyyy-MM-dd"))!}" type="text">-<input id="leavedate" name="hotelOrder1.leavedate" onclick="WdatePicker({onpicked:selCalMoney,dateFmt:'yyyy-MM-dd'})" class="formText" value="${(hotelOrder.leavedate?string("yyyy-MM-dd"))!}" type="text">
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					抵店时间: 
				</th>
				<td>
					<select id="arrivaltime" onchange="sjson();" name="hotelOrder1.arrivaltime">
					<#list 1 .. 24 as a>
						<option value="${a}:00" <#if a == hotelOrder.arrivaltime.substring(0,hotelOrder.arrivaltime.indexOf(":"))> selected </#if>>${a}:00</option>
					</#list>   
					</select>                            	
					<label class="requireField">*</label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					房间类型: 
				</th>
				<td>
					${hotelOrder.roomtypename}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					房间数量: 
				</th>
				<td>
					<select name="hotelOrder1.roomqty" id="bookAmount" onchange="selCalMoney();">
					<#list 1 .. 5 as index>
						<option value="${index}" <#if index == hotelOrder.roomqty>selected</#if>>${index}</option>
					</#list>   
					</select>
				</td>
			</tr>
			<!--
			<tr>
				<th style="width:150px;text-align:right;">
					加床: 
				</th>
				<td>
					<input  id="hasBed"  type="checkbox" value="${hotelOrder.addbed}" onclick="caTotalMoney();" name="hotelOrder1.addbed">
				</td>
			</tr>
			-->
			<tr>
				<th style="width:150px;text-align:right;">
					房间价格: 
				</th>
				<td>
					${hotelOrder.actualprice}
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					订单总金额: 
				</th>
				<td>
					<span id="totalAmount">${hotelOrder.actualprice?number*hotelOrder.roomqty?number*bDays}</span>
				</td>
			</tr>
			
			<#--<tr>
				<th style="width:150px;text-align:right;">
					早餐: 
				</th>
				<td>
					<i<input type="radio" value="1" name="hotelOrder.sex"  <#if hotelOrder.sex==1> checked</#if> />无
					<input type="radio" value="2" name="hotelOrder.sex"  <#if hotelOrder.sex==2> checked</#if>/>单早
					<input type="radio" value="3" name="hotelOrder.sex"  <#if hotelOrder.sex==2> checked</#if>/>双早
					<label class="requireField"></label>
				</td>
			</tr>-->
			<tr>
				<th style="width:150px;text-align:right;">
					入住要求: 
				</th>
				<td>
				<textarea name="hotelOrder1.remark" cols="75" rows="5" >${hotelOrder.remark}</textarea>
					<label class="requireField"></label>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					入住选项: 
				</th>
				<td>
                            <#list roomColumnList as roomC>
                            	<#assign sname=roomC.name />
                            	<span id="rzname${roomC_index}">${roomC.name}</span>:
	                            <select id="ywy${roomC_index}" onchange="sjson();">
	                            <#list roomColumnArticleList as column>
	                            	<#if column.columnId == roomC.id>
	                            		<option vaue="${column.name}" 
	                            		<#list kVObjectList as kv>
	                            			<#if kv.name == roomC.name>
	                            				<#if kv.value == column.name>
	                            					selected
	                            				</#if>
	                            			</#if>
	                            		</#list>
	                            		>${column.name}</option>
	                            	</#if>
	                            </#list>
	                            </select>
                            </#list>
					<label class="requireField"></label>
				</td>
			</tr>

			<tr>
				<th style="width:150px;text-align:right;">
					订单状态： 
				</th>
				<td>
				<!--
					<input  id="orderstatus1"  type="radio" value="1" <#if hotelOrder.orderstatus==1>checked</#if> <#if hotelOrder.orderstatus!=1>disabled</#if> name="hotelOrder1.orderstatus">未支付
					<input  id="orderstatus2"  type="radio" value="2" <#if hotelOrder.orderstatus==2>checked</#if> <#if hotelOrder.orderstatus!=1>disabled</#if> name="hotelOrder1.orderstatus">已支付
					<input  id="orderstatus3"  type="radio" value="3" <#if hotelOrder.orderstatus==3>checked</#if> disabled name="hotelOrder1.orderstatus">已取消
					-->
					<#if hotelOrder.orderstatus==1>未支付</#if>
					<#if hotelOrder.orderstatus==2>已支付</#if>
					<#if hotelOrder.orderstatus==3>已取消</#if>
                    <#if hotelOrder.orderstatus == 4>已入住</#if>
                    <#if hotelOrder.orderstatus == 5>预定未到</#if>
				</td>
			</tr>
			<tr>
				<th style="width:150px;text-align:right;">
					支付方式： 
				</th>
				<td>
					<input  id="paymentmode1"  type="radio" value="1" <#if hotelOrder.paymentmode==1>checked</#if> name="hotelOrder1.paymentmode">在线支付
					<input  id="paymentmode2"  type="radio" value="2" <#if hotelOrder.paymentmode==2>checked</#if> name="hotelOrder1.paymentmode">前台支付
				</td>
			</tr>

			<input type="hidden" id="orderId" name="hotelOrder.id" value="${hotelOrder.id}"/>
		</table>
		</div>
			<div class="buttonArea">
				<#if hotelOrder.orderstatus == 1><input class="formButton" onclick="cancel()" value="取消订单" hidefocus=""  type="button"></#if>&nbsp;&nbsp;
				<#if hotelOrder.orderstatus == 1><input class="formButton" onclick="regFormSub()" value="确认修改" hidefocus=""  type="button"></#if>&nbsp;&nbsp;
				<input class="formButton" onclick="window.history.back(); return false;" value="返  回" hidefocus="" type="button">
			</div>
		</form>
	</div>

</body></html>