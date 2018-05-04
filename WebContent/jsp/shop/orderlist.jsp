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
		border: 2px solid orange;
		margin: 20px;
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
		<table  class="headerOrderDetail" style="margin: 0 auto; border:10px"> 
		  <tr><td  colspan='6' height='10px'>  구매목록  ${fn:length(orderItemList)}개</td></tr>
		  <tr>
		    <th>상품명</th>
		    <th>수량</th>
		    <th>가격</th>
		    <th>배송비정보</th>
		    <th>상품상세정보</th>
		    <th>배송상태</th>
		    <th>주문일자</th>
		  </tr>
		
		  <c:forEach var="cartItem" items="${orderItemList}"> 
		  <tr>
		      <td>${cartItem.goodsName}</td>
		      <td>${cartItem.goodsCount}</td>
		      <td>${cartItem.goodsSum}</td>
		      <td>${cartItem.shippingCost}</td>
			  <td><a href='detail?no=${cartItem.goodsNo}'>${cartItem.goodsName}</a></td>		      
		      <td>${cartItem.orderState}</td>
		      <td>${cartItem.orderDate}</td>
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
							<input type="button" value="메인화면으로?" onclick="location.href='list?name=snack'"   
							style="background:rgb(35, 227, 237); font-size:1.5em; color:rgb(11, 1, 71); margin: 0 auto; width=100%;"/>							
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		
		<div class="footerOrderDetail"></div>
    </div>
   
</body>
</html>