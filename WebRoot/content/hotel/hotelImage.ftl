<#include "/content/common/meta.ftl">
<body class="big_wrap">
      
 <#include "/content/common/header.ftl">
 <div class="wrap">
  <div class="content_pre" style=" float:left; background:#fff; ">
     <div class="left_neirong" style=" float:left; width:230px; background:#e6ddd1;padding-bottom:230px;">
    <div class="up_left" style=" background:url(${base}/statics/img/66.png) no-repeat; width:230px; height:300px;">
        <div style=" text-align:center; padding:105px 0 10px 0;"><a href=""><img src="${base}/statics/img/xo1.png" /></a></div>
        <div style=" text-align:center;"><a href="" style=" font-size:18px; color:#fff;">九江远州国际酒店</a></div>
    </div><!-- up_left end end -->
         <div style="width:210px; margin:0 auto;" class="left_wrap">
            <ul class="left_top" style=" margin-top:10px;">
               <li class="list0"><a href="${base}/hotel/hotelIndex.htm?code=${code}" style=" color:#fff; font-size:14px; margin-left:30px;">酒店首页</a></li>
               <li class="list0"><a href="${base}/hotel/room.htm?code=${code}" style=" color:#fff; font-size:14px; margin-left:30px;">客房及房型</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=YHCX" style=" color:#fff; font-size:14px; margin-left:30px;">优惠促销</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=CYJYL" style=" color:#fff; font-size:14px; margin-left:30px;">餐饮及娱乐</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=HYJHD" style=" color:#fff; font-size:14px; margin-left:30px;">会议及活动</a></li>
              <#-- <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=XWZX" style=" color:#fff; font-size:14px; margin-left:30px;">新闻中心</a></li>-->
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=KHFW" style=" color:#fff; font-size:14px; margin-left:30px;">客户服务</a></li>
               <li class="list0"><a href="${base}/hotel/detail.htm?code=${code}&type=KHDP" style=" color:#fff; font-size:14px; margin-left:30px;">客户点评</a></li>
               <li class="list list0"><a href="${base}/hotel/detail.htm?code=${code}&type=JDTK&typeName=酒店外景" style=" color:#fff; font-size:14px; margin-left:30px;">酒店图库</a></li>
            </ul><!--left_top end-->
        
      </div><!--left_middle end-->
      <#--通用三图片-->
         <#include "/content/common/commonImage.ftl">
      </div><!--left_wrap end-->
     </div><!--left_neirong end-->
     <div class="right_neirong1" style=" float:right; width:770px;">
        <div style=" height:32px; line-height:32px; padding-left:15px; background:#f7f7f7;font-family:'宋体';" class="right_neirong_title">
        <a href="${base}/Index.htm" style=" color:#ab7b3e; padding-right:5px;">远洲酒店</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelFrontList.htm" style=" color:#ab7b3e; padding-right:5px;">成员酒店</a>
        <a style=" color:#ab7b3e; padding-right:5px;">></a><a href="${base}/hotel/hotelIndex.htm?code=${hotelColumn.hotelCode}" style=" color:#ab7b3e; padding-right:5px;">${hotelColumn.hotelName}</a><a style=" color:#ab7b3e; padding-right:5px;">></a><a href="#" style=" color:#ab7b3e; padding-right:5px;">酒店图库</a>
        </div><!--right_neirong_title end-->
        <div class="right_wrap1" style=" width:750px; margin:10px auto 0px auto;">
        	<#if hotelColumnArticle>
        	<input type="hidden" id="articleTitle" name="hotelColumnArticle.articleTitle" value=${hotelColumnArticle.articleTitle} />
        	</#if>
          <div class="right_middle1" style="padding-top:0px;">
                  <ul style=" float:left;" class="tab">
                  <#list pager.list as advert>
                  	<a href="${base}/hotel/detail.htm?code=${code}&type=JDTK&typeName=${advert.articleTitle}" ><li id="${advert.articleTitle}"  style=" float:left;">${advert.articleTitle}</li></a>
                    
                  </#list>
                  </ul>
                  <#if hotelColumnArticle??>
                  <div class="hide_0" style=" clear:both;">
                  <div class="hide_1 hide_2" style=" border:1px solid #d2d2d2;border-top:4px solid #a88f66;border-bottom:none; padding:10px; " >
                    <div class="mod18">
                        <span id="prev1" class="btn prev"></span>
                        <span id="next1" class="btn next"></span>
                        <span id="prevTop1" class="btn prev"></span>
                        <span id="nextTop1" class="btn next"></span>
                        <div id="picBox1" class="picBox">
                            <ul class="cf">
                            	<#if hotelColumnArticle.articleImage >
	                                <li>
	                                    <a href="#" ><img width="680" height="380" src="${base}${hotelColumnArticle.articleImage}" alt="" /></a>
	                                </li>
                                </#if>
                                <#if hotelColumnArticle.articleImage1>
	                                <li>
	                                    <a href="#"  ><img width="680" height="380" src="${base}${hotelColumnArticle.articleImage1}" alt="" /></a>
	                                </li>
                                </#if>
                                <#if hotelColumnArticle.articleImage2>
	                                <li>
	                                    <a href="#"  ><img width="680" height="380" src="${base}${hotelColumnArticle.articleImage2}" alt="" /></a>
	                                </li>
                                </#if>
                                <#if hotelColumnArticle.articleImage3>
	                                <li>
	                                    <a href="#"  ><img width="680" height="380" src="${base}${hotelColumnArticle.articleImage3}" alt="" /></a>
	                                </li>
                                </#if>
                                <#if hotelColumnArticle.articleImage4>
	                                <li>
	                                    <a href="#"  ><img width="680" height="380" src="${base}${hotelColumnArticle.articleImage4}" alt="" /></a>
	                                </li>
                                </#if>
                                </ul>
                        </div>
                        
                        <div id="listBox1" class="listBox">
                            <ul class="cf">
                            <#if hotelColumnArticle.articleImage>
                                <li class="on"><i class="arr2"></i><img width="118" height="64" src="${base}${hotelColumnArticle.articleImage}" alt="${hotelColumnArticle.articleTitle}" /></li>
                             </#if>
                              <#if hotelColumnArticle.articleImage1>
                                <li class="on"><i class="arr2"></i><img width="118" height="64" src="${base}${hotelColumnArticle.articleImage1}" alt="${hotelColumnArticle.articleTitle}" /></li>
                             </#if>
                              <#if hotelColumnArticle.articleImage2>
                                <li class="on"><i class="arr2"></i><img width="118" height="64" src="${base}${hotelColumnArticle.articleImage2}" alt="${hotelColumnArticle.articleTitle}" /></li>
                             </#if>
                              <#if hotelColumnArticle.articleImage3>
                                <li class="on"><i class="arr2"></i><img width="118" height="64" src="${base}${hotelColumnArticle.articleImage3}" alt="${hotelColumnArticle.articleTitle}" /></li>
                             </#if>
                             
                              <#if hotelColumnArticle.articleImage4>
                                <li class="on"><i class="arr2"></i><img width="118" height="64" src="${base}${hotelColumnArticle.articleImage4}" alt="${hotelColumnArticle.articleTitle}" /></li>
                             </#if>
                             
                            </ul>
                        </div>
                        
                    </div>

             </div><!--hide_1 end-->
         
  <script type="text/javascript">
