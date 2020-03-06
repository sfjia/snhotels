       <div style=" padding:40px 0 0 0px;">
			<ul style=" padding-left:60px">
				<li style=" margin-bottom:10px;">
                    <label style="width:75px; color:#000; display:inline-block; vertical-align:middle; margin-left:10px;  font-size:14px;">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</label>
                    <input type="text" id="username2" name="username2" style="width:160px; background:#fff; padding:5px 10px 5px 0px; border:0 none;" />
                 </li>
				 <li style=" margin-bottom:10px;">
                    <label style="width:75px; color:#000; display:inline-block; vertical-align:middle; margin-left:10px; font-size:14px;">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
                    <input type="text" id="authCode"  name="bookingInfo.call" style="width:160px; background:#fff; padding:5px 10px 5px 0px; border:0 none;"/>
                    <input type="button" onclick="sendAuthCode();" value="获取验证码" style=" background:url(${base}/statics/img/check2.png) no-repeat; width:100px; height:26px; line-height:26px; vertical-align:top; border: 0 none; color:#fff; font-family:'宋体'; font-size:14px;" />
                 </li>
		     </ul>
		</div>
      <div style=" text-align:center; padding:5px 0 0 0;">
      <input   onclick="checkAuthCode();" type="button" value="确  定" style=" background:url(${base}/statics/img/check2.png) no-repeat; width:100px; height:30px;margin-left:-100px; border: 0 none; color:#fff; font-family:'宋体'; font-size:14px;" />
     <#-- <input type="button" value="取  消" style=" background:url(${base}/statics/img/check2.png) no-repeat; width:100px; height:30px; border: 0 none; color:#fff; font-family:'宋体'; font-size:14px;" />-->
      </div>