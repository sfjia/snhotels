<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
<script src="http://api.map.baidu.com/api?v=1.1&services=true"></script>
  <div class="content_pre" style=" float:left; background:#fff; padding-bottom:150px;">
     <div class="left_neirong" style=" float:left; width:230px; background:#e6ddd1;">
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.png" /></a></div>
        <div style=" text-align:center;"><a href="" style=" font-size:18px; color:#fff;">${hotel.name}</a></div>
    </div><!-- up_left end end -->
         <div style="width:210px; margin:0 auto;" class="left_wrap">
            <ul class="left_top" style=" margin-top:10px;">
               <li class="list list0"><a href="${base}/hotel/hotelIndex.htm?code=${code}" style=" color:#fff; font-size:14px; margin-left:30px;">酒店首页</a></li>
               <li class="list0"><a href="${base}/hotel/room.htm?code=${code}" style=" color:#fff; font-size:14px; margin-left:30px;">客房及房型</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=YHCX" style=" color:#fff; font-size:14px; margin-left:30px;">优惠促销</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=CYJYL" style=" color:#fff; font-size:14px; margin-left:30px;">餐饮及娱乐</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=HYJHD" style=" color:#fff; font-size:14px; margin-left:30px;">会议及活动</a></li>
            <#--   <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=XWZX" style=" color:#fff; font-size:14px; margin-left:30px;">新闻中心</a></li>-->
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=KHFW" style=" color:#fff; font-size:14px; margin-left:30px;">客户服务</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=KHDP" style=" color:#fff; font-size:14px; margin-left:30px;">客户点评</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=JDTK&typeName=酒店外景" style=" color:#fff; font-size:14px; margin-left:30px;">酒店图库</a></li>
            </ul><!--left_top end-->
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong1" style=" float:right; width:770px;">
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelIndex.htm?code=${hotel.code}" style=" color:#ab7b3e; padding-right:5px;">${hotel.name}</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="#" style=" color:#ab7b3e; padding-right:5px;">酒店地图</a>
        </div><!--right_neirong_title end-->
        <div class="right_wrap1" style=" width:750px; margin:10px auto 0px auto;">
           
           <ul style=" padding-top:0px;">
            <li style=" margin-bottom:10px;"><span style=" color:#81511c; font-size:18px; margin-right:15px;"><a href="${base}/hotel/hotelIndex.htm?code=${hotel.code}">${hotel.name}</a></span>
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体';">地址：${hotel.address}</span></li>
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体'; margin-right:25px;">电话：${hotel.telPhone}</span></li>
                 <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体'; margin-right:25px;">传真：${hotel.faxPhone}</span></li>
                <li style=" margin-bottom:5px;"><span style="color:#666666; font-family:'宋体';">邮编：${hotel.postCode}</span></li>
                 
              </ul>
               <div class="hide_0" style=" clear:both;">
              	<input type="hidden" id="hotel_mapLat" value="${hotel.mapLat }" />
				<input type="hidden" id="hotel_mapLong" value="${hotel.mapLong }" />
				
				<!-- 百度地图 -->
				<div style="width:690px;height:450px;border:1px solid gray" id="container"></div>

                <script type="text/javascript">

		var mapLong = $("#hotel_mapLong").val();
		if (mapLong == '') mapLong = '116.005039';
		var mapLat = $("#hotel_mapLat").val();
		if (mapLat == '') mapLat = '29.721932';
		
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
		</script>
                   
                <div style=" background:url(${base}/statics/img/bottom_bg.png) repeat-x; height:10px;"></div>
            </div><!--hide_0 end-->
       </div><!--right_wrap1 end-->
    </div><!--right_neirong1 end-->
 </div><!--content_pre1 end -->  
  <#include "/content/common/footer.ftl">
  