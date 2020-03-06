<div class="footer1" style="background-color:#fff; background-image:url(${base}/statics/img/bottom.png); background-position:0 -1px; background-repeat:repeat-x; clear:both;">

     <div style="width:965px; margin:0 auto; padding:20px 0 30px 0;" class="footer_bottom">
        <table width="100%">
           <tbody>
             <tr>
                <td rowspan="2" width="335"><a href="#"><img src="${base}/statics/img/logo2.png" /></a></td>
	            <#list diCengWenZi as dc>
			  		<td align="center"><a href="${dc.linkeUrl}" style="color:#898989;">${dc.titleCn}</a></td>
			 	</#list>
               <#-- <td align="center"><a href="#" style="color:#898989;">企业文化</a></td>-->
               
             </tr>
             <tr>
                <#list diCengWenZi2 as dc2>
			  		<td align="center"><a href="${dc2.linkeUrl}" style="color:#898989;">${dc2.titleCn}</a></td>
			 	</#list>
             </tr>
           </tbody>
        </table>
     </div><!--footer_bottom end-->
     <div style=" width:993px; height:58px;  margin:0 auto 0px auto; clear:both; position:relative;" class="footer_top">
    <h3 style=" position:absolute; left:20px; top:-4px;"><img src="${base}/statics/img/hezuohuoban.png" /></h3>
       <ul style=" float:left; padding:5px 0 0 60px;">
          <#list cooperative_partner as cp>
          	<#if !cp_has_next>
          		<li style="float: left;"><a href="${cp.linkeUrl}"><img src="${cp.image}" target="_blank" /></a></li>
          	<#else> 
          		 <li style="float: left; margin-right:20px;_margin-right:13px;"><a href="${cp.linkeUrl}"><img src="${cp.image}" target="_blank" /></a></li>
          	 </#if>
         
          </#list>
         <#-- <li style="float: left;"><a href="#"><img src="${base}/statics/img/333.jpg" /></a></li>-->
       </ul>
     </div><!--footer_top end-->
   </div><!-- footer1 end-->
</div><!--wrap end -->
     <div style=" width:1000px; margin:0px auto; text-align:center; color:#8E8E8E; font-size:12px; font-family:'宋体'; line-height:20px;padding-bottom:20px;background:#fff;clear:both;">&copy;2011-2013九江远州国际大酒店版权所有&nbsp;&nbsp;浙ICP备&nbsp;&nbsp;10447898号<br />技术支持：风云网络</div>
</body>
</html>
