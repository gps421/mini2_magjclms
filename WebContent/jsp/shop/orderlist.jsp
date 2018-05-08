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
        <li><a href='list?name=toy'>마술</a>
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
    	
    <div  class="titleheaderOrderDetail"><p class="title"><h1>구매내역조회</h1></p></div> 
    <div class="containerOrderDetail">
		<div class="headerOrderDetail">
		<h3>1-1구매상품내역정보</h3>

<!-- 		<table  class="headerOrderDetail" style="margin-right:120px; border:2px">  -->
		<table  class="headerOrderDetail" style="margin: 0 auto; border:10px"> 
		  <tr><td colspan='6'></td><td colspan='1'  style="text-align: right: ; height:50px; margin: 10px "> 총 구매목록  ${fn:length(orderItemList)}개</td></tr>
		  <tr>
		    <th style="text-align: center;">상품명</th>
		    <th style="text-align: center;">수량</th>
		    <th style="text-align: center;">가격</th>
		    <th style="text-align: center;">배송비정보</th>
		    <th style="text-align: center;">상품상세정보</th>
		    <th style="text-align: center;">배송상태</th>
		    <th style="text-align: center;">주문일자</th>
		  </tr>
		
		  <c:forEach var="cartItem" items="${orderItemList}"> 
		  <tr>
		      <td>${cartItem.goodsName}</td>
		      <td>${cartItem.goodsCount}</td>
		      <td>${cartItem.goodsSum}</td>
		      <td>${cartItem.shippingCost}</td>
			  <td><a href='detail?no=${cartItem.goodsNo}'>${cartItem.goodsName}</a></td>		      
		      <td>${cartItem.orderState}</td>
		      <td><fmt:formatDate value="${cartItem.orderDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		      
		  </tr>
		  </c:forEach>
		 
		  <c:if test="${empty cartItemList}">
		      <tr>
			    <td colspan='7' style="font-style: italic; font-size: 1em; font-weight:2px; ">구매내역 조회완료하였습니다. 감사합니다.</td>
			  </tr>
		  </c:if>
		</table>	


		</div>
		
		<div class="header2OrderList">

			<table>
				<tr>
					<td colspan="2" >
						<form name="buy1" method="post" action=" ">
							<!-- <input type="text" name="id" /><br /> --> 
							<input type="button" value="메인화면" onclick="location.href='list?name=snack'"   
							style="background:rgb(35, 227, 237); font-size:1.5em; color:rgb(11, 1, 71); margin: 0 auto; width=100%;"/>							
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		
<!-- 		<div class="footerOrderDetail"></div> -->
    </div>
   
</body>
</html>