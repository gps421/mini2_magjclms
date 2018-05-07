<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage index</title>
<style>
#button1, #button2, #button3 {
 	background-color: #008CBA
    border: none;
    font-style: black;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
} 

</style>

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
<!-- 				<h3>강의공지</h3> -->
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
		function makeAnnList(result) {
			rs = result;
			var html = "";
			html += '총' + result.length + '개 공지가 있습니다.'
			
			html += '<button type="button" onclick="annForm()">공지등록</button>';
			
			
			html += '<div class="announcement message">';
			
			for(var i = 0; i<result.length; i++) {
				html += '<div class="message"><button onclick="annDetail(' + result[i].professorNo +   ',' + result[i].annNo +')">' + result[i].title + '</button></div>';
			}
				
			if (result.length == 0) {
				html += '<div class="message">등록된 공지가 없습니다.<div>';
			}
			
			html += '</div>';
			
			$("#annListAjax").html(html);
			
		}
		
		function annList() {
			$.ajax({
				url: "<c:url value='/mypage/annListAjax'/>",
				success: makeAnnList
			});
			
		}
		var rs;
		annList();	
// ------------------------------------------------------------------------------------------------
		function annDetail(professorNo, annNo) {
			$.ajax({
				url: "annDetailAjax",
				data: {"professorNo" : professorNo, "annNo" : annNo},
				dataType: "json",
				success: function (result) {
					makeAnnDetail(result);
				} 
				});
			};	
		
		function makeAnnDetail(result) {
			var html="";
			html += "공지 번호 : " + result.annNo + "<br>";
			html += "공지 제목 : " + result.title + "<br>";
			html += "공지 작성자 : " + result.professorNo + "<br>";
			html += "공지 내용 : " + result.content+ "<br>";
			html += "공지 등록일 : " + result.regDate + "<br>";
			
			html += "<hr>"
			html += "<button id = 'button1' onclick='annUpdateForm(" + result.professorNo +   "," + result.annNo +")'> 수정 </button>";
			html += "<button id = 'button2' onclick='annDelete(" + result.professorNo +   "," + result.annNo +")'> 삭제 </button>";
			html += "<button id = 'button3' onclick='annList()'>목록</button>";
			
			$("#annListAjax").html(html);
			
			
		};

// ------------------------------------------------------------------------------------------------
// 공지 등록 Form

		function annForm() {
			$.ajax({
				url: "annFormAjax",
				success: function(result) {
					makeAnnForm(result);
				}
				})
		};
		
// 		alert('${user.professorNo}');
		
		function makeAnnForm(result) {
			var html='';
			html += '<div id="form-main">';
			html += '<div id="form-div">';
			html += '<form class="form" id="form1" method="post" action="">';
			html += '<input style="display:block;" type="hidden" name="profNo" value="${' + result.profNo + '}';
			html += '<input style="display:block;" type="hidden" name="courseNo" value="${' + result.courseNo + '}';
			html += '<p class="title">';
			html += '<input style="display:block;" id="title" name="title" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Title" />';
			html += '</p>';
			html += '<p class="content">';
			html += '<textarea name="content" class="validate[required,length[6,300]] feedback-input" id="content" placeholder="Content"></textarea>';
			html += '</p>';
			html += '<div class="submit">';
			html += '<input style="display:block;" type="submit" value="등록" id="button-blue"/>';
			html += '<div class="ease"></div>';
			html += '</div>';
			html += '</form>';
			html += '</div>';
			html += '</div>';
			
			$("#annListAjax").html(html);

			// 공지 등록(annRegist)
			
			$("#form1").submit(function(event) {
				event.preventDefault();
				console.log($(this).serialize())	
				$.ajax({
					url: "annRegistAjax",
					type: "post",
					data: $(this).serialize(),
					dataType: "json",
					success: function(result) {
						makeAnnList(result)
					}
				});
			});
			
		}

// ------------------------------------------------------------------------------------------------
		// 공지 수정
		function annUpdateForm(professorNo, annNo) {
			$.ajax({
				url: "annUpdateFormAjax",
				data: {"professorNo" : professorNo, "annNo" : annNo},
				dataType: "json",
				success: makeUpdateAnn
				})
		}
		
		function makeUpdateAnn(result) {
			var html='';
			html += '<form action="" method="post">';
			html += '<input type="hidden" name="annNo" value="${' + result.annNo + '}" />';
			html += '<input type="hidden" name="professorNo" value="${' + result.professorNo + '}" />';
			html += '제목 : <input style="display:block;" type="text" name="title" value="${' + result.title + '}" /><br>';
			html += '내용 : <br>';
			html += '<textarea name="content" rows="5" cols="70">${' + result.content + '}</textarea><br>';
			html += '<button type="submit">수정</button>';
			html += '</form>';
			html += '<button onclick="annList()">목록</button>';
			
			$("#annListAjax").html(html);
		}

// ------------------------------------------------------------------------------------------------
		// 공지 삭제 
			function annDelete(professorNo, annNo) {
				$.ajax({
					url: "annDeleteAjax",
	 				data: {"professorNo" : professorNo, "annNo" : annNo },
					dataType: "json",
					success: function(rs) {
						makeAnnList(rs);
					}
					});
			}
			
// ------------------------------------------------------------------------------------------------
			
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
