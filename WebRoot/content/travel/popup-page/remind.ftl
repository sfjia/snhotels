<script type="text/javascript">
	function clock(){
		 i = i -1;
		 if(document.getElementById("info")){
		  document.getElementById("info").innerHTML = i+"秒后自动跳转到登陆界面";
		 }
		 if(i > 0)
		  setTimeout("clock();",1000);
		 else
		   window.parent.parent.location.href='${base}/user/loginIndex.htm';
		} 
		var i=4;
		clock();
</script>
	<div style="text-align:center;margin-top:50px;margin-bottom:14px;">登录后才能预定！<a href="${base}/user/loginIndex.htm" style="color:#95704A;font-size:14px;font-family:"宋体"；">点击进入登陆界面</a> </div>
	<div id="info" style="text-align:center;color:#000;font-size:14px;font-family:"宋体"；">3秒后自动跳转到登陆界面</div>