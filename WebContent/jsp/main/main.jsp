<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Drop down menu light</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="../../css/jssor.css">
   <script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>
	<script src="../../js/index.js"></script>
	<script type="text/javascript">
	$(function(){
		$("nav li, issue_list ul li").click(function(){
			$(this).addClass('on').siblings().removeClass('on');
		});
		$("button.down").click(function(){
			$('.issue_list').addClass('on')
			$('.issue_title').hide(50);
		});
		$("button.up, .issue_list button.btn_close").click(function(){
			$('.issue_list').removeClass('on');
			$('.issue_title').show(50);
		});
		$('.slide_left').click(function(){
			$('#left_menu').animate({left:"+=300"},200);
			$('.dim').css('display','block');
		});
		$('.menu_close').click(function(){
			$('#left_menu').animate({left:"-=300"},200);
			$('.dim').css('display','none');
		});
	});

	</script>
</head>
<body>
<button type="button" class="slide_left">로그인하세요</button>
<form name="mForm" action="login" method="post">
		아이디 : <input type="text" name="userId" id="userId" />
		비밀번호 : <input type="password" name="pw" id="pw" />
		<button onclick="check()">로그인</button>
	</form>
	<form action="join">
	<button>회원가입</button>
	</form>
	<form action="find">
		<button value="1">아이디찾기</button> <button value="2">비밀번호찾기</button>
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
				return false;
			}
		}	
	</script>
</body>

</html>