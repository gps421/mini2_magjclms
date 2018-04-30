<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../css/myProfile.css"> -->
</head>
<body>
<!-- profile card -->	
<div class="card">
  <img src="../../img/harryprofile.jpg" style="width:290px;">
  <h1>${student.name}이름</h1> <!-- student table에서 이름 불러오기 -->
  <p class="year">${student.year}학년</p>
  <p class="dormitory">${student.dormitory}그리핀도르</p>
  <p class="crest">
  	<img src="../../img/gryffcrest.png" alt="crest"
		style="width: 90px; height: 90px;">
  </p>
   <p></p>
</div>

<!-- profile -->
	<div class="profile">
		<div class="container">
			<div class="row">
				<div class="col-md-10 ">
					<form class="form-horizontal">
						<fieldset id="">

							<!-- Form Name -->
							<legend>My Profile</legend>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label" for="Name (Full name)">Name (Full name)</label>
								<div class="col-md-4">
									<div class="input-group">
										${student.name}학생 이름
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
							<legend>Grade</legend>
							<div class="score">
							<!-- 교수 입력 성적(db) -->
							<button class="btn1">성적 확인</button>
							<button class="btn2">성적 닫기</button>
							<p id="score">score for each class(from db_professor?)</p>
							</div>
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