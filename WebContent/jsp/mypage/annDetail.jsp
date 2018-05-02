<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		  공지 번호 : ${announcement.annNo}
	<br> 공지 제목 : <c:out value="${announcement.title}" />
<%-- 	<br> 공지 작성자 : <c:out value="${announcement.professor}" /> --%>
	<br> 공지 내용 : <c:out value="${announcement.content}" />
	<br> 공지 등록일 : <fmt:formatDate value="${announcement.regDate}" pattern="yyyy-MM-dd" />
	<br>
	<hr>
	<a href='annUpdateForm?annNo=${announcement.annNo}'>수정</a>
	<a href='annDelete?annNo=${announcement.annNo}'>삭제</a>
	<a href='annList'>목록</a>
</body>
</html>