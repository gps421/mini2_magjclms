<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
a{text-decoration:none}
</style>
</head>
<body>
	<form action="istjoin" method="post">
		<input type="hidden" name="memberType" value="s"/><br>
		아이디 : <input type="text" name="memberId" id="memberId" /><span id="result"></span><br>
		이름 : <input type="text" name="userName" /><br>
		학년 : <input type="text" name="grade"  /> <br>
		생일 : <input type="text" name="birthDate"  /><br>
		비밀번호 : <input type="password" name="pass"  /><br>
		비밀번호 힌트 : <input type="text" name="passHint"  /><br>
		이메일 : <input type="text" name="email" ><br>
		핸드폰 : <input type="text" name="phone" /><br>
		주소 : <input type="text" name="addr" > <br>
		우편번호 : <input type="text" name="postCode" id="postCode" /><br>
		기숙사 : <input type="text" name="domitory" id="domitory" /><br>
		<button>가입</button> <button>취소</button>
	</form>
	
	<script>
		$("#memberId").keyup(function () {
			$.ajax({
				method : "POST",
				url : "/mini2_magiclms/jsp/istjoin",
				data : "memberId=" + this.name,
				dataType : "json",
				success : function (data) {
					var result = "이미 사용중인 아이디 입니다.";
					if(data.result == 0) {
						result = "사용 가능한 아이디 입니다";
					}
					$("#result").text(result);
				}
			});
		});
	</script>
</body>
</html>