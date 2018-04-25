<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>My Page</title>

<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700'>
<link rel="stylesheet" href="../../css/mypageindex.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
<body>

	<h1>My Page</h1>
	<div class="tab-wrap">

		<!-- Announcement tab -->
		<input type="radio" name="tabs" id="tab1" checked>
		<div class="tab-label-content" id="tab1-content">
			<label for="tab1" class="tab-label">Announcement(강의공지)</label>
			<div class="tab-content">강의공지 jsp 연결!</div>
		</div>


		<!-- Contents tab -->
		<input type="radio" name="tabs" id="tab2">
		<div class="tab-label-content" id="tab2-content">
			<label for="tab2" class="tab-label">Contents(자료실)</label>
			<div class="tab-content">자료실 jsp 연결!</div>
		</div>


		<!-- Assignment tab -->
		<input type="radio" name="tabs" id="tab3">
		<div class="tab-label-content" id="tab3-content">
			<label for="tab3" class="tab-label">Assignment (과제)</label>
			<div class="tab-content">과제 jsp 연결(servlet?)</div>
		</div>


		<!-- Q&A tab -->
		<input type="radio" name="tabs" id="tab4">
		<div class="tab-label-content" id="tab4-content">
			<label for="tab4" class="tab-label">Q&A</label>
			<div class="tab-content">qna jsp 연결</div>
		</div>

		<!-- For moving the selected tab indicator -->
		<div class="slide"></div>

	</div>
	<!-- end of "<div class="tab-wrap">" -->

	<script>
$("#tab1-content").click(function () {
	$.ajax({
//			type:"GET",
		url: "../asgmtList.jsp", // controller 경로 
//			dataType: "html",
		success: function (data) { 
			$("#tab1-content").html(data)
		}
	});
});
$("#tab3-content").click(function () {
	alert("tab3")
	tab3();
});

function tab3() {
		
	//click 하지 않더라도 마이페이지 접속한 순간 보이는 첫 화면 
	$.ajax({
	//	type:"GET",
	url: "http://localhost:8000/mini2_magiclms/mypage/assignment/asgmtList", // controller 경로 
		dataType: "json",
	success: function (data) { 
		var html = "";
		html += "<h2>과제 목록</h2>"
		html += "전체 "+data.length+"개"
		html += "<br>"
		html += "<hr>"
		html += "<table class='table'>"
		html += "	<tr>"
		html += "		<th>과제번호</th>"
		html += "			<th>과제이름</th>"
		html += "		<th>과제작성자(교수)</th>"
		html += "		<th>과제등록일</th>"
		html += "		<th>  </th>"
		html += "		<th>과제마감기한</th>"
		html += "			<th>  </th>"
		html += "		<th>과제조회수</th>"
		html += "	</tr>";
		for(var i=0; i<data.length; i++) {
			var asgmt = data[i];
			html+= "	<tr>";
			html+= "		<td>"+asgmt.asgmtNo+"</td>";
			html+= "		<td><a href='asgmtDetail?no=${asgmt.no}'>" +asgmt.title+"</a></td>";
			html+= "		<td> asgmt. 교수번호 </td>";
			html+= "		<td>"+asgmt.regDate+"</td>";
			html+= "		<td>  </td>";
			html+= "		<td>"+asgmt.deadline+"</td>";
			html+= "		<td>  </td>";
			html+= "		<td>"+asgmt.viewCnt+"</td>";
			html+= "	</tr>";
			
		}
		if(data.length==0) {
			html+= "	<tr>";
			html+= "		<td colspan='8'>등록된 과제가 없습니다.</td>";
			html+= "	</tr>";
		}
		html+= "</table>";
	// 	<button id="btn" onclick="asgmtFormMove();" style="display: none;">과제등록</button>
		$("#tab3-content > .tab-content").html(html);
	}
	});
};
</script>
</body>
</body>
</html>