(function(){
	
	function G(s){
		return document.getElementById(s);
	}
	
	function getStyle(obj, attr){
		if(obj.currentStyle){
			return obj.currentStyle[attr];
		}else{
			return getComputedStyle(obj, false)[attr];
		}
	}
	
	function Animate(obj, json){
		if(obj.timer){
			clearInterval(obj.timer);
		}
		obj.timer = setInterval(function(){
			for(var attr in json){
				var iCur = parseInt(getStyle(obj, attr));
				iCur = iCur ? iCur : 0;
				var iSpeed = (json[attr] - iCur) / 5;
				iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);
				obj.style[attr] = iCur + iSpeed + 'px';
				if(iCur == json[attr]){
					clearInterval(obj.timer);
				}
			}
		}, 30);
	}

	var oPic1 = G("picBox1");
	var oList1 = G("listBox1");	
	var oPrev1 = G("prev1");
	var oNext1 = G("next1");
	var oPrevTop1 = G("prevTop1");
	var oNextTop1 = G("nextTop1");
	var oPicLi1 = oPic1.getElementsByTagName("li");
	var oListLi1 = oList1.getElementsByTagName("li");
	var len11 = oPicLi1.length;
	var len21 = oListLi1.length;	
	var oPicUl1 = oPic1.getElementsByTagName("ul")[0];
	var oListUl1 = oList1.getElementsByTagName("ul")[0];
	var w11 = oPicLi1[0].offsetWidth;
	var w21 = oListLi1[0].offsetWidth;

	oPicUl1.style.width = w11 * len11 + "px";
	oListUl1.style.width = w21 * len21 + "px";

	var index1 = 0;
	
	var num1 = 5;
	var num21 = Math.ceil(num1 / 2);

	function Change1(){

		Animate(oPicUl1, {left: - index1 * w11});
		
		if(index1 < num21){
			Animate(oListUl1, {left: 0});
		}else if(index1 + num21 <= len21){
			Animate(oListUl1, {left: - (index1 - num21 + 1) * w21});
		}else{
			Animate(oListUl1, {left: - (len21 - num1) * w21});
		}

		for (var i = 0; i < len21; i++) {
			oListLi1[i].className = "";
			if(i == index1){
				oListLi1[i].className = "on";
			}
		}
	}
	
	oNextTop1.onclick = oNext1.onclick = function(){
		index1 ++;
		index1 = index1 == len21 ? 0 : index1;
		Change1();
	}

	oPrevTop1.onclick = oPrev1.onclick = function(){
		index1 --;
		index1 = index1 == -1 ? len21 -1 : index1;
		Change1();
	}

	for (var i = 0; i < len21; i++) {
		oListLi1[i].index = i;
		oListLi1[i].onclick = function(){
			index1 = this.index;
			Change1();
		}
	}
	
	
	var oPic2 = G("picBox2");
	var oList2 = G("listBox2");	
	var oPrev2 = G("prev2");
	var oNext2 = G("next2");
	var oPrevTop2 = G("prevTop2");
	var oNextTop2 = G("nextTop2");
	var oPicLi2 = oPic2.getElementsByTagName("li");
	var oListLi2 = oList2.getElementsByTagName("li");
	var len12 = oPicLi2.length;
	var len22 = oListLi2.length;	
	var oPicUl2 = oPic2.getElementsByTagName("ul")[0];
	var oListUl2 = oList2.getElementsByTagName("ul")[0];
	var w12 = oPicLi1[0].offsetWidth;
	var w22 = oListLi1[0].offsetWidth;

	oPicUl2.style.width = w12 * len12 + "px";
	oListUl2.style.width = w22 * len22 + "px";

	var index2 = 0;
	
	var num2 = 5;
	var num22 = Math.ceil(num2 / 2);

	function Change2(){

		Animate(oPicUl2, {left: - index2 * w12});
		
		if(index2 < num22){
			Animate(oListUl2, {left: 0});
		}else if(index2 + num22 <= len22){
			Animate(oListUl2, {left: - (index2 - num22 + 1) * w22});
		}else{
			Animate(oListUl2, {left: - (len22 - num2) * w22});
		}

		for (var i = 0; i < len22; i++) {
			oListLi2[i].className = "";
			if(i == index2){
				oListLi2[i].className = "on";
			}
		}
	}
	
	oNextTop2.onclick = oNext2.onclick = function(){
		index2 ++;
		index2 = index2 == len22 ? 0 : index2;
		Change2();
	}

	<#--oPrevTop2.onclick = oPrev2.onclick = function(){
		index2 --;
		index2 = index2 == -1 ? len22 -1 : index2;
		Change2();
	}
