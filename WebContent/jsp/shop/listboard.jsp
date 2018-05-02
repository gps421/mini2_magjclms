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
	
  <h2>상품목록</h2>
    전체 ${fn:length(list)}개<br>
  <hr>
  <table width='80%' border='1'> 
  <tr>
    <th>상품번호</th>
    <th>상품명</th>
    <th>가격</th>
    <th>카테고리</th>
    <th>설명문</th>
  </tr>

    <c:forEach var="goods" items="${list}"> 
    <tr>
      <td>${goods.goodsNo}</td>
	  <td><a href='detail?no=${goods.goodsNo}'>${goods.name}</a></td>
      <td>${goods.price}</td>
      <td>${goods.category}</td>
      <td>${goods.description}</td>
      
	</tr>
    </c:forEach>
 
  	<c:if test="${empty list}">
      <tr>
	    <td colspan='5'>등록된 상품이 없습니다.</td>
	  </tr>
	</c:if>
	</table>
	<a href="writeForm">상품등록</a>


</body>
</html>