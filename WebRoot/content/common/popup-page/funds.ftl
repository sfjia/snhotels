    <div style=" padding:10px 0 0 0px;">
    	<h3 style=" margin-bottom:20px; margin-top:10px; margin-left:20px; font-weight:normal; font-family:'宋体';"><#if hotelRoom!= null>${hotelRoom.roomName}</#if></h3>
        <p style=" width:590px; margin:0 auto;"><img width="590px;" height="290px" alt="" src="<#if hotelRoom!= null>${base}${hotelRoom.roomImage}</#if>"></p>
        <h3 style=" margin-bottom:10px; margin-top:20px;margin-left:20px; font-weight:normal; font-family:'宋体';">房型描述</h3>
        <p style=" margin-bottom:10px; margin-top:10px;margin-left:20px; font-weight:normal; font-family:'宋体'; line-height:20px;">   <#if hotelRoom!= null>${hotelRoom.roomNote}</#if>   </p>
    </div>