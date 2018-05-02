<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypageIndex.css"> 
 <script  src="${pageContext.request.contextPath}/js/myPageIndex.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/annList.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:300italic,400italic,400,100,300,600,700' rel='stylesheet' type='text/css'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
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
				<p id="annListAjax"> </p>
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
		function makeAnnList(result) {
			var html = "";
			html += '<div class="announcement message">';
			
			for(var i = 0; i<result.length; i++) {
				html += '<div class="message"><a href="annDetail?annNo=' + result[i].annNo + '">' + result[i].title + '</a></div>';
			}
				
			if (result.length == 0) {
				html += '<div class="message">댓글이 존재하지 않습니다.<div>';
			}
			
			html += '</div>';
			
			$("#annListAjax").html(html);
		}
		
		function annList() {
			$.ajax({
				url: "<c:url value='/mypage/annListAjax'/>",
// 				data: {no: "${board.no}"},
// 				dataType: "json", 
				success: makeAnnList
			});
		}
		annList();	
		
			
		$("#tab2").click(function contentList() {
// 			alert("content")
			$.ajax({
				url: "<c:url value='/mypage/contentListAjax'/>",
				success: makeContentList
			});
		});
		
		function makeContentList(result) {
			var html="";
			html+="<h2>content</h2>"
			
		}
		
		</script>
		
</body>
</html>
