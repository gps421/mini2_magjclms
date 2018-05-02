<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>
  <title>자유게시판</title>
</head>
<body>
	<h2>자유게시판</h2>
	<hr />	 
	<form method='post' action='update'>
 	  <input type="hidden" name="no" value="${board.no}"/>
 	글쓴이 : <input type="text" name="writer" size="30" readonly value="${board.writer}"/><br> 
 	제목 : <input type="text" name="title" size="70" value="${board.title}"/><br>
 	내용 : <textarea name="content" rows="6" cols="70">${board.content}</textarea><br> 
 	<button type="submit">글수정</button>
	</form>
	<a href='list'>목록</a>
</body>
</html>




