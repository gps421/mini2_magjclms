<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Drop down menu light</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="../css/jssor.css">
   <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
   <script src="../js/jssor.slider-27.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
</head>
<body>
<script src="../js/index.js"></script>
<button type="button" class="slide_left">로그인하세요</button>
<form name="mForm" action="login" method="post">
		아이디 : <input type="text" name="userId" id="userId" />
		비밀번호 : <input type="password" name="pw" id="pw" />
		<button onclick="check()">로그인</button>
	</form>
	<form action="join">
	<button>회원가입</button>
	</form>
<div class="dim"></div>
<div id="left_menu">
	<ul class="login">
		<li><a href="#" class="menu_close">메뉴닫기</a></li>
	</ul>
</div>
	<script>
		function check() {
			var id = document.mForm.userId.value;
			
			if(id == "") {
				alert("아이디를 입력해주세요");
				return;
			}
		}	
	</script>
</body>

</html>