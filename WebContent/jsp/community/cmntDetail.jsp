<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		backgroud-color: red;
	}
</style>
</head>
<body>
	<h2>자유게시판</h2>
	 <hr />
	 번호 :  ${detail.communityNo}<br>
	 제목 : <c:out value="${detail.title}" /><br>
	 내용 : <c:out value="${detail.content}" /><br>
	 등록일 : <fmt:formatDate value="${detail.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /><br><br>
	 조회수 : ${board.viewCnt}<br>
	 <br>
	 <hr />
	 <a href='updateForm?communityNo=${detail.communityNo}'>수정</a>
	 <a href='delete?communityNo=${detail.communityNo}'>삭제</a>
	 <a href='community'>목록</a>
</body>
</html>