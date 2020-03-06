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
<#assign left = "password">

  <div class="content_pre3" style=" float:left; background:#fff;">
<#include "/content/common/login_left.ftl">  
     <div class="right_neirong3" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title3">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">你现在的位置</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">会员中心</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">我的订房记录</a>
        </div><!--right_neirong_title3 end-->
        <div class="right_wrap" style=" width:730px; margin:0px auto 0px auto;">
          <div class="right_middle3" style=" padding-top:20px;">
                <div style="color:#fff; padding-left:20px; padding-right:15px;font-size:16px; background:#a88f66; height:30px; line-height:30px; "><a style=" float: left;">修改密码</a></div>
               <div class="st">
                 <form action="${base}/user/modifyPassword.htm" method="post">
                     <table width="100%" cellpadding="0" cellspacing="1">
                        <tbody>
                          <tr height="36">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#f5f5f5;">原密码：<input type="password" name="hotelUser.password" style="border:1px solid #a1a1a1; width:260px; height:24px; line-height:24px; margin-left:20px;"/><sup style="color:#ff0101; margin-left:5px;">*</sup></td>
                          </tr>
                          <tr height="36">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#ededed;">新密码：<input type="password" name="passwordc" style="border:1px solid #a1a1a1; width:260px; height:24px; line-height:24px;margin-left:20px;"/></td>
                          </tr>
                          <tr height="36">
                            <td style=" font-family:'宋体'; color:#666666;padding-left:25px; background-color:#f5f5f5;">确认密码：<input type="password" style="border:1px solid #a1a1a1; width:260px; height:24px; line-height:24px;margin-left:8px;"/></td>
                          </tr>
                          <tr height="36">
                            <td align="left" style=" padding-top:25px;"><input type="submit" value="提交"  style=" background:url(${base}/statics/img/btn.png) no-repeat; width:69px; height:27px; border: 0 none; text-align:center; color:#fff; font-family:'宋体';"/></td>
                          </tr>
                          <tr height="36">
                            <td align="left" style=" padding-top:25px;"><span >${message}</span></td>
                          </tr>
                        </tbody>
                     </table>
                   </form>
              </div><!--st end-->
          </div><!--right_middle3 end-->
        </div>
     </div><!--right_neirong3 end-->
  </div><!--content_pre3 end -->
    <#include "/content/common/footer.ftl">