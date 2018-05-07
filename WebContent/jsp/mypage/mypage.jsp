<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<div id="header"></div>
<!-- profile card -->	
<div id="mycard">
  <img src="${pageContext.request.contextPath}/img/harryprofile.jpg" style="width:290px;">
  <h1>${student.name}Harry Potter</h1>
  <p class="year">${student.year}3rd Year</p>
  <p class="dormitory">${student.dormitory}Gryffindor</p>
  <p class="crest">
  	<img src="${pageContext.request.contextPath}/img/gryffcrest.png" alt="crest"
		style="width: 90px; height: 90px;">
  </p>
   <p></p>
</div>

	<div class="myinfo">
		<div class="myProfile">
			<button id="profile">My Profile</button>
		</div>
		<div class="myCourse">My Course</div>

		<div class="coursebox">
			<!-- ajax로  mycourse 등록 -->
			<div class="courseitem">
				<button>
					<h1 id="title">Course1</h1>
				</button>
			</div>
		</div>
		</div>
	</div>

	<script>
	

	$(".myProfile").click(function() {
		// myprofile.jsp로 이동?
		location.href="/mini2_magiclms/mypage/myProfile"
	});
	
// 	mycourse();
	
// ajax! : course 등록

	$("#title").click(function () {
		// mypage index.jsp로 이동
		location.href="/mini2_magiclms/mypage/myPageIndex"
	});
	</script>
</body>
</html>
