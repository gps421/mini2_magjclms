<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html> 
<head>
  <meta charset='utf-8'>
  <title>상품</title>
  
  <style type="text/css">
	.container {
	  width: 740px; height: 90%;
	  background: gray;
	  margin: 0 auto;
	}
	.header, .footer {
		width: 720px;
		height: 100px;
		border: 5px solid tomato;
		margin: 5px;
	}
	.content {
		width: 600px;
		min-height: 500px;
		border: 5px solid tomato;
		margin: 5px;
		float: left;
	}
	.side {
		width: 100px;
		min-height: 200px;
		border: 5px solid tomato;
		margin: 5px;
		float: left;
	}
	.footer { clear: both; }	
	table.t1 {
 		border: 10px solid tomato;  
		border-width: 1px 1px 1px 1px;
		margin:50px auto;
	}

	img: hover {transform: scale(1.5);}
	a: hover {transform: scale(1.5);}
		
	#x1:hover {transform: scale(1.5);}
	#x2:hover {transform: scale(1.5);}
		
	div > img:hover {
		transform: scaleX(1.5);
	}
	div > img:hover {
		transform: scaleY(1.5);
	}
	#all > img:hover {
		transform: scale(1.1);
	}
	
  </style>
</head>
<body>

  <div class="containerCartMenu"> 
    <ul class="mainLnb">
        <li><a href='list?name=snack'>스낵</a>
            <ul>
            </ul>
        </li>
        <li><a href='list?name=snack'>문구</a>
            <ul>
            </ul>
        </li>
        <li><a href='list?name=snack'>서적</a>
            <ul>
            </ul>
        </li>
        <li><a href='list?name=toy'>매직</a>
            <ul>
            </ul>
        </li>
        <li><a href='cartlist2?memberId=${memberId}'>장바구니</a>
            <ul>
            </ul>
        </li>
        <li><a href='orderlist2?memberId=${memberId}'>구매조회</a>
        </li>
    </ul>
  </div>
	
  <div  style="height:15px; margin:0 auto;"><a></a></div>
  <hr>
    	
  <h4>"${category}"</h4>
<%--     전체 ${fn:length(list)}개<br> --%>
  <hr>

	<c:set var="cnt" value="1"/>
<!-- 	page 영역의 cnt 변수의 값을 기존의 값에서 1을 증가시킨다.<br> -->
	<c:set var="cnt" value="${cnt + 1}" />
<%-- 	page 영역에 설정된 cnt 변수의 값 : ${cnt}<br> --%>
	
<div  class="shop_goods_outer1" style="padding:10px 0 0 0px; text-align:left; width:100%; margin:0 auto;">
	<c:forEach var="goods" items="${list}"> 
	
<!-- <td align=left valign=top> -->
<div  class="shop_goods_outer2" style="padding:10px 0 0 0px; text-align:left; width:20%; margin-left:50px; float: left; ">
	<div style="text-align:center;"><a href="detail?no=${goods.goodsNo}"><img src='${goods.goodsPicPath}' width=230 height=150/></a></div>
	<!-- 
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/img/danish_butter_cookies1.jpg' width=230 height=150/></a></div> 	
	-->
	<%-- console.debug("${goods.goodsNo}"); --%>
	<%-- console.debug("${goods.goodsPicPath}"); --%>
	<%-- console.debug("${goods.name}"); --%>

	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;"></div>
	<div class="shop_goods_name" style="text-align: center"><span><img src=''></span><a href='detail?no=${goods.goodsNo}'>${goods.name}</a></div>	
	<div style="clear:both; height:5px; padding:0px; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="shop_goods_info" style="padding-left:30px;">
			<div class="shop_title">판매가</div>
			<div class="shop_price"><a href="">${goods.price}</a></div>
		</div>
		<div class="shop_goods_info" style="padding-left:30px;">
			<div class="shop_title">적립금</div>
			<div class="shop_reserve">${goods.save}원</div>
		</div>    