-->
	for (var i = 0; i < len22; i++) {
		oListLi2[i].index = i;
		oListLi2[i].onclick = function(){
			index2 = this.index;
			Change2();
		}
	}

	var oPic3 = G("picBox3");
	var oList3 = G("listBox3");	
	var oPrev3 = G("prev3");
	var oNext3 = G("next3");
	var oPrevTop3 = G("prevTop3");
	var oNextTop3 = G("nextTop3");
	var oPicLi3 = oPic3.getElementsByTagName("li");
	var oListLi3 = oList3.getElementsByTagName("li");
	var len13 = oPicLi3.length;
	var len23 = oListLi3.length;	
	var oPicUl3 = oPic3.getElementsByTagName("ul")[0];
	var oListUl3 = oList3.getElementsByTagName("ul")[0];
	var w13 = oPicLi1[0].offsetWidth;
	var w23 = oListLi1[0].offsetWidth;

	oPicUl3.style.width = w13 * len13 + "px";
	oListUl3.style.width = w23 * len23 + "px";

	var index3 = 0;
	
	var num3 = 5;
	var num23 = Math.ceil(num3 / 2);

	function Change3(){

		Animate(oPicUl3, {left: - index3 * w13});
		
		if(index3 < num23){
			Animate(oListUl3, {left: 0});
		}else if(index3 + num23 <= len23){
			Animate(oListUl3, {left: - (index3 - num23 + 1) * w23});
		}else{
			Animate(oListUl3, {left: - (len23 - num3) * w23});
		}

		for (var i = 0; i < len23; i++) {
			oListLi3[i].className = "";
			if(i == index3){
				oListLi3[i].className = "on";
			}
		}
	}
	
	oNextTop3.onclick = oNext3.onclick = function(){
		index3 ++;
		index3 = index3 == len23 ? 0 : index3;
		Change3();
	}

	oPrevTop3.onclick = oPrev3.onclick = function(){
		index3 --;
		index3 = index3 == -1 ? len23 -1 : index3;
		Change3();
	}

	for (var i = 0; i < len23; i++) {
		oListLi3[i].index = i;
		oListLi3[i].onclick = function(){
			index3 = this.index;
			Change3();
		}
	}	
	var oPic4 = G("picBox4");
	var oList4 = G("listBox4");	
	var oPrev4 = G("prev4");
	var oNext4 = G("next4");
	var oPrevTop4 = G("prevTop4");
	var oNextTop4 = G("nextTop4");
	var oPicLi4 = oPic4.getElementsByTagName("li");
	var oListLi4 = oList4.getElementsByTagName("li");
	var len14 = oPicLi4.length;
	var len24 = oListLi4.length;	
	var oPicUl4 = oPic4.getElementsByTagName("ul")[0];
	var oListUl4 = oList4.getElementsByTagName("ul")[0];
	var w14 = oPicLi1[0].offsetWidth;
	var w24 = oListLi1[0].offsetWidth;

	oPicUl4.style.width = w14 * len14 + "px";
	oListUl4.style.width = w24 * len24 + "px";

	var index4 = 0;
	
	var num4 = 5;
	var num24 = Math.ceil(num4/ 2);

	function Change4(){

		Animate(oPicUl4, {left: - index4 * w14});
		
		if(index4 < num24){
			Animate(oListUl4, {left: 0});
		}else if(index4 + num24 <= len24){
			Animate(oListUl4, {left: - (index4 - num24 + 1) * w24});
		}else{
			Animate(oListUl4, {left: - (len24 - num4) * w24});
		}

		for (var i = 0; i < len24; i++) {
			oListLi4[i].className = "";
			if(i == index4){
				oListLi4[i].className = "on";
			}
		}
	}
	
	oNextTop4.onclick = oNext4.onclick = function(){
		index4 ++;
		index4 = index4 == len24 ? 0 : index4;
		Change4();
	}

	oPrevTop4.onclick = oPrev4.onclick = function(){
		index4 --;
		index4 = index4 == -1 ? len24 -1 : index4;
		Change4();
	}

	for (var i = 0; i < len24; i++) {
		oListLi4[i].index = i;
		oListLi4[i].onclick = function(){
			index4 = this.index;
			Change4();
		}
	}	

