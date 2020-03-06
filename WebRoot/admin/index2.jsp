<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.fengyun.web.util.SpringUtil"%>
<%@page import="com.fengyun.web.util.SettingUtil"%>
<%@page import="com.fengyun.web.model.Admin"%>
<%@page import="com.fengyun.web.service.AdminService"%>
<%@page import="com.fengyun.web.model.Setting"%>
<%@page import="org.springframework.security.BadCredentialsException"%>
<%@page import="org.springframework.security.DisabledException"%>
<%@page import="org.springframework.security.LockedException"%>
<%@page import="org.springframework.security.AccountExpiredException"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%
	response.setHeader("progma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"";
	final String SPRING_SECURITY_LAST_EXCEPTION = "SPRING_SECURITY_LAST_EXCEPTION";
	ApplicationContext applicationContext = SpringUtil.getApplicationContext();
	if (applicationContext == null) {
%>
		<p>系统出现异常，请检查是否已正确安装</p>
		<p>提示: 安装完成后请重新启动WEB服务器</p>
		<a href="<%=path%>/install/index.html">点击进行安装</a>
<%
		return;
	}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>管理中心 </title>
<link rel="icon" href="<%=basePath%>/favicon.ico" type="image/x-icon">
<link href="<%=basePath%>/tempstatic/css/base.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>/tempstatic/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=basePath%>/tempstatic/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>/tempstatic/js/base.js"></script>
<script type="text/javascript" src="<%=basePath%>/tempstatic/js/admin.js"></script>
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
		/* if ($captcha.val() == "") {
			$.dialog({type: "warn", content: "请输入您的验证码!", modal: true, autoCloseTime: 3000});
			return false;
		} */
		if(b){
			return false;
		}
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
	<%-- $("#username").blur(function(){
		var adminUsername = $("#username").val();
		var $message = $("#messageId");
		$.ajax({ 
		   url: '<%=basePath%>/checkUsername.htm',
		   async:false,
		   type: 'post', 
		   dataType:'json', 
		   data: {'admin.username':adminUsername}, 
		   success: function (json) { 
		   		b= json;
		   		if(json){
		   			$message.html("用户名不存在 ");
		   		}else{
		   			$message.html("");
		   		}
		   }, 
		   error: function (XMLHttpRequest, textStatus, errorThrown) { 
		   	alert(errorThrown); 
   			} 
		});
	});
	
	$("#password").blur(function(){
		//alert("11111");
	 	$("#passWordMessage").html("");
	}); --%>
});
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
		<form id="loginForm" action="/admin/login/check" method="post">
            <table class="loginTable">
            	<tbody><tr>
            		<td rowspan="3">
            			<!-- <img src="./tempstatic/images/login_logo.gif" > -->
            		</td>
                    <th>
                    	用户名:
                    </th>
					<td>
                    	<input value="admin" id="username" name="j_username" class="formText" type="text"> 
                    	<!-- <input value="admin" id="username" name="admin.username" class="formText" type="text"> -->
                    	<label id="messageId" style="color:red; margin-left:5px; font-size: 10px;"></label> 
                    </td>
                </tr>
                <tr>
					<th>
						密&nbsp;&nbsp;&nbsp;码:
					</th>
                    <td>
                    	<input id="password" name="j_password" class="formText" type="password">
                    	<!-- <input id="password" name="admin.password" class="formText" type="password" value="admin">  -->
                    	<label id="passWordMessage" style="color:red; margin-left:5px; font-size: 10px;"><s:property value="message"/></label> 
                    </td>
                </tr>
                <%-- <tr>
                	<th>
                		验证码:
                	</th>
                     <td>
                    	<input type="text" id="captcha" name="j_captcha" class="formText captcha" />
                   		<img id="captchaImage" class="captchaImage" src="<%=path%>/captcha.jpeg" alt="换一张" />
                    </td>
                </tr> --%>
                <tr>
                	<!-- <td>
                		&nbsp;
                	</td> -->
                	<th>
                		&nbsp;
                	</th>
                    <td>
                    	<label>
                    		<input id="isRememberUsername" type="checkbox">&nbsp;记住用户名
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
                        <input class="homeButton" value="" onclick="window.open('/')" hidefocus="" type="button">
                        <input class="submitButton" value="登 录" hidefocus="" type="submit">
                   		  
                    </td>
                </tr>
            </tbody></table>
            <div class="powered">
           
            	COPYRIGHT © 2013 ALL RIGHTS RESERVED.
            </div>
        </form>
	</div>

</body></html>