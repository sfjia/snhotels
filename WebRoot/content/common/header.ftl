  <div class="header">

   <div style="width:100%; height:99px; margin:0 auto;position:relative;">
     <div class="logo"><a href="#"><img src="${base}/statics/img/logo1.png" alt=" " /></a></div>
     <div class="information">
         <ul style=" float:left;">
            <li style=" float:left; width:735px;">
               <ul style=" float:left;width:735px; overflow:hidden;">
                  <li style=" float:left; background:url(${base}/statics/img/phone.gif) no-repeat 0 10px;margin-left:140px;_margin-left:80px;">
                  <span style="color:#cc9b60; font-size:14px; padding-left:10px;">预订热线：</span>
                  <span style="color:#cc9b60; font-size:22px; position:relative;top:2px;">400-8888-576</span>
                  </li>
                  <li style=" float:right;padding-top:5px;">
                <#if user==null >
                  <a href="${base}/user/regIndex.htm" style="color:#d59751;text-decoration:none;padding-right:5px;">会员注册</a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <a href="${base}/user/loginIndex.htm" style="color:#d59751;text-decoration:none;padding-right:5px;">会员登录</a>
               	<#else>
               	 <#-- <a href="${base}/user/usercenter.htm" style="color:#d59751;text-decoration:none;padding-right:5px;">个人中心</a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>-->
                   <span style="color:#d59751;text-decoration:none;padding-right:5px;_padding-right:0px;">欢迎您,</span> <a href="${base}/user/usercenter.htm" style="color:#d59751;text-decoration:none;padding-right:5px;_padding-right:0px;"> ${user.webusername}</a> <a href="${base}/user/logout.htm" style="color:#d59751;text-decoration:none;padding-right:5px;_padding-right:0px;"> 退出</a>
                </#if>
                  <a style="color:#d59751; text-decoration:none;padding-right:5px;">|</a>
                  <a href="#" style="color:#d59751;text-decoration:none; padding-right:5px;">English</a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <a href="${base}/kauiJieLogin.htm" style="color:#d59751;text-decoration:none;padding-right:5px; position:relative;top:2px;"><img src="${base}/statics/img/weibo.gif" alt="" /></a>
                  <a style="color:#d59751;text-decoration:none;padding-right:5px;">|</a>
                  <a href="${base}/kauiJieLogin.htm" style="color:#d59751;text-decoration:none;position:relative;top:2px;"><img src="${base}/statics/img/qq.gif" alt="" /></a>
                  </li>
               </ul>
            </li>
            <li style="float:left;width:735px; overflow:hidden;">
               <ul class="nav" style="float:right;margin-right:70px;">
                  <a href="${base}/index.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list1"></a>
                  <a href="${base}/hotel/hotelFrontList.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list2"></a>
                  <a href="${base}/ytw.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list3"></a>
                  <a href="${base}/specialOffers.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list4"></a>
                  <a href="${base}/travel.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list5"></a>
                  <a href="${base}/recruitment.htm" style=" display:inline-block; width:64px; height:64px; margin-right:30px;position:relative;top:1px; " class="nav-list6"></a>
                  <a href="${base}/aboutUs.htm" style=" display:inline-block; width:64px; height:64px;position:relative;top:1px;" class="nav-list7"></a>
               </ul>
            </li>
         </ul>
     </div><!--information end-->
     </div>
  </div>
  