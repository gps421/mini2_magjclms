<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form action='contentUpdate' method='post'>
	   <input type='hidden' name='contentNo' value='${content.contentNo}' />
	    자료 제목 : <input type='text' name='title' value='${content.title}' /><br>
	    자료 출처 : <input type='text' name='ref' value='${content.ref}' /><br>
	    자료 첨부파일 : <br>
		<input type='file' multiple /> <br>
		<p>Drag your files here or click in this area.</p>
<!-- 		<button type="submit">Upload</button> -->
	   <button type='submit'>수정</button>
	 </form>
	 <a href='contentList'>목록</a>
</body>
</html>