<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html> 
<head>
  <meta charset='utf-8'>
  <link rel="stylesheet" style="text/css" href="/css/shopmenu2.css" />
  <title>상품</title>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
        <li><a href='list?name=toy'>여행</a>
            <ul>
            </ul>
        </li>
        <li><a href='cartlist?cartNo=${cartNo}'>장바구니</a>
            <ul>
            </ul>
        </li>
        <li><a href='orderlist?memberId=${memberId}'>구매조회</a>
        </li>
    </ul>
  </div>
	
  <div  style="height:15px; margin:0 auto;"><a></a></div>
  <hr>
    
  <div  class="titleheader"><p class="title"><h1>장바구니</h1></p></div> 
  <div class="containerCartMain">
    <div class="container">
		<div class="divheader">
		<hr>
		<h3>1-1 주문상품정보</h3>
					
		<table  class="header" width='80%' border='1'> 
		  <tr><td  colspan='6' height='10px'>  장바구니내 목록 ${fn:length(cartItemList)}개</td></tr>
		  <tr>
		    <th>상품명</th>
		    <th>수량</th>
		    <th>가격</th>
		    <th>배송비정보</th>
		    <th>상품상세정보</th>
		    <th>삭제</th>
		  </tr>
		
		  <c:forEach var="cartItem" items="${cartItemList}"> 
		  <tr>
		      <td>${cartItem.goodsName}</td>
		      <td>${cartItem.goodsCount}</td>
		      <td>${cartItem.goodsSum}</td>
		      <td>${cartItem.shippingCost}</td>
			  <td><a href='detail?no=${cartItem.goodsNo}'>${cartItem.goodsName} 상세정보</a></td>
			  <td><input type="button" value="삭제" onclick="location.href='cartdelete?cartNo=${cartNo}&cartItemNo=${cartItem.cartItemNo}'"></td>      
<!-- 			  <td><input type="button" value="삭제"></td>       -->
		  </tr>
		  </c:forEach>
		 
		  <c:if test="${empty cartItemList}">
		      <tr>
			    <td colspan='6'>장바구니 내 넣은 상품이 없습니다.</td>
			  </tr>
		  </c:if>
		</table>	
				
						
		</div>
		<div class="header2" >
			<h3>1-2 결제예정 정보</h3>
<!-- 			<table border='1'> -->
			<table>
				<tr><td height=20></td></tr>
				<tr>
					<td>상품가격 :</td>
					<td>${totalPrice}원</td>
				</tr>
				<tr>
					<td>할인가격 :</td>
					<td>${dicountPrice}원</td>
				</tr>
				<tr>
					<td>배송비  :</td>
					<td>${totalShippingCost}원</td>
				</tr>
				<tr><td height=20></td></tr>

				<tr style="border: 2px solid red; ">
					<td style="font-size:2em;">결제 예정액 : </td>
					<td style="font-size:2em;">${lastPrice}원</td>
				</tr>
				<tr><td height=20></td></tr>
				<tr><td style="width=50%; height=10px;"></td></tr>
				<tr>
					<td colspan="2" >
						<form name="buy1" method="post" action=" ">
							<!-- <input type="text" name="id" /><br /> --> 
							<input type="button" value="주문결제" onclick="location.href='orderdetail?cartNo=${cartNo}'"   
							style="background:rgb(35, 227, 237); font-size:2.5em; color:rgb(11, 1, 71); margin: 0 auto; width=100%;"/>
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="footer"></div>
 
	<a href="writeForm">상품등록</a>

		
		
    </div>
  </div>
<script>
$("button").click(function(){
	location.href='cartdelete?cartNo=${cartNo}&cartItemNo=${cartItem.cartItemNo}';
})
</script>
</body>
</html>