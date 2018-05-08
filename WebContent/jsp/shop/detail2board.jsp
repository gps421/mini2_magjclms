<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
  <meta charset='utf-8'>
  <title>보드</title>
</head>
<body>
	<h2>목록</h2>
	<hr />
	번호 : ${board.no} <br>
	제목 : ${board.title} <br>
  	글쓴이 : <c:out value="${board.writer}" /><br>
	내용 :${board.content} <br>
	등록일 : <fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/> <br>
	조회수 : ${board.viewCnt} <br>
	<hr />
	<a href='updateForm?no=${board.no}'>수정</a>
	<a href='delete?no=${board.no}'>삭제</a>
	<a href='list'>목록</a>
	<hr />
	 
	<div>
		<form method="post" action="commentRegist">
			<input type="hidden" name="no" value="${board.no}" />	
			<table width="70%">
			<tr>
				<td><input type="text" name="writer"/>
				</td>
				<td><textarea name="content" rows="5" cols="70" size="30"></textarea>
				</td>
				<td><button type="submit">댓글등록</button>
				</td>
			</tr>
			</table> 
		</form>
	</div>

	<table width='80%' border='1'>
		<c:forEach var="comment" items="${commentList}">
			<tr>
				<td><c:out value="${comment.writer}" /></td>
				<td>
					<c:out value="${comment.content}" /></td>
				<td><fmt:formatDate var="regDate" value="${comment.regDate}" 
				                    pattern="yyyy-MM-dd HH:mm:ss" />
				    <c:out value="${regDate}" />
				</td>
				<td>
				 	<a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
				  	<a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
				</td>
			</tr>		
		</c:forEach>
	</table>
	<c:if test="${empty commentList}">
		 <tr>
		    <td colspan='4'>댓글이 존재하지 않습니다.</td>
		 </tr>
	</c:if>
	
		
		<form action="commentUpdate" method="post">
			<input type="hidden" name="no" value="${board.no}" />
			<input type="hidden" name="commentNo" value="${commentNo}" />
		<div id="commentList">
			
		  <table width='80%' border='1'>
		  <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
					  </td>
					  <td colspan="2">
					  	  <input type="submit" value="수정" />	
					  </td>
					 </tr>
			 	</c:when>
			 	<c:otherwise>
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  		<c:out value="${comment.content}" /></td>
					  <td><fmt:formatDate var="regDate" value="${comment.regDate}" 
					                      pattern="yyyy-MM-dd HH:mm:ss" />
					      <c:out value="${regDate}" />
					  </td>
					  <td>
					  	  <a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
					  	  <a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
					  </td>
					 </tr>
			 	</c:otherwise>
			 </c:choose>	
			 </c:forEach>
			 <c:if test="${empty commentList}">
			 <tr>
			    <td colspan='4'>댓글이 존재하지 않습니다.</td>
			 </tr>
		 	</c:if>
		 </table>
		</div>
		</form>
		
</body>
</html>




