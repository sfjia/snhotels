             <link rel="stylesheet" href="${base}/statics/css/base.css" />
 <script type="text/javascript">
$().ready(function() {

		 $("#checkeBut").click(function(){
		 	var orderno=$("#orderno").val();
		 	var phone=$("#phone234").val();
		 	if(orderno.length==0){
		 		alert("请输入订单号");
		 		return false;
		 	}
		 	var regPhone =/^(13[0-9]|18[2|5|6|8]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/;  
		 	if (!regPhone.test(phone)){
		 		alert("请输入正确的手机号");
		 		return false;
		 	} 
		 	$("#checkeForm").submit();
		 });
	
			
	});
</script>
              <form action="${base}/query/orderDetail.htm" method="post" id="checkeForm">
             <div style=" padding:20px 0 0 0px;">
	            
					<ol style="background: url(${base}/statics/img/c0.png); height:70px;">
						<li style=" padding:7px 0 5px 0;">
	                        <label style="width:65px; color:#fff; display:inline-block; vertical-align:middle; margin-left:10px; font-weight:700;">订&nbsp;&nbsp;单&nbsp;&nbsp;号：</label>
	                        <input type="text" id="orderno" name="hotelOrder.orderno" style="width:160px; background:#fff; padding:3px 10px 3px 0px; border:0 none;" /><sup style="color:#FF0000;margin-left:3px;">*</sup>
	                     </li>
						 <li style=" margin-bottom:0px;">
	                        <label style="width:65px; color:#fff; display:inline-block; vertical-align:middle; margin-left:10px; font-weight:700;">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</label>
	                        <input type="text" id="phone234" name="hotelOrder.phone" style="width:160px; background:#fff; padding:3px 10px 3px 0px; border:0 none;"/><sup style="color:#FF0000;margin-left:3px;">*</sup>
	                     </li>
				     </ol>
				  
			</div>
          <div style=" text-align:center; padding:5px 0 0 0;"><input id="checkeBut" type="button" value="确  定" style=" background:url(${base}/statics/img/check2.png) no-repeat; width:100px; height:30px; border: 0 none; color:#fff; font-family:'宋体'; font-size:14px;" /></div>
          </form>