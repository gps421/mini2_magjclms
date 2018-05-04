<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		      	<p id="contentListAjax">222</p>
			</section>

			<section id="content3" class="tab-content">
				<h3>강의 과제</h3>
		      	<p id="assignmentListAjax">333</p>
			</section>

			<section id="content4" class="tab-content">
				<h3>Q&A</h3>
		      	<p id="qnaListAjax">444</p>
			</section>
		</div>
		
		<script>
		function annDetail(annNo) {
			$.ajax({
				url: "annDetailAjax",
				data: "annNo=" + annNo,
				dataType: "json",
				success: function (result) {
					alert("success");
					console.dir(result)
					
					
					  공지 번호 : ${announcement.annNo}
					<br> 공지 제목 : <c:out value="${announcement.title}" />
				<%-- 	<br> 공지 작성자 : <c:out value="${announcement.professor}" /> --%>
					<br> 공지 내용 : <c:out value="${announcement.content}" />
					<br> 공지 등록일 : <fmt:formatDate value="${announcement.regDate}" pattern="yyyy-MM-dd" />
					<br>
					<hr>
					<a href='annUpdateForm?annNo=${announcement.annNo}'>수정</a>
					<a href='annDelete?annNo=${announcement.annNo}'>삭제</a>
					<a href='annList'>목록</a>
					
				}
			});	
		}
		function makeAnnList(result) {
			var html = "";
			html += '<div class="announcement message">';
			
			for(var i = 0; i<result.length; i++) {
				html += '<div class="message"><a onclick="annDetail(' + result[i].annNo + ')">' + result[i].title + '</a></div>';
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
			$.ajax({
				url: "<c:url value='/mypage/contentListAjax'/>",
				success: makeContentList
			});
		});
		
		function makeContentList(result) {
			var html="";
			
			html += "<h2>content</h2>";
			for(var i = 0; i<result.length; i++) {
				html += result[i].title;
			}
			
			$("#contentListAjax").html(html);
		}
		 
		$("#tab3").click(function assignmentList() {
			$.ajax({
				url: "<c:url value='/mypage/assignmentListAjax'/>",
				success: makeAssignmentList
			});
		});
		
		function makeAssignmentList(result) {
			var html="";
			html+="<h2>assignment</h2>";
			for(var i = 0; i<result.length; i++) {
				html += result[i].title + "<br>";
				html += result[i].studentNo + "<br>";
				html += result[i].courseNo + "<br>";
			}
			$("#assignmentListAjax").html(html);
		}
		
		$("#tab4").click(function qnaList() {
			$.ajax({
				url: "<c:url value='/mypage/qnaListAjax'/>",
				success: makeQnaList
			});
		});
		
		function makeQnaList(result) {
			var html="";
			html+="<h2>qna</h2>";
			for(var i = 0; i<result.length; i++) {
				html += result[i].title + "<br>";
				html += result[i].content + "<br>";
				html += result[i].studentNo + "<br>";
				html += result[i].courseNo + "<br>";
			}
			$("#qnaListAjax").html(html);
		}
		
		</script>
</body>
</html>
