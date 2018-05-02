<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<%--   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypageIndex.css"> --%>
<%--  <script  src="${pageContext.request.contextPath}/js/mypageIndex.js"></script> --%>
  <title>mypage index</title>
</head>
<body>

  <h1>My Course</h1>
		<div class="tab_container">
			<input id="tab1" type="radio" name="tabs" checked>
			<label for="tab1"><i class="fa fa-code"></i><span>Announcement 공지</span></label>

			<input id="tab2" type="radio" name="tabs">
			<label for="tab2"><i class="fa fa-pencil-square-o"></i><span>Contents 강의 자료실</span></label>

			<input id="tab3" type="radio" name="tabs">
			<label for="tab3"><i class="fa fa-bar-chart-o"></i><span>Assignment 과제</span></label>

			<input id="tab4" type="radio" name="tabs">
			<label for="tab4"><i class="fa fa-folder-open-o"></i><span>QnA</span></label>

			<section id="content1" class="tab-content">
				<h3>강의공지</h3>
				<p>111</p>
			</section>

			<section id="content2" class="tab-content">
				<h3>강의 자료</h3>
		      	<p>222</p>
			</section>

			<section id="content3" class="tab-content">
				<h3>강의 과제</h3>
		      	<p>333</p>
			</section>

			<section id="content4" class="tab-content">
				<h3>Q&A</h3>
		      	<p>444</p>
			</section>
		</div>
		
		<script>
		$("#tab1").load(function () {
			location.href="annList"
		});
		</script>
</body>
</html>
