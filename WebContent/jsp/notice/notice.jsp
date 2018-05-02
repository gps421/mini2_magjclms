<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		width:70%;
		border:1px solid black;
	}
	
</style>
</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>공지사항</th>
			<th>등록일</th>
			<th>조회수</th>
			<th>작성자</th>
		</tr>
		
		<c:forEach var="notice" items="${notice}">
			<tr>
				<td>${notice.no}</td>
				<td><a href="detail?no="${list.no}></a></td>
				<td><fmt:formatDate value="${notice.regDate}" pattern="MM-dd"/></td>
				<td>${notice.viewCnt}</td>
				<td>${sessionScope.user}</td>
			</tr>		
		</c:forEach>
	</table>
	
	<a href="noticeForm">글쓰기</a>
</body>
</html>