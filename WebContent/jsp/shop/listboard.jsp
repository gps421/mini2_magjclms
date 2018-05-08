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
        <li><a href='cartlist?memberId=${memberId}'>장바구니</a>
            <ul>
            </ul>
        </li>
        <li><a href='orderlist?memberId=${memberId}'>구매조회</a>
        </li>
    </ul>
  </div>  	
  <div style="height:15px; margin:0 auto;"><a></a></div>
  <hr>



  <div style="height:45px; margin:0 auto;"><a></a></div>
  	
  	<table class="shop_goods_outer1" style="padding:10px 0 0 0px; text-align:left; width:860px; margin:0 auto;">
  		<tr>
  			<td><div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/shoppic.jpg' width=430 height=400/></a></div>
  			</td>
  			<td><div style="text-align:center;"><a href=""><img src='/mini2_magiclms/jsp/shop/images/freeship.jpg' width=430 height=400/></a></div>
  			</td>
  		</tr>
  	</table>
	<br>
	<br>
	
	<h2 style="text-align: center; text-decoration: line-height; text-shadow:green ;">즐거운 쇼핑되세요!!</h2>
	
	<hr>	


</body>
</html>