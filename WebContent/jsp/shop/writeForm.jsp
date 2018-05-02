<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>
  <title>자유게시판</title>
</head>
<body>
	<h2>자유게시판</h2>
	<hr>
	<form method='post' action='write' enctype="multipart/form-data">
 	글쓴이 : <input type="text" name="writer" size="30"/><br> 
 	제목 : <input type="text" name="title" size="70"/><br>
 	내용 : <textarea name="content" rows="6" cols="70"></textarea><br>
 	
 		 <input type="file" name="attach1" /><br>
		 <input type="file" name="attach2" /><br>
 	<button type="submit">글등록</button>
	</form>
</body>
</html>