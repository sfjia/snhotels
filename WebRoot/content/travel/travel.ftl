 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>旅游度假</title>
<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
  <div class="content_pre5" style=" float:left; background:#fff;">
    <#--左侧栏目-->
    <#include "/content/travel/travelLeftNav.ftl">
     <div class="right_neirong5" style=" float:right; width:770px;">
     <div><a href="${travelBigImage.linkeUrl}"><img src="${travelBigImage.image}" /></a></div>
        <div style=" height:28px; line-height:28px; padding-left:15px; background:#f7f7f7;" class="right_neirong_title5">
        <a href="" style=" color:#59493f; padding-right:5px; font-family:'宋体';">远洲酒店</a><a style=" color:#59493f; padding-right:5px;font-family:'宋体';">></a><a href="" style=" color:#59493f;font-family:'宋体';">旅游度假</a>
        </div><!--right_neirong_title5 end-->
        <div style="width:770px; float: left; padding:20px 0 30px 0px; ">
        	<#list travel.list as t>
           <dl style=" width:228px; border:1px solid #cccccc; float: left;margin-left:20px; margin-bottom:20px;">
              <dd style="width:200px; margin:15px auto 0 auto;"><img src="${t.imageDigest}" style="width:200px; height:200px;"/></dd>
              <dd style="width:200px; margin:5px auto 0 auto; line-height:20px;height:40px;"><a href="${base}/travelContent.htm?travelArticle.id=${t.id}" style=" color:#ab7b3e; font-family:'宋体';">${t.titleCn}</a></dd>
              <dd style="width:200px; margin:5px auto 10px auto;"><a style=" color:#bb4343; font-size:22px; font-weight:bold; margin-right:38px;font-family:'宋体';">￥${t.price}</a><a href="${base}/travelContent.htm?travelArticle.id=${t.id}"><input type="button" value="查看详情" style=" background:url(${base}/statics/img/btn.png) no-repeat 1px 0; width:69px; height:27px; line-height:27px; color:#fff;border:0 none; text-align:center; cursor:pointer;" /></a></dd>
           </dl>
           </#list>
           
        </div>
     </div><!--right_neirong5 end-->
  </div><!--content_pre5 end -->
    <#include "/content/common/footer.ftl">