<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/contentForm.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="${pageContext.request.contextPath}/js/contentForm.js"></script>
</head>
<body>
	<form method='post' action='contentRegist' enctype='multipart/form-data'>
	자료 제목 : <input type="text" name="title" size="70" /> <br>
	자료 출처 : <input type="text" name="ref" size="100"/> <br>
	자료 첨부파일 : <br>
		<input type='file' multiple /> <br>
		<p>Drag your files here or click in this area.</p>
		<button type="submit">Upload</button>
</form>
</body>
</html>