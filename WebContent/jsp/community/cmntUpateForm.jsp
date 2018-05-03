<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../dist/lang/summernote-ko-KR.js"></script>
<style>
	#board {
		border:1px solid black;
		
		width:750px; height:500px;
		
		margin:0 auto;
	}
</style>
</head>
<body>
	<form action="communityrgst" method="post" >
	<div id="board">
		타이틀 : <input type="text" name="title" size="50" value="${board.title }"/>비밀번호 : <input type="password" name="pass"/>
		<textarea class="form-control" name="content" id="content">${board.content}</textarea>
		<script src="../dist/lang/summernote-ko-KR.js"></script>
		<button>작성</button>
		<script type="text/javascript">
			$(document).ready(function() {
			  $('#content').summernote({
				height:350, 
				width:700,
				minHeight: null,             // set minimum height of editor
			    maxHeight: null,             // set maximum height of editor
			    focus: true,                  // set focus to editable area after initializing summe	
			    placeholder: '내용을 적어주세요.'
			  });
			});
		</script>
	</div>
	</form>
</body>
</html>