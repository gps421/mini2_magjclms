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
			<th>제목</th>
			<th>등록일</th>
			<th>조회수</th>
			<th>작성자</th>
		</tr>
		
		<c:forEach var="cmnt" items="${notice}">
			<tr>
				<td>${notice.no}</td>
				<td><a href="detail?no="${cmnt.no}></a></td>
				<td><fmt:formatDate value="${cmnt.regDate}" pattern="MM-dd"/></td>
				<td>${cmnt.viewCnt}</td>
			</tr>		
		</c:forEach>
	</table>
	
	<a href="communityForm">글쓰기</a>
</body>
</html>