var oPic5 = G("picBox5");
	var oList5 = G("listBox5");	
	var oPrev5 = G("prev5");
	var oNext5 = G("next5");
	var oPrevTop5 = G("prevTop5");
	var oNextTop5 = G("nextTop5");
	var oPicLi5 = oPic5.getElementsByTagName("li");
	var oListLi5 = oList5.getElementsByTagName("li");
	var len15 = oPicLi5.length;
	var len25 = oListLi5.length;	
	var oPicUl5 = oPic5.getElementsByTagName("ul")[0];
	var oListUl5 = oList5.getElementsByTagName("ul")[0];
	var w15 = oPicLi1[0].offsetWidth;
	var w25 = oListLi1[0].offsetWidth;

	oPicUl5.style.width = w15 * len15 + "px";
	oListUl5.style.width = w25 * len25 + "px";

	var index5= 0;
	
	var num5 = 5;
	var num25 = Math.ceil(num5/ 2);

	function Change5(){

		Animate(oPicUl5, {left: - index5 * w15});
		
		if(index5 < num25){
			Animate(oListUl5, {left: 0});
		}else if(index5 + num25 <= len25){
			Animate(oListUl5, {left: - (index5 - num25 + 1) * w25});
		}else{
			Animate(oListUl5, {left: - (len25 - num5) * w25});
		}

		for (var i = 0; i < len25; i++) {
			oListLi5[i].className = "";
			if(i == index5){
				oListLi5[i].className = "on";
			}
		}
	}
	
	oNextTop5.onclick = oNext5.onclick = function(){
		index5 ++;
		index5 = index5 == len25 ? 0 : index5;
		Change5();
	}

	oPrevTop5.onclick = oPrev5.onclick = function(){
		index5 --;
		index5 = index5 == -1 ? len25 -1 : index5;
		Change5();
	}

	for (var i = 0; i < len25; i++) {
		oListLi5[i].index = i;
		oListLi5[i].onclick = function(){
			index5 = this.index;
			Change5();
		}
	}	

