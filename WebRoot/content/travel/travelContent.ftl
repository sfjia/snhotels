  <#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
  <div class="content_pre5" style=" float:left; background:#fff;">
    <#--左侧栏目-->
    <#include "/content/travel/travelLeftNav.ftl">
       <div class="right_neirong1" style=" float:right; width:770px;">
       <#--导航-->
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#ededed;" class="right_neirong_title1">
        <a href="${base}/index.htm" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a>
        <a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="${base}/travel.htm" style=" color:#59493f;font-family:'宋体';">旅游度假</a>
        </a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a  style=" color:#59493f;font-family:'宋体';">${travelArticle.titleCn}</a>
        </div><!--right_neirong_title1 end-->
        <div style=" width:730px; margin:20px auto;">
          <ul style="width:728px; border:1px solid #cccccc; float: left;">
           <li style=" float: left; margin:10px 25px 10px 10px;"><a href=""><img src="${travelArticle.imageContent}" style="width:240px; height:240px;" /></a></li>
           <li style=" float: left; width:440px; padding-top:10px;">
              <ul>
                <li style=" color:#80501b; font-size:18px; margin-bottom:5px;">${travelArticle.titleCn}</li>
                <li style="margin-bottom:10px;"><span style=" margin-right:20px;color:#666666; font-family:'宋体';">价格：</span><a style=" color:#bb4343; font-size:26px; font-weight:bold;font-family:'宋体';">￥${travelArticle.price}</a></li>
                <li style="color:#666666; font-family:'宋体'; margin-bottom:10px;">有效期：&nbsp;&nbsp;${(travelArticle.beginDatetime?string("yyyy年MM月dd日"))!}-${(travelArticle.endDatetime?string("yyyy年MM月dd日"))!}</li>
                <li style="color:#666666; font-family:'宋体';margin-bottom:10px;">预约电话：${travelArticle.bookTell}（预约时间：07:00-23:00）</li>
                <li style="color:#666666; font-family:'宋体';margin-bottom:20px;">地址：&nbsp;&nbsp;&nbsp;&nbsp;${travelArticle.address}</li>
                <#if user == null>
              	  	<a  id="remind" style=" color:#fff; font-size:18px; text-align:center; display:inline-block; width:130px; height:40px; line-height:40px; background:#e60012;">立即预订</a>
               <#else>
                	<a  href="${travelArticle.linkeUrl}"  target="_blank"  style=" color:#fff; font-size:18px; text-align:center; display:inline-block; width:130px; height:40px; line-height:40px; background:#e60012;">立即预订</a> 
               </#if>
                </li>
              </ul>
           </li>
        </ul>
        <div style=" clear:both; background:url(${base}/statics/img/bottom.png) no-repeat 0 -4px; height:16px;"></div>
        	${travelArticle.contentCn}
        	<br/><br/>
        	 <a href="${base}/travel.htm"  style=" color:#ab7b3e; padding-right:5px;">返回>></a>
        </div>
     </div><!--right_neirong1 end-->
  </div><!--content_pre1 end -->
    <#include "/content/common/footer.ftl">