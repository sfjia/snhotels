<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="org.springframework.security.BadCredentialsException"%>
<%@page import="com.fengyun.web.util.SpringUtil"%>
<%@page import="com.fengyun.web.service.AdminService"%>
<%@page import="com.fengyun.web.model.Admin"%>
<%@page import="com.fengyun.web.util.SettingUtil"%>
<%@page import="com.fengyun.web.model.Setting"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.security.DisabledException"%>
<%@page import="org.springframework.security.LockedException"%>
<%@page import="org.springframework.security.AccountExpiredException"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%
	response.setHeader("progma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
	final String SPRING_SECURITY_LAST_EXCEPTION = "SPRING_SECURITY_LAST_EXCEPTION";
	String base = request.getContextPath();
	String message = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>管理中心 </title>
<link rel="icon" href="<%=base%>/favicon.ico" type="image/x-icon">
<link href="<%=base%>/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="<%=base%>/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=base%>/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="<%=base%>/tempstatic/js/base.js"></script>
<script type="text/javascript" src="<%=base%>/tempstatic/js/admin.js"></script>
<script type="text/javascript">
$().ready( function() {
	
	var b=false;
	var $loginForm = $("#loginForm");
	var $username = $("#username");
	var $password = $("#password");
	var $captcha = $("#captcha");
	var $captchaImage = $("#captchaImage");
	var $isRememberUsername = $("#isRememberUsername");

	// 判断"记住用户名"功能是否默认选中,并自动填充登录用户名
	if(getCookie("adminUsername") != null) {
		$isRememberUsername.attr("checked", true);
		$username.val(getCookie("adminUsername"));
		$password.focus();
	} else {
		$isRememberUsername.attr("checked", false);
		$username.focus();
	}

	// 提交表单验证,记住登录用户名
	$loginForm.submit( function() {
		if ($username.val() == "") {
			$.dialog({type: "warn", content: "请输入您的用户名!", modal: true, autoCloseTime: 3000});
			return false;
		}
		if ($password.val() == "") {
			$.dialog({type: "warn", content: "请输入您的密码!", modal: true, autoCloseTime: 3000});
			return false;
		}
		if (b) {
			$.dialog({type: "warn", content: "请输入正确的验证码!", modal: true, autoCloseTime: 3000});
			return false;
		}
		/* if ($captcha.val() == "") {
			$.dialog({type: "warn", content: "请输入您的验证码!", modal: true, autoCloseTime: 3000});
			return false;
		} */
		
		if ($isRememberUsername.attr("checked") == true) {
			var expires = new Date();
			expires.setTime(expires.getTime() + 1000 * 60 * 60 * 24 * 7);
			setCookie("adminUsername", $username.val(), expires);
		} else {
			removeCookie("adminUsername");
		}
		
	});

	// 刷新验证码
	$captchaImage.click( function() {
		var timestamp = (new Date()).valueOf();
		var imageSrc = $captchaImage.attr("src");
		if(imageSrc.indexOf("?") >= 0) {
			imageSrc = imageSrc.substring(0, imageSrc.indexOf("?"));
		}
		imageSrc = imageSrc + "?timestamp=" + timestamp;
		$captchaImage.attr("src", imageSrc);
	});

	<%if (message != null) {%>
		$.dialog({type: "error", content: "<%=message%>", modal: true, autoCloseTime: 3000});
	<%}%>
	
	// 刷新验证码 √
	var $code_c = $(".code_c");
	var $code_img = $("#code_img");
	$code_c.click(function() {
		$code_img.attr("src", "${base}/rand.htm?timestamp=" + (new Date()).valueOf());
	});
});
function chekCode(){
	var myCode=$("#mycode").val();
	var $myCodeId=$("#myCodeId");
	//alert(myCode.length);
	if(myCode.length==0){
		alert("请输入验证码");
		return;
	}
	$.ajax({
		type:"post",
		url:"<%=base%>/chekCodeLogin.htm ",
		data:{"mycode":myCode},
		dataType:"json",
		success:function(data){
			if(data){
				$myCodeId.html("验证码错误");
				b=true;
			};
		},
		 error: function (XMLHttpRequest, textStatus, errorThrown) { 
       	alert(errorThrown); 
       } 
	});
}
</script>
</head>
<body class="login">
	<script type="text/javascript">

		// 登录页面若在框架内，则跳出框架
		if (self != top) {
			top.location = self.location;
		};

	</script>
	<div class="blank"></div>
	<div class="blank"></div>
	<div class="blank"></div>
	<div class="body">
		<form id="loginForm" action="<%=base%>/admin/login/check" method="post">
            <table class="loginTable">
            	<tr>
            		<td rowspan="3">
            			<%-- <img src="<%=base%>/template/admin/images/login_logo.gif" alt="网贷管理中心" /> --%>
            		</td>
                    <th>
                    	用户名:
                    </th>
					<td>
                    	<input type="text" id="username" name="j_username" class="formText" />
                    </td>
                </tr>
                <tr>
					<th>
						密&nbsp;&nbsp;&nbsp;码:
					</th>
                    <td>
                    	<input type="password" id="password" name="j_password" class="formText" />
                    </td>
                </tr>
            <tr>
                	<th>
                		验证码:
                	</th>
                	<td>
                		<input type="text" id="mycode" name="mycode" class="formText captcha" onblur="chekCode()" /><label id="myCodeId" style="color:red; margin-left:5px; font-size: 10px;"></label> 
                		<img id = "code_img" src="${base}/rand.htm" class="captchaImage"/><a href="javascript:void(0);" class = "code_c">换一张</a>
                	</td>
                </tr> 
                <tr>
                 <td>
                		&nbsp;
                	</td>
                	<th>
                		&nbsp;
                	</th>
                    <td>
                    	<label>
                    		<input type="checkbox" id="isRememberUsername" />&nbsp;记住用户名
                    	</label>
                    </td>
                </tr>
                <tr>
                	<td>
                		&nbsp;
                	</td>
                	<th>
                		&nbsp;
                	</th>
                    <td>
                        <input type="button" class="homeButton" value="" onclick="window.open('<%=base%>/')" hidefocus /><input type="submit" class="submitButton" value="登 录" hidefocus />
                    </td>
                </tr>
            </table>
            <div class="powered">
            	COPYRIGHT © 2012-2013 ALL RIGHTS RESERVED.
            </div>
        </form>
	</div>
</body>
</html>