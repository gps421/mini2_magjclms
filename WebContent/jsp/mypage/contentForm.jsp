<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>강의 자료 등록</title>
</head>

<body>
	<form method="post" action="contentRegist" enctype="multipart/form-data">
	자료 제목 : <input style="display:block;" type="text" name="title" size="70" /> <br> 
	자료 출처 : <input style="display:block;" id="contref" type="text" name="ref" size="100" /> <br> 
	자료 파일 : <br>
	<div class="cont">
<div class="file-upload-container">
    <p>Click on the button below to upload.</p>
    <input type="file" name="file1" class="custom-file-input" />
  </div>
	</div>
	<button type="submit">자료 등록</button>
	</form>
</body>
</html>