</div>
<!-- </td> -->
<!-- 	<td width=30px></td> -->

    </c:forEach>
</div>

   <table width='80%' border='0'> 
	<tr> 
	</tr>		
 
  	<c:if test="${empty list}">
      <tr>
	    <td colspan='5'>등록된 상품이 없습니다.</td>
	  </tr>
	</c:if>
	</table>
	
	<br>
	<hr>
	<a href="writeForm">상품등록del</a>

  <!-- 상품 리스트 -->

<table cellpadding="2" cellspacing="5" class="t1" style="margin:50px auto;">
<tr><td height=50></td></tr>
<tr>
<!-- 
	<td  valign=top>
	<div style="text-align:center;"><a href="../goods/goods_view"><img src='./images/cr1.png' width=230 /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
		<div class="jnn_goods_name"><span><img src='../data/my_icon_14.gif'></span><a href="../goods/015">요거트 비스켓 100g</a></div>	
		<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info">
			<div class="jnn_title">판매가</div>
			<div class="jnn_price"><a href="../goods/goods_view.php?goodsno=1283&category=015">2,700</a></div>
		</div>
		<div class="jnn_goods_info">
			<div class="jnn_title">적립금</div>
			<div class="jnn_reserve">20원</div>
		</div>    
	</td>
 -->
	
	<td  valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/cr0.jpg' width=230 height=150/></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">요거트 비스켓 400g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px;margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div>
		<div class="jnn_price"><a href="../goods/goods_view.php?goodsno=1280&category=015">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    
	</td>
	
	
	<td width=30></td>
		
	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/danish_butter_cookies1.jpg' width=230 height=150/></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">허니 비스킷 400g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div>
		<div class="jnn_price"><a href="../goods/goods_view.php?goodsno=1280&category=015">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    
	</td>
	
	<td width=30></td>
		
	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/cr1.png' width=230  height=150 class=""  /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">토스트 비스킷 320g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div>
		<div class="jnn_price"><a href="">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    
	</td>
	
	<td width=30></td>
		
	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/choco_bar5.jpg' width=230  height=150 /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">초코 크로와상 290g</a></div>	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div><div class="jnn_price"><a href="">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    
	</td>
</tr>
	
<tr><td height=60></td></tr>
	
<tr>	
	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/cr3.jpg' width=230  height=150 class="" /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">살구잼 크로와상 290g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
	<div class="jnn_goods_info"><div class="jnn_title">판매가</div><div class="jnn_price"><a href="">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    
	</td>

	<td width=30></td>	

	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/cr5.jpg'' width=230  height=150 class="" /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">통밀 도너츠 290g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div><div class="jnn_price"><a href="">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    </td>
	<td width=30></td>	

	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/oreo1.jpg' width=230  height=150 class="" /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"><span><img src=''></span> <a href="">소이아 크래커 400g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div><div class="jnn_price"><a href="">5,300</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">50원</div></div>    </td>
	<td width=30></td>	

	<td align=left valign=top>
	<div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/dan1.jpg' width=230  height=150 class="" /></a></div>
	<div style="padding:10px 0 0 0px; text-align:left; width:230px; margin:0 auto;">
	<div class="jnn_goods_name"> <a href="">메르바 화이트&크랜베리 쿠키 200g</a></div>	
	<div style="clear:both; height:5px; padding:0; margin:0; border-bottom:1px solid #dddddd; width:230px; margin:0px auto 10px;"></div>
		<div class="jnn_goods_info"><div class="jnn_title">판매가</div><div class="jnn_price"><a href="">4,600</a></div></div>
	<div class="jnn_goods_info"><div class="jnn_title">적립금</div><div class="jnn_reserve">40원</div></div>    </td>	
</tr>

<tr><td height=60></td></tr>

<tr><td height=60></td></tr>

<tr><td height=60></td></tr>

</table>

</body>
</html>