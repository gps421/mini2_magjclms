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
	</script>
</head>
<body>
<button type="button" class="slide_left">로그인하세요</button>
<div class="row">
	<div class="col-md-12">
		<c:choose>
		<c:when test="${empty sessionScope.user}">
			<a href="<c:url value="/login/login" />">로그인</a>
		</c:when>
		<c:otherwise>
<%-- 			${sessionScope.user.name}님 접속(<fmt:formatDate value="${user.accessTime}" pattern="yyyy-MM-dd HH:mm:ss" />) --%>
			<a href="<c:url value="/login/logout" />">로그아웃</a>
		</c:otherwise>
		</c:choose>		
	</div>
	${errMsg}	
</div>
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