var oPic6 = G("picBox6");
	var oList6 = G("listBox6");	
	var oPrev6 = G("prev6");
	var oNext6 = G("next6");
	var oPrevTop6 = G("prevTop6");
	var oNextTop6 = G("nextTop6");
	var oPicLi6 = oPic6.getElementsByTagName("li");
	var oListLi6 = oList6.getElementsByTagName("li");
	var len16 = oPicLi6.length;
	var len26 = oListLi6.length;	
	var oPicUl6 = oPic6.getElementsByTagName("ul")[0];
	var oListUl6 = oList6.getElementsByTagName("ul")[0];
	var w16 = oPicLi1[0].offsetWidth;
	var w26= oListLi1[0].offsetWidth;

	oPicUl6.style.width = w16 * len16 + "px";
	oListUl6.style.width = w26 * len26 + "px";

	var index6= 0;
	
	var num6 = 5;
	var num26 = Math.ceil(num6/ 2);

	function Change6(){

		Animate(oPicUl6, {left: - index6 * w16});
		
		if(index6 < num26){
			Animate(oListUl6, {left: 0});
		}else if(index6 + num26<= len26){
			Animate(oListUl6, {left: - (index6 - num26 + 1) * w26});
		}else{
			Animate(oListUl6, {left: - (len26 - num6) * w26});
		}

		for (var i = 0; i < len26; i++) {
			oListLi6[i].className = "";
			if(i == index6){
				oListLi6[i].className = "on";
			}
		}
	}
	
	oNextTop6.onclick = oNext6.onclick = function(){
		index6 ++;
		index6 = index6 == len26 ? 0 : index6;
		Change6();
	}

	oPrevTop6.onclick = oPrev6.onclick = function(){
		index6 --;
		index6 = index6 == -1 ? len26 -1 : index6;
		Change6();
	}

	for (var i = 0; i < len26; i++) {
		oListLi6[i].index = i;
		oListLi6[i].onclick = function(){
			index6 = this.index;
			Change6();
		}
	}				
})()
</script>

                   <script>
				     jQuery(function(){
						 
						 
						jQuery(".td1").click(function(){
							jQuery(this).parents(".tr1").next(".tr2").toggle()
							jQuery(this).find(".td1").css("background","url(img/down000.png) no-repeat 90% center")
							});
							
						 jQuery(".tab li").click(function(){
							 var i=jQuery(this).index();
							 jQuery(".tab li").removeClass("tab1")
							 jQuery(this).addClass("tab1")
							 jQuery(".hide_0 div.hide_2").css("display","none")
							 jQuery(".hide_0 div.hide_2").eq(i).css("display","block")
							 })
							
						 })
						 
                   </script>                 
                   
                <div style=" background:url(${base}/statics/img/bottom_bg.png) repeat-x; height:10px;"></div>
            </div><!--hide_0 end-->
            <#else>
          <div class="noRecord">没有找到任何记录!</div>
        </#if>         
        </div><!--right_middle1 end-->
       </div><!--right_wrap1 end-->
    </div><!--right_neirong1 end-->
 </div><!--content_pre1 end -->
  <script type="text/javascript">
$(function(){
	var articleTitle = document.getElementById("articleTitle").value;
	if(articleTitle=="酒店外景"){
		$("#酒店外景").addClass("tab1");
	}else if(articleTitle=="酒店大堂"){
		$("#酒店大堂").addClass("tab1");
	}else if(articleTitle=="酒店客房"){
		$("#酒店客房").addClass("tab1");
	}else if(articleTitle=="餐厅及酒廊"){
		$("#餐厅及酒廊").addClass("tab1");
	}else if(articleTitle=="会议与娱乐"){
		$("#会议与娱乐").addClass("tab1");
	}else if(articleTitle=="康乐"){
		$("#康乐").addClass("tab1");
	}
});
</script>  
  <#include "/content/common/footer.ftl">
  