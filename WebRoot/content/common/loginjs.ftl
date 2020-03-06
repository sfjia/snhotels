<script type="text/javascript">  
function searchAjaxLogin(){
	var webusername = $("#username").val();
	var password = $("#passwords").val();
	
	var hotel = $("#hotel").val();
	var arrivalDate = $("#arrivalDate").val();
	var leaveDate = $("#leaveDate").val();
	var leaveDate = $("#leaveDate").val();
	var cityCode = $("#city").val();
	var hotelName = $("#hotelName").val();
	var memberType = 1;
		$.ajax({ 
       type: "post", 
       url: "${base}/ajaxLogin.htm", 
	   data: {"hotelUser.webusername":webusername, "hotelUser.password":password}, 
	   dataType:'json', 
       success: function (data) { 
       		if(data.size == 0){
       				alert("用户名或密码错误");
       		}else{
       			window.location.href="${base}/searchRoom.htm?hotelCode=" + hotel + "&arrivalDate=" + arrivalDate + "&leaveDate=" + leaveDate + "&memberType=1&cityCode=" + cityCode + "&hotelName=" + hotelName;
       		}
       }, 
       error: function (XMLHttpRequest, textStatus, errorThrown) { 
       	alert(errorThrown); 
       } 
       });
	}
</script>   
