<#include "/content/common/meta.ftl">

<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap"> 
	<script src="http://api.map.baidu.com/api?v=1.1&services=true"></script>
	<script src="${base}/statics/js/queryOdery.js"></script>
	

<script type="text/javascript">  
function subForm(fn,m,a){
	if(m < 5){
		alert("该房型暂时无法预定");
		return;
	}
	if(a < 1){
		alert("该房型已满房无法预定");
		return;
	}
	fn.submit();
}
var map = new BMap.Map("allmap");
var point = new BMap.Point(121.337169,31.244682);
map.centerAndZoom(point,15);
map.enableScrollWheelZoom();

</script>   

  <div class="content_pre" style=" float:left; background:#fff; padding-bottom:20px;">
     <div class="left_neirong" style=" float:left; width:230px; background-color:#e6ddd1; padding-bottom:680px;">
      <#include "/content/common/search_hotel_book.ftl">
         <div style="width:210px; margin:0 auto;" class="left_wrap">
         
      <#--通用三图片-->
          <#include "/content/common/commonImage.ftl">
      
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong1" style=" float:right; width:770px;">
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title1">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">客房预订</a>
        </div><!--right_neirong_title1 end-->
        <div class="right_neirong_buzhou1"><img src="${base}/statics/img/one.png" /></div><!--right_neirong_buzhou1 end-->
        <div class="right_wrap1" style=" width:730px; margin:10px auto 0px auto;">
          <div class="right_top1" style=" float:left; width:730px;">
             <ul class="right_top_left1" style=" float:right; width:410px;">
                <li style=" margin-bottom:10px;"><span style=" color:#81511c; font-size:24px; margin-right:15px;">${hotel.name}</span>
                <span style=" margin-right:25px; display:inline-block; height:25px;*height:15px;">
                <#list 1..hotel.starNb as s>
                	<img src="${base}/statics/img/xx.gif" style=" vertical-align:middle;"/>
                </#list>
                </span>
                </li>
                <li style=" margin-bottom:15px;">
                    <ul style=" border:1px solid #c2a06b; padding-left:20px; padding-top:5px;">
                    <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">地址：${hotel.address}</span></li>
                    <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">邮编：${hotel.postCode}</span></li>
                    <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体'; margin-right:25px;">电话：${hotel.telPhone}</span><span style="color:#666666; font-family:'宋体';">传真：${hotel.faxPhone}</span></li>
                    <li style=" margin-bottom:10px;"><span style="color:#666666; font-family:'宋体';">电子邮件：${hotel.email}</span></li>
                    </ul>
                </li>
                    <li>
                       <p style=" line-height:25px; font-family:'宋体'; color:#1f0d03; text-indent:25px;"><#if hotel.notext != null>${hotel.notext.substring(0,180)}...</#if><a href="${base}/hotel/hotelIndex.htm?code=${hotel.code}" style=" color:#ab7b3e; float:right;">进入酒店首页</a></p>
                    </li>
            </ul><!--right_top_left end-->
            <div class="right_top_right1" style="float:left; width:290px; background:#e6ddd1; padding:5px;">
              <img src="${base}${hotel.miniImage}" width="290" height="290" />
            </div><!--right_top_right1 end-->
          </div><!--right_top1 end-->
          <div class="right_middle1" style="clear:both; padding-top:30px;">
                  <ul style=" float:left;" class="tab">
                     <li class="tab2 tab3" style=" float:left;">客户及房价</li>
                     <li class="tab2" style=" float:left;">客户点评</li>
                     <li class="tab2" style=" float:left;">酒店地图</li>
                  </ul>
                  <ul style="float:right; margin-top:10px;">
                     <li style="color:#80501b; font-family:'宋体'; float:left;font-size:14px; height:25px; line-height:25px; font-weight:bold; margin-right:10px;"><a>入住时间：${arrivalDate}</a></li>
                     <li style="color:#80501b; font-family:'宋体'; float:left;font-size:14px;  height:25px; line-height:25px; font-weight:bold;margin-right:10px;"><a>退房时间：${leaveDate}</a></li>
                   </ul>               <div class="hide_0" style=" clear:both;">
                  <div class="hide_1 hide_2" >
                   <table width="100%" cellpadding="0" cellspacing="0">
                      <thead bgcolor="#a88f66">
                         <tr height="30">
                            <td style=" color:#fff; font-family:'宋体'; padding-left:30px;" width="100">房型</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">散客价</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">会员价</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">床型</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">早餐</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">宽带</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">预定房数</td>
                            <td style=" color:#fff; font-family:'宋体';" align="center">  </td>
                         </tr>
                      </thead>
                      <tbody>
                      <#list queryRoomtypeListRespList as room>
                      	<form action="bookIndex.htm" method="post" name="booking${room_index}">
                      	<input type="hidden" name="roomtypecode" value="${room.roomtypecode}"/>
                      	<input type="hidden" name="hotelCode" value="${hotelCode}"/>
                      	<input type="hidden" name="hotelName" value="${hotel.name}"/>
                      	<input type="hidden" name="arrivalDate" value="${arrivalDate}"/>
                      	<input type="hidden" name="leaveDate" value="${leaveDate}"/>
                      	<input type="hidden" name="cityCode" value="${cityCode}"/>
                            <#if memberType == 2>
                      	<input type="hidden" name="actualprice" value="${room.listingprice}"/>
                            </#if>
                            <#if memberType == 1>
                      	<input type="hidden" name="actualprice" value="${room.actualprice}"/>
                            </#if>
                      	<input type="hidden" name="roomtypename" value="${room.roomtypename}"/>
                      	<input type="hidden" name="memberType" value="${memberType}"/>
                      		<#assign tempMax = 0>
                            <#list hotelRoomList as hotelRoom>
	                            <#if hotelRoom.roomCode == room.roomtypecode>
                      				<#if room.availableroom?number gt hotelRoom.maxBook>
                      					<#assign tempMax = hotelRoom.maxBook>
                      				<#else>
                      					<#assign tempMax = room.availableroom>
                      				</#if>
	                               <#if tempMax?number gt 5>
	                               		<#assign max = 5>
	                               <#else>
	                               		<#assign max = tempMax?number>
	                               </#if>
	                               <#break>
                      			<#else>
                      				<#if room.availableroom?number gt 5>
                               			<#assign max = 5>
                              		<#else>
                               			<#assign max = room.availableroom?number>
                               		</#if>
                               		 <#break>
	                            </#if>
                            </#list>
                      	<input type="hidden" name="max" value="${max}"/>
                            <#list hotelRoomList as hotelRoom>
	                            <#if hotelRoom.roomCode == room.roomtypecode>
                      				<input type="hidden" name="hotelRoom.id" value="${hotelRoom.id}"/>
	                            	<#break>
	                            </#if>
                            </#list>
                      	
                         <tr height="60" class="tr1">
                            <td style=" padding-left:20px; border-bottom:1px dashed #ccc; color:#000; font-family:'宋体';  background:url(${base}/statics/img/right000.png) no-repeat 90% center;>" class="td1"><a style="color:#ab7b3e; font-family:'宋体';" class="funds" onclick="showRoomMsg('${room.roomtypecode}','${hotel.code}');" >${room.roomtypename}&nbsp;<img src="${base}/statics/img/ic_pic.gif" /></a></td>

                            <td style=" color:#000; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">￥${room.listingprice}.00</td>
                            <td style=" color:red; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">￥${room.actualprice}.00</td>
                            <td style=" color:#000; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">
                            <#list hotelRoomList as hotelRoom>
	                            <#if hotelRoom.roomCode == room.roomtypecode>
	                            	${hotelRoom.roomBedType}
	                            	<#break>
	                            </#if>
                            </#list>
                            </td>
                            <td style=" color:#000; font-family:'宋体'; border-bottom:1px dashed #ccc;" align="center">
                            <#list hotelRoomList as hotelRoom>
	                            <#if hotelRoom.roomCode == room.roomtypecode>
	                            	<#if hotelRoom.roomBreakfast == 0>无</#if>
	                            	<#if hotelRoom.roomBreakfast == 1>单早</#if>
	                            	<#if hotelRoom.roomBreakfast == 2>双早</#if>
	                            	<#break>
	                            </#if>
                            </#list>
                            </td>
                            <td style=" color:#000; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">
                            <#list hotelRoomList as hotelRoom>
	                            <#if hotelRoom.roomCode == room.roomtypecode>
	                            	<#if hotelRoom.roomFreeNet == 1>有<#else>无</#if>
	                            	<#break>
	                            </#if>
                            </#list>
                            </td>
                            <td style=" color:#000; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">
                               <select style=" border:1px solid #8f9094; padding:2px;" name="bookAmount">
                               		<#if max gt 0>
									<#list 1 .. max as a>
										<option value="${a}">${a}</option>
									</#list>
									<#else>
										<option value="0">0</option>
									</#if>                               	
                               </select>
                            </td>
                            <td style=" color:red; font:12px \5fae\8f6f\96c5\9ed1,\9ed1\4f53; border-bottom:1px dashed #ccc;" align="center">
                            <#if max == 0>已满房
                            <#else>
                            <input type="button" 
                            
                            value="预定" name="btn${room_index}" id="bookBtn${room_index}" onclick="subForm(this.form,'<#list hotelRoomList as hotelRoom><#if hotelRoom.roomCode == room.roomtypecode>${hotelRoom.maxBook}<#break></#if></#list>','${max}');" style="background:url(${base}/statics/img/btn.png) no-repeat; width:64px; height:22px; line-height:21px; text-align:center; color:#fff; border:0 none;" />
                            </#if></td>
                         </tr>
                      </form>
                      </#list>
                      </tbody>
                   </table>
          <div class="right_down" style=" float: left; width:740px; margin-top:10px; margin-bottom:0px; background:url(${base}/statics/img/tishi.png) no-repeat 0 1px; padding-left:20px; color:#666666;">
               为保证服务质量，每次预定请勿超过5间客房。如有不便，敬请谅解！
            </div><!--right_down1 end-->
              </div><!--hide_1 end-->
              <div class="hide_2" style=" border-top:4px solid #a88f66;">
           <div style="float:left; width:695px;padding-left:35px; background:#fffeee;">
           <#assign kftPoint = 0>
           <#assign cytPoint = 0>
           <#assign fwtPoint = 0>
           <#assign kltPoint = 0>
           <#assign size = 0>
           <#list hotelRemarkList as remark>
           	 <#assign kftPoint = kftPoint + remark.kfPoint>
           	 <#assign cytPoint = cytPoint + remark.klPoint>
           	 <#assign fwtPoint = fwtPoint + remark.fwPoint>
           	 <#assign kltPoint = kltPoint + remark.klPoint>
           </#list>
           <#if hotelRemarkList.size() == 0>
           	<#assign size = 1>
           <#else>
           	<#assign size = hotelRemarkList.size()>
           </#if>
           
              <ul>
                <li style=" font-family:'宋体'; color:#80501b; padding-top:10px;">客户总评：&nbsp;&nbsp;<a style=" font-size:24px;">${(kftPoint + cytPoint + fwtPoint + kltPoint)/size}</a>分&nbsp;&nbsp;&nbsp;(共${hotelRemarkList.size()}条点评)</li>
                <li style=" font-family:'宋体'; color:#80501b; padding-top:10px; padding-bottom:15px;">
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">客房：</a><span> </span><a style=" vertical-align:middle;">${kftPoint}</a></span>
                
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">餐饮：</a><span> </span><a style=" vertical-align:middle;">${cytPoint}</a></span>
                
                <span style=" margin-right:25px;"><a style=" vertical-align:middle;">康乐：</a><span> </span><a style=" vertical-align:middle;">${kltPoint}</a></span>
                
                <span><a style=" vertical-align:middle;">服务：</a><span> </span><a style=" vertical-align:middle;">${fwtPoint}</a></span></li>
              </ul>
           </div>
        <div style="float:left; width:730px; background:url(${base}/statics/img/77.png) no-repeat;">
        <#list hotelRemarkList as remark>
           <div style="float:left; width:695px;padding-left:35px; margin-top:15px;">
             <ul style=" float:left; padding-top:10px;">
                <li style=" margin-bottom:5px;">${remark.webusername}</li>
                <li style="  color:#666666;">${remark.reviewDate?string("yyyy-MM-dd")}</li>
             </ul>
             <ul style=" float:right; width:620px; height:64px; <#if remark_index%2 == 0>background:url(${base}/statics/img/999.png)<#else>background:url(${base}/statics/img/9999.png)</#if> no-repeat; margin-right:0px;">
                <li style=" font-family:'宋体'; color:#666666; padding-left:35px; padding-top:5px;">
                <span style=" margin-right:15px;"><a style=" vertical-align:middle;">总评：</a><span></span>&nbsp;<a style=" vertical-align:middle;">${(remark.kfPoint?number + remark.cyPoing?number + remark.fwPoint?number + remark.klPoint?number)/4}</a></span><span style=" margin-right:15px;">客房：${remark.kfPoint}</span><span style=" margin-right:15px;">餐饮：${remark.cyPoing}</span><span style=" margin-right:15px;">服务：${remark.fwPoint}</span><span style=" margin-right:75px;">康乐：${remark.klPoint}</span><span>高级大床房</span>
                </li>
                <li style=" color:#80501b; font-family:'宋体';padding-left:35px;padding-top:10px;">${remark.roomRemark}</li>
             </ul>
           </div><!-- 1end-->
           </#list>
           
           </div>
           
                </div><!--hide_2 end-->
              <div id="allmap" class="hide_2" style=" border-top:4px solid #a88f66;">
              	<input type="hidden" id="hotel_mapLat" value="${hotel.mapLat }" />
				<input type="hidden" id="hotel_mapLong" value="${hotel.mapLong }" />
				
				<!-- 百度地图 -->
				<div style="width:690px;height:450px;border:1px solid gray" id="container"></div>

                <script type="text/javascript">

		var mapLong = $("#hotel_mapLong").val();
		if (mapLong == '') mapLong = '120.168595';
		var mapLat = $("#hotel_mapLat").val();
		if (mapLat == '') mapLat = '30.275495';
		
		var map = new BMap.Map("container");
		
		map.enableScrollWheelZoom();                  // 启用滚轮放大缩小。  
		map.enableKeyboard();                         // 启用键盘操作。  
		//var opts = {anchor: BMAP_ANCHOR_TOP_RIGHT, offset: new BMap.Size(10, 10)};  
		map.addControl(new BMap.NavigationControl());           //添加鱼骨控件  
		map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件  
		map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件  
		
		//var point = new BMap.Point(120.160851, 30.18491);
		var point = new BMap.Point(mapLong, mapLat);
		map.centerAndZoom(point, 15);
		var marker = new BMap.Marker(point);
		map.addOverlay(marker);
		</script>              </div><!--hide_2 end-->
              </div><!--hide_0 end-->
          </div><!--right_middle1 end-->
        </div><!--right_wrap1 end-->
     </div><!--right_neirong1 end-->
  </div><!--content_pre1 end -->
   <script>
				     jQuery(function(){
						 
						 
						jQuery(".td1").click(function(){
							jQuery(this).parents(".tr1").next(".tr2").toggle()
							jQuery(this).find(".td1").css("background","url(img/down000.png) no-repeat 90% center")
							});
							
						 jQuery("li.tab2").click(function(){
							 var i=jQuery(this).index();
							 jQuery("li.tab2").removeClass("tab3")
							 jQuery(this).addClass("tab3")
							 jQuery(".hide_0 div.hide_2").css("display","none")
							 jQuery(".hide_0 div.hide_2").eq(i).css("display","block")
							 })
							
						 })
						 
                   </script>
  
<#include "/content/common/footer.ftl">