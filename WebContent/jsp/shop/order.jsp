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
	.containerOrderDetail {
		width: 740px; 
		margin: 0 auto;
		background: rgb(237, 228, 177);
	}
	.titleheaderOrderDetail {
		width: 740px;
		height: 55px;
		border: 1px  tomato;
		margin: 0 auto;
		font-size: 1em;
		background: rgb(232, 134, 48); 
	}
	
	.divheaderOrderDetail {
		width: 720px;
		min-height: 500px;
		margin: 1px;
		float: right;
	}
	.headerOrderDetail {
		width: 355px;
		height: 300px;
		border: 5px solid blue;
		margin: 5px;
		float: right;
	}	
	.header2OrderDetail {
		width: 355px;
		height: 300px;
		border: 5px solid blue;
		margin: 5px;
		float: right;
	}
	
	.contentOrderDetail {
		width: 600px;
		min-height: 500px;
		border: 5px solid tomato;
		
		margin-left: 15px;
		float: left;
	}
	
	.sideOrderDetail {
		width: 100px;
		min-height: 200px;
		border: 5px solid tomato;
		margin: 5px;
		float: left;
	}
	.footerOrderDetail {
		width: 730px;
		border: 1px solid tomato;
		margin: 5px;
	}
	.footerOrderDetail { clear: both; }
	
	table.headerOrderDetail {
		width: 80%; 
		margin: 0 auto;
	}
	table.headerOrderDetail  th {
		height: 40px;
		background: #B3D4F5;
		color: #444B52;
		letter-spacing: 2px;
		border: 1px solid blue;
	}
	
	table.headerOrderDetail  td {
		padding-left: 2px;
		height: 60px;
		text-align: center;
	}
	
</style>
</head>
<body>

    <div  class="titleheaderOrderDetail"><p class="title"><h1>주문결제</h1></p></div> 
    <div class="containerOrderDetail">
		<div class="headerOrderDetail">
		<h3>1-1 주문상품정보</h3>

<!-- 		<table  class="headerOrderDetail" style="margin-right:120px; border:2px">  -->
		<table  class="headerOrderDetail" style="margin:auto; border:2px"> 
		  <tr><td  colspan='6' height='10px'>  구매예정 목록  ${fn:length(cartItemList)}개</td></tr>
		  <tr>
		    <th>상품명</th>
		    <th>수량</th>
		    <th>가격</th>
		    <th>배송비정보</th>
		    <th>상품상세정보</th>
		  </tr>
		
		  <c:forEach var="cartItem" items="${cartItemList}"> 
		  <tr>
		      <td>${cartItem.goodsName}</td>
		      <td>${cartItem.goodsCount}</td>
		      <td>${cartItem.goodsSum}</td>
		      <td>${cartItem.shippingCost}</td>
			  <td><a href='detail?no=${cartItem.goodsNo}'>${cartItem.goodsName}</a></td>		      
		  </tr>
		  </c:forEach>
		 
		  <c:if test="${empty cartItemList}">
		      <tr>
			    <td colspan='6'>장바구니 내 넣은 상품이 없습니다.</td>
			  </tr>
		  </c:if>
		</table>	


		</div>
		
		<div class="header2OrderDetail">
			<h3>1-2 최종결제 정보</h3>
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

				<tr>
					<td style="font-size:2em;">결제 예정액</td>
					<td style="font-size:2em;">${lastPrice}원</td>
				</tr>
				<tr><td height=20></td></tr>
				<tr><td style="width=50%; height=10px;"></td></tr>
				<tr>
					<td colspan="2" >
						<form name="buy1" method="post" action=" ">
							<!-- <input type="text" name="id" /><br /> --> 
							<input type="button" value="구매하기" onclick="location.href='orderwrite?cartNo=${cartNo}'"   
							style="background:rgb(35, 227, 237); font-size:2.5em; color:rgb(11, 1, 71); margin: 0 auto; width=100%;"/>
							
							<input type="button" value="이건아님" style="background:rgb(35, 227, 237); font-size:2.5em; color:rgb(11, 1, 71); margin: 0 auto; width=100%;"/>
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="contentOrderDetail">
			<h3>2-1 배송지 주소</h3>

			<table>
				<tr>
					<td height=20><h4>배송지 입력</h4></td>
				</tr>
					
				<tr>
					<td height=20>
					<form method='post' action='write'>
						이름 : <input type='text' name='writer' size='30' /><br><br> 
						주소 :
						<input type='text' name='title' size='70' /><br><br> 
						요청사항 :
						<textarea name='content' rows='7' cols='60'></textarea><br>
						<br>
						<button type='submit'
							style="background: rgb(35, 227, 237); font-size: 1em; color: rgb(11, 1, 71); margin: 0 auto;">주소등록</button>
					</form>
					</td>
				</tr>
				<tr>
					<td height=20></td>
				</tr>

			</table>
		</div>
		
		<div class="sideOrderDetail">
			<h3> 결제수단 선택</h3>
			<table>
				<tr>
					<td height=20></td>
				</tr>
				<tr>
					<td>
						<ul>
							<li><a href="#">신용/체크카드</a></li>
							<li><a href="#">현금결제</a></li>
							<li><a href="#">간편결제</a></li>
							<li><a href="#">휴대폰결제</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="footerOrderDetail"></div>
    </div>
   
</body>
</html>