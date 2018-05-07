<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- profile card -->	
<div class="card" style="margin: 30px 80px 30px 80px;">
  <img src="${pageContext.request.contextPath}/img/harryprofile.jpg" style="width:290px;">
  <h1 id="profname">${student.name}이름</h1> <!-- student table에서 이름 불러오기 -->
  <p class="year">${student.year}학년</p>
  <p class="dormitory">${student.dormitory}그리핀도르</p>
  <p class="crest">
  	<img src="${pageContext.request.contextPath}/img/gryffcrest.png" alt="crest"
		style="width: 90px; height: 90px;">
  </p>
   <p></p>
</div>

<!-- profile -->
	<div class="profile" style="width: 900px;">
		<div class="container" id="con">
			<div class="row" id="rw">
				<div class="col-md-10 ">
					<form class="form-horizontal">
						<fieldset id="fs">

							<!-- Form Name -->
							<legend id="lg1">My Profile</legend>
							<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/mypage/myProfileForm.jsp'">프로필 수정</button>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label" for="Name (Full name)">Name (Full name)</label>
								<div class="col-md-4">
									<div class="input-group">
										${student.name}Harry Potter
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Date Of Birth">Date Of Birth</label>
								<div class="col-md-4">
									<div class="input-group">
									${student.birthDate} 생일
									</div>
								</div>
							</div>

							<!-- Multiple Radios (inline) -->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Gender">Gender</label>
								<div class="col-md-4">
									성별(radio 저장 정보 가져오기)
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label col-xs-12"
									for="Permanent Address">Permanent Address</label>
								<div class="col-md-2  col-xs-4">
									${student.address} 주소
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Email Address">Phone No</label>
								<div class="col-md-4">
									<div class="input-group">
										${student.phoneNo} 전화번호
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Email Address">Email
									Address</label>
								<div class="col-md-4">
									<div class="input-group">
										${student.email} 이메일
									</div>

								</div>
							</div>

							<div class="form-group"> </div>
							
							<!-- Form Name -->
<!-- 							<legend id="lg2">Grade</legend> -->
<!-- 							<div class="score"> -->
<!-- 							교수 입력 성적(db) -->
<!-- 							<button type="button" class="btn1">성적 확인</button> -->
<!-- 							<button type="button" class="btn2">성적 닫기</button> -->
<!-- 							<p id="score">score for each class(from db_professor?)</p> -->
<!-- 							</div> -->
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
						<script>
						$(document).ready(function(){
						    $(".btn1").click(function(){
						       $("#score").slideUp();
						    })
						    $(".btn2").click(function(){
						       $("#score").slideDown();
						    })
						});
						</script>
	</body>
</html>