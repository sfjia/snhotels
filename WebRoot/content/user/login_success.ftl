<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap"> 
<script type="text/javascript" src="${base}/tempstatic/js/datePicker/WdatePicker.js"></script>
<script type="text/javascript">  
function bookSub(){
	document.bookSubForm.submit();
}

function caTotalMoney(){
	var actualprice = $("#actualprice").val();
	var bookAmount = $("#bookAmount").val();
	var totalAmount = bookAmount * actualprice;
	$("#totalAmount").html(totalAmount);
}

</script>   
<#assign left = "center">
  <div class="content_pre3" style=" float:left; background:#fff;">
<#include "/content/common/login_left.ftl">  
     <div class="right_neirong3" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title3">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">你现在的位置</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">会员中心</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">首页</a>
        </div><!--right_neirong_title3 end-->
        <ul style=" height:80px; background:#fffeee; padding-left:40px;">
           <li style=" color:#80501b; font-size:18px; padding-top:15px; padding-bottom:15px;">欢迎您，${hotelUser.webusername}，<#if hotelUser.sex == 1>先生<#else>女士</#if>！</li>
          <!-- <li style=" font-family:'宋体'; color:#666666;"><span style=" margin-right:50px;">您有<b style=" color:#ff8c83;"><#assign w=0/><#assign z=0/><#list hotelOrderList as hotel><#if hotel.orderstatus == 1><#assign w=w+1/><#elseif hotel.orderstatus == 2><#assign z=z+1/></#if></#list>${w}</b>张订单未支付！<a href="${base}/user/userOrder.htm?hotelOrder.orderstatus=1" style="color:#ab7b3e; margin-left:25px;">立即查看</a></span>
           <span>您有<b style=" color:#ff8c83;">${z}</b>张订单已支付！<a href="${base}/user/userOrder.htm?hotelOrder.orderstatus=2" style="color:#ab7b3e;margin-left:25px;">立即查看</a></span></li>-->
        </ul>
        <div style=" background:url(${base}/statics/img/bottom.png) no-repeat; height:16px;"></div>
        <div class="right_wrap" style=" width:730px; margin:0px auto 0px auto;">
          <div class="right_middle" style=" padding-top:10px;">
                <div style="color:#fff; padding-left:20px; padding-right:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; "><a style=" float: left;">我的资料</a><a href="${base}/user/updateUserIndex.htm?hotelUser.id=${hotelUser.id}" style=" float: right; font-family:'宋体'; color:#fff; font-size:12px;">管理个人资料</a></div>
               <div class="st">
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">姓名</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.firstname}${hotelUser.lastname}</td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">称谓</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if hotelUser.sex == 1>先生<#else>女士</#if></td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">会员级别</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if hotelUser.level == 1>品悦银卡</#if></td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">会员卡号</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.cardno}</td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">生日</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.birthday}</td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">邮箱</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.email}</td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">手机</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.phone}</td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">联系电话</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.telephone}</td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">联系地址</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelUser.address}</td>
                            <td></td>
                            <td></td>
                          </tr>
                        </tbody>
                     </table>
              </div><!--st end-->
          </div><!--right_middle3 end-->
          <#list hotelOrderList as hotel>
          	<#if hotel != null><#assign lastHotel = hotel></#if>
          	<#if hotel_index == 0>
          		<#break/>
          	</#if>
          </#list>
          <div class="right_down" style="padding-top:20px;">
                <div style="color:#fff; padding-left:20px; padding-right:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; "><a style=" float: left;">我的订房统计</a><a href="${base}/user/userOrder.htm" style=" float: right; font-family:'宋体'; color:#fff; font-size:12px;">查看订房明细</a></div>
                <div>
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">最近订房时间</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if lastHotel != null>${lastHotel.createDate?string("yyyy-MM-dd")}</#if></td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">订单号</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if lastHotel != null>${lastHotel.orderno}</#if></td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">预定酒店</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if lastHotel != null>${lastHotel.hotelname}</#if></td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">订单状态</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"><#if lastHotel != null>
                            <#if lastHotel.orderstatus == 1>未支付</#if>
                            <#if lastHotel.orderstatus == 2>已支付</#if>
                            <#if lastHotel.orderstatus == 3>已取消</#if>
                            <#if lastHotel.orderstatus ==4>已入住</#if>
                            <#if lastHotel.orderstatus ==5>预定未到</#if>
                            </#if></td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">历史订房总数</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">${hotelOrderList.size()}</td>
                            <td></td>
                            <td></td>
                          </tr>
                        </tbody>
                     </table>
                  </div>
                  </div>
          <div style="padding-top:20px;">
                <div style="color:#fff; padding-left:20px; padding-right:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; "><a style=" float: left;">我的积分统计</a><a href="" style=" float: right; font-family:'宋体'; color:#fff; font-size:12px;">查看积分明细</a></div>
                <div>
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">可用积分</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">0</td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">最近积分</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;">0</td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">最近积分时间</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"></td>
                            <td style=" font-family:'宋体'; color:#666666; background-color:#ededed;padding-left:25px;" width="95">最近积分来源</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"></td>
                          </tr>
                          <tr height="30">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;" width="95">最近积分地点</td>
                            <td style="color:#666666; background:#f5f5f5; padding-left:10px;"></td>
                            <td></td>
                            <td></td>
                          </tr>
                        </tbody>
                     </table>
                  </div>
                  </div>
        </div><!--right_wrap end-->
        <div style=" width:728px; height:238px; border:1px solid #c2a06b; background:#fffeee; margin:20px auto 0 auto;">
          <div style=" height:40px; line-height:40px; padding-left:15px; background:url(${base}/statics/img/w.png) no-repeat 10px center;"><a style=" float: left; margin-left:15px; font-size:16px; color:#81511c;">您可能感兴趣</a><a style=" float:right; color:#ab7b3e; font-family:'宋体'; margin-right:15px;" href="">更多优惠</a></div>
          <div style=" width:690px; height:198px; margin:0 auto;">
            <ul class="right_top_right1" style="float:left; width:690px;">
               <li>
                  <ul class="huodong" style=" float: left;">
                     <li style="background:url(${base}/statics/img/160.png) no-repeat; width:160px; height:160px; position:relative; float:left; margin-right:16px;">
                     <div style=" background:url(${base}/statics/img/t1.png) no-repeat ; width:160px; height:50px; position: absolute; bottom:0px; display:none;" class="hide_v"><a href="" style=" color:#fff; font-family:'宋体';display:inline-block; padding:8px 5px 0px 5px ;">贺天猫商场开业,全场8.8折大酬宾</a></div>
                     </li>
                     <li style="background:url(${base}/statics/img/160.png) no-repeat; width:160px; height:160px; position:relative; float:left; margin-right:16px;">
                     <div style=" background:url(${base}/statics/img/t1.png) no-repeat ; width:160px; height:50px; position: absolute; bottom:0px; display:none;" class="hide_v"><a href="" style=" color:#fff; font-family:'宋体';display:inline-block; padding:8px 5px 0px 5px ;">贺天猫商场开业,全场8.8折大酬宾</a></div>
                     </li>
                     <li style="background:url(${base}/statics/img/160.png) no-repeat; width:160px; height:160px; position:relative;float:left; margin-right:16px;">
                     <div style=" background:url(${base}/statics/img/t1.png) no-repeat ; width:160px; height:50px; position: absolute; bottom:0px; display:none;" class="hide_v"><a href="" style=" color:#fff; font-family:'宋体';display:inline-block; padding:8px 5px 0px 5px ;">贺天猫商场开业,全场8.8折大酬宾</a></div>
                     </li>
                     <li style="background:url(${base}/statics/img/160.png) no-repeat; width:160px; height:160px; position:relative;float:left;">
                     <div style=" background:url(${base}/statics/img/t1.png) no-repeat ; width:160px; height:50px; position: absolute; bottom:0px; display:none;" class="hide_v"><a href="" style=" color:#fff; font-family:'宋体'; display:inline-block; padding:8px 5px 0px 5px ;">贺天猫商场开业,全场8.8折大酬宾</a></div>
                     </li>
                  </ul>
              </li>
              <script>
                jQuery(function(){
					jQuery(".huodong li").mouseover(function(){
						jQuery(this).children(".hide_v").css("display","block")
					})
					
					jQuery(".huodong li").mouseleave(function(){
						jQuery(this).children(".hide_v").css("display","none")
					})
					
					})
              
              </script>
            </ul><!--right_top_right1 end-->
          </div>
        </div>
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
    <#include "/content/common/footer.ftl">