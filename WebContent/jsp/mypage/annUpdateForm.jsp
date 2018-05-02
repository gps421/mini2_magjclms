<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form action='annUpdate' method='post'>
	   <input type='hidden' name='annNo' value='${announcement.annNo}' />
	    제목 : <input type='text' name='title' value='${announcement.title}' /><br>
	    글쓴이 : <input type='text' name='writer' readonly value='${announcement.professorNo}' /><br>
	    내용 : <br>
	   <textarea name='content' rows='5' cols='70'>${announcement.content}</textarea><br>
	   <button type='submit'>수정</button>
	 </form>
	 <a href='annList'>목록</a>
</body>
</html>