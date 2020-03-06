<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
  <div class="wrap">
 <div class="content_pre" style=" float:left; background:#fff;">
  <div class="up" style=" float: left;">
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px; float: left;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.png" /></a></div>
        <div style=" text-align:center;"><a href="" style=" font-size:18px; color:#fff;">${hotelColumn.hotelName}</a></div>
    </div><!-- up_left end end -->
    <div class="up_right" style=" float:right; width:770px; height:300px;"><img src="${base}${hotelColumn.bannerImage}" width="770" height="300" /></div><!-- up_right end end -->
  </div><!-- up end end -->
 <#include "/content/common/user_center_left.ftl">
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong" style=" float:right; width:770px;">
     <input type="hidden" id="columnCode" name="hotelColumn.columnCode" value=${hotelColumn.columnCode} />
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelIndex.htm?code=${hotelColumn.hotelCode}" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.hotelName}</a> 
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="#" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.columnName}</a>
        </div><!--right_neirong_title end-->
        
        <div class="right_sty" style=" width:730px; margin:0 auto;" id="test">
			<span style="display:inline;"><div style="font-size:14px;font-weight:bold">${hotelColumnArticle.articleTitle}</div><br />
				${hotelColumnArticle.articleNoteHide}
			<br/> <br/><br/><a href="javascript:window.history.back();"  style=" color:#ab7b3e; padding-right:5px;" >返回>> </a>
          </div><!--right_sty end-->
     </div><!--right_neirong end-->
  </div><!--content_pre end -->
  <script type="text/javascript">
$(function(){
	var columnCode = document.getElementById("columnCode").value;
	if(columnCode=="YHCX"){
		$("#hotel_YHCX").addClass("list");
	}else if(columnCode=="CYJYL"){
		$("#hotel_CYJYL").addClass("list");
	}else if(columnCode=="HYJHD"){
		$("#hotel_HYJHD").addClass("list");
	}else if(columnCode=="XWZX"){
		$("#hotel_XWZX").addClass("list");
	}else if(columnCode=="KHFW"){
		$("#hotel_KHFW").addClass("list");
	}else if(columnCode=="KHDP"){
		$("#hotel_KHDP").addClass("list");
	}
});
</script>
  <#include "/content/common/footer.ftl">
  