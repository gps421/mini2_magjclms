<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th {
		padding-left: 100px;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<h2>과제 목록</h2>
	전체 ${fn:length(asgmtList)}개
	<br>
	<!-- asgmtList : 가제 -->
	<hr>
	<table class="table">
		<tr>
			<th>과제번호</th>
			<th>과제이름</th>
			<th>과제작성자(교수)</th>
			<th>과제등록일</th>
			<th>  </th>
			<th>과제마감기한</th>
			<th>  </th>
			<th>과제조회수</th>
		</tr>
		<c:forEach var="asgmt" items="${asgmtList}">
		<tr>
			<td>${asgmt.asgmtNo}</td>
			<td><a href='asgmtDetail?no=${asgmt.asgmtNo}'>${asgmt.title}</a></td>
			<td>${asgmt.professorNo}</td>
			<td><fmt:formatDate value="${asgmt.regDate}" pattern="yyyy-MM-dd"/></td>
			<td>  </td>
			<td><fmt:formatDate value="${asgmt.deadline}" pattern="yyyy-MM-dd HH:ss:mm"/></td>
			<td>  </td>
			<td>${asgmt.viewCnt}</td> <p>
		</tr>
		</c:forEach>
		<c:if test="${empty asgmtList}">
			<tr>
				<td colspan="8"><p>등록된 과제가 없습니다.</td>
			</tr>
		</c:if>
	</table>
	
	<c:if test="">
<!-- 	professorNo가 있는 경우 -->
<!-- 	<button id="btn" onclick="asgmtFormProfMove();" style="display: none;">과제등록</button>  -->
	
	</c:if>
	<script type="text/javascript">
		
	</script>
<!-- 	<button id="btn" onclick="asgmtFormProfMove();" style="display: none;">과제등록</button> -->
	
<!-- 	<script type="text/javascript"> -->
<!-- // 		function asgmtFormProfMove() { -->
<!-- // 			if(professorNo != undefined) { // 교수인 경우 -->
<!-- // 				// display => block으로 -->
<!-- // 				var bnt = document.querySelector("#btn"); -->
<!-- // 				btn.style.display="block"; -->
<!-- // 				// "asgmtFormProf"로 controller? page? 이동 -->
<!-- // // 				window.open("https://www.w3schools.com", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400"); -->
<!-- // 				btn.innerHTML = `<a href='asgmtRegistForm'></a>`; //controller... -->
<!-- // 			} -->
<!-- // 		} -->
<!-- 	</script> -->
</body>
</html>