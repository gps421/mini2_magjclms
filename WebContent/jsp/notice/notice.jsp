<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html> 
<head>
  <meta charset='utf-8'>
  <title>공지사항</title>
</head>
<body>
	  <h2>공지사항</h2>
	    전체 ${fn:length(list)}개<br>
	  <hr>
	  <table class="table">
	  <tr>
	    <th>번호</th>
	    <th>제목</th>
	    <th>등록일</th>
	  </tr>
		<c:forEach var="board" items="${list}">
	    <tr>
			 <td>${board.no}</td>
			 <td><a href='noticeDetail?no=${board.no}'>${board.title}</a></td>
		  <td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		</tr>
		</c:forEach>
		<c:if test="${empty list}">
		  <tr>
		    <td colspan='5'>입력된 게시물이 없습니다.</td>
		  </tr>
		</c:if>
		</table>
		<a href='noticeForm'>글쓰기</a>
</body>
</html>