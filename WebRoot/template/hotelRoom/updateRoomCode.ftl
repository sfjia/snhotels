<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>入住要求</title>
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

<script type="text/javascript">
	$().ready(function() {
		
		var $validateForm = $("#validateForm");
		
		// 表单验证
		$validateForm.validate({
			rules: {
				
				"hotelRoomCode.roomCode":{
					required: true,
					remote:{
						type:"POST",
					 	url:"${base}/room/updatecheckCode.htm"
					}
				},
				
			},
			messages: {
				
				"hotelRoomCode.roomCode":{
					required:"客房编码不能为空!"
				},
				
				
			},
			errorPlacement: function(error, element) {
			  error.appendTo(element.parent());
			},
		});
		
	});
</script>
</head>
<body class="input">
	<div class="bar">
		<h4>客房代码修改</h4>
	</div>
	<div class="body">
		<form id="validateForm" class="form" action="/room/updateCode.htm"  method="post">
		<input type="hidden" id="id" name="hotelRoomCode.id" value=${hotelRoomCode.id} />
		<div class="index">
		<table style="display: table;" class="inputTable tabContent">
		
			<tr>
				<th >
					客房代码: 
				</th>
				<td>
					<input  class="formText" name="hotelRoomCode.roomCode" value="${hotelRoomCode.roomCode}" type="text">
					<label id="vanclHotelCodeError"  for="hotelRoomCode.roomCode"></label